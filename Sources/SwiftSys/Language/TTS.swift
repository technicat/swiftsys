//  Created by Philip Chu on 4/24/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import AVFoundation

@available(macOS 11, *)
public class TTS {

    private static var synth: AVSpeechSynthesizer?

    public class var isSpeaking: Bool {
        synth?.isSpeaking ?? false
    }

    public static func reset() {
        stop()
        synth = nil
    }

    public static func say(_ words: String,

        delegate: AVSpeechSynthesizerDelegate? = nil,
        language: Chinese = Chinese.cantonese,
        rate: Float = 0.3,
        volume: Float = 1.0) throws
    {
        if synth == nil {
            synth = AVSpeechSynthesizer()
        }
        let utterance = AVSpeechUtterance(string: words)
        // should we precreate voices?
        guard let voice = AVSpeechSynthesisVoice(language: language.spoken) else {
            throw LanguageError.noVoice(language)
        }
        utterance.voice = voice
        utterance.rate = rate
        utterance.volume = volume
        utterance.prefersAssistiveTechnologySettings = false
        synth!.delegate = delegate
        synth!.speak(utterance)
    }

    public static func stop() {
        guard let synth = synth else {
            return
        }
        if (synth.isSpeaking) {
            synth.stopSpeaking(at: AVSpeechBoundary.word)
        }
    }
}

