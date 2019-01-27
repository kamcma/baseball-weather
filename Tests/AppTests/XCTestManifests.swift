import XCTest

extension RequestTests {
    static let __allTests = [
        ("testGet", testGet),
        ("testGetBad", testGetBad),
        ("testGetCle", testGetCle),
        ("testGetWas", testGetWas),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RequestTests.__allTests),
    ]
}
#endif
