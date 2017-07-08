#if os(Linux)

import XCTest
@testable import AppTests

XCTMain([
    testCase(RequestTests.allTests)
])

#endif
