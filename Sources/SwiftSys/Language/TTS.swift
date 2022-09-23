//  Created by Philip Chu on 4/24/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import AVFoundation

@available(macOS 10.14, *)
public enum TTS: Error {
    case NoVoice(_ lang: Chinese)

    private static var synth: AVSpeechSynthesizer?

    public static var isSpeaking: Bool {
        synth?.isSpeaking ?? false
    }

    public static func say(_ words: String,

        delegate: AVSpeechSynthesizerDelegate? = nil,
        language: Chinese,
        rate: Float) throws
    {
        if synth == nil {
            synth = AVSpeechSynthesizer()
        }
        synth!.delegate = delegate
        let utterance = AVSpeechUtterance(string: words)
        // precreate voices?
        let lang = language.spoken
        guard let voice = AVSpeechSynthesisVoice(language: lang) else {
            throw NoVoice(language)
        }
        utterance.voice = voice
        utterance.rate = rate
        synth?.speak(utterance)
    }

    public static func stop() {
        synth?.stopSpeaking(at: AVSpeechBoundary.word)
    }
}

