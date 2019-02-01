import XCTest

extension RequestTests {
    static let __allTests = [
        ("testGet", testGet),
        ("testGetBad", testGetBad),
        ("testGetCle", testGetCle),
        ("testGetSD", testGetSD),
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
