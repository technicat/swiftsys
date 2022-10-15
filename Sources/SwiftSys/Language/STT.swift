//  Created by Philip Chu on 4/24/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

public enum STT {
    case notlistening
    case listening
    case fail
    case success
    case error
}

enum STTError: Error {
    case startEngine
    case noRecognizer
    case noSampleRate
    case unavailableRecognizer
}

