//  Created by Philip Chu on 4/24/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import AVFoundation

@available(macOS 10.14, *)
public class TTS {

    private static var synth: AVSpeechSynthesizer?

    public class var isSpeaking: Bool {
        synth?.isSpeaking ?? false
    }
    
    public static func reset() {
        synth = nil
    }

    public static func say(_ words: String,

        delegate: AVSpeechSynthesizerDelegate? = nil,
        language: Chinese,
        rate: Float) throws
    {
        if synth == nil {
            synth = AVSpeechSynthesizer()
        }
        synth?.delegate = delegate
        let utterance = AVSpeechUtterance(string: words)
        // precreate voices?
        let lang = language.spoken
        guard let voice = AVSpeechSynthesisVoice(language: lang) else {
            throw LanguageError.noVoice(language)
        }
        utterance.voice = voice
        utterance.rate = rate
        synth?.speak(utterance)
    }

    public static func stop() {
        synth?.stopSpeaking(at: AVSpeechBoundary.word)
    }
}

