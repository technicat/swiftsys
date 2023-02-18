//  Created by Philip Chu on 4/24/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Speech

@available(macOS 10.15, *)
public class STT: NSObject, ObservableObject, SFSpeechRecognizerDelegate {

    private func tapNode(_ node: AVAudioInputNode,
                         _ request: SFSpeechAudioBufferRecognitionRequest) throws {
        let recordingFormat = node.outputFormat(forBus: 0)
        // also check channel count? per input node doc
        guard recordingFormat.sampleRate > 0 else {
            throw STTError.noSampleRate
        }
        node.installTap(onBus: 0,
            bufferSize: 1024,
            format: recordingFormat) { buffer, _ in
            request.append(buffer)
        }
    }

    private func untapNode(_ node: AVAudioInputNode) {
        node.removeTap(onBus: 0)
    }

    private func cancelRecording() {
        guard let task = task else {
            // nothing to do here
            return
        }
        task.finish() // better than cancel?
        request?.endAudio()
        request = nil
        engine.stop()
        untapNode(engine.inputNode)
  //      sttEngine.reset()
  //      sttTask = nil
    }

    private func listen(_ lang: Chinese) {
        guard authorized else {
            // self.error = "not authorized"
            return
        }
        do {
            if request == nil {
                request = SFSpeechAudioBufferRecognitionRequest()
            }
            try tapNode(engine.inputNode, request!)
            try engine.start()
            state = .listening
            text = ""
            try task = recordAndRecognizeSpeech(lang)
        } catch STTError.noRecognizer {
            state = .error
            errorlog("Unable to create speech recognizer")
        } catch STTError.noSampleRate {
            state = .error
            errorlog("Error with recording sample rate")
        } catch STTError.startEngine {
            state = .error
            errorlog("Unable to start audio engine")
        } catch STTError.unavailableRecognizer {
            state = .error
            errorlog("Speech recognition is unavailable")
        } catch {
            state = .error
            errorlog("Speech recognition error: \(error)")
        }
    }

    // pass in recognizer and request
    private func recordAndRecognizeSpeech(_ lang: Chinese) throws -> SFSpeechRecognitionTask {
        guard let recog = SFSpeechRecognizer(locale: Locale(identifier: lang.spoken)) else {
            throw STTError.noRecognizer
        }
        guard recog.isAvailable else {
            throw STTError.unavailableRecognizer
        }
        recog.delegate = self
        return recog.recognitionTask(
            with: request!,
            resultHandler: { result, error in
                if error != nil {
                    // set sttState? cancel?
                  //  Sys.log.error("Speech to text error: \(error!)")
                }
                guard let result = result else {
                    // set sttState? cancel?
                   // Sys.log.info("Speech to text: no result")
                    return
                }
                // pass this in?
                guard let match = self.matchWord?.chineseText(lang) else {
                    // match word is missing
                    // should never can happen, but we should cancel
                    self.state = .fail
                    self.cancelRecording()
                 //   Sys.log.error("STT match word is missing")
                    return
                }
                self.text = result.bestTranscription.formattedString
                if self.text == match {
                    self.state = .success
                    self.cancelRecording()
                    return
                }
                if self.text.count >= match.count {
                    self.state = .fail
                    self.cancelRecording()
                    return
                }
            }
        )
    }

    // stt delegate

    @Published public var authorized = false
    @Published public var text = ""
    @Published public var errorText = ""
    @Published public var state = STTState.notListening

    internal var matchWord: Word?
    internal let engine = AVAudioEngine()
    internal var request: SFSpeechAudioBufferRecognitionRequest?
    internal var task: SFSpeechRecognitionTask?

    public func start(word: Word, lang: Chinese) {
        matchWord = word
        SFSpeechRecognizer.requestAuthorization { authStatus in
            OperationQueue.main.addOperation {
                switch authStatus {
                case .authorized:
                    self.authorized = true
                    self.listen(lang)
                case .denied:
                    self.authorized = false
                    self.errorlog("User denied access to speech recognition")
                case .restricted:
                    self.authorized = false
                    self.errorlog("Speech recognition restricted on this device")
                case .notDetermined:
                    self.authorized = false
                    self.errorlog("Speech recognition not yet authorized")
                @unknown default:
                    self.authorized = false
                    self.errorlog("Unknown error")
                }
            }
        }
    }

    private func errorlog(_ error: String) {
        errorText = error
      //  Sys.log.error("Speech to text error: \(error)")
    }

    public func stop() {
        cancelRecording()
        state = .notListening
    }

}
