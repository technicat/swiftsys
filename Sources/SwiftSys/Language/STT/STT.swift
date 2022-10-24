//  Created by Philip Chu on 4/24/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Speech

@available(macOS 10.15, *)
public class STT {
    static public func tapNode(_ node: AVAudioInputNode,
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
    static public func untapNode(_ node: AVAudioInputNode) {
        node.removeTap(onBus: 0)
    }
}
