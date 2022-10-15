//  Created by Philip Chu on 4/24/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Speech

public enum STT {
    case notlistening
    case listening
    case fail
    case success
    case error
}

public enum STTError: Error {
    case startEngine
    case noRecognizer
    case noSampleRate
    case unavailableRecognizer
}

