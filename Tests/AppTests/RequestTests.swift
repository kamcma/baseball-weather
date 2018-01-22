import XCTest
import Vapor
@testable import App

class RequestTests: XCTestCase {
    func testNothing() throws {
        XCTAssert(true)
    }

    /*
    func testGetCle() throws {
        try app.testResponse(to: .get, at: "/cle")
            .assertStatus(is: .seeOther)
    }

    func testGetWas() throws {
        try app.testResponse(to: .get, at: "/was")
            .assertStatus(is: .seeOther)
    }

    func testGetBad() throws {
        try app.testResponse(to: .get, at: "/not")
            .assertStatus(is: .notFound)
    }

    func testGet() throws {
        try app.testResponse(to: .get, at: "/")
            .assertStatus(is: .ok)
            .assertHeader(.contentType, contains: "text/html")
    }
    */
}

extension RequestTests {
    static let allTests = [
        ("testNothing", testNothing),
        //("testGetCle", testGetCle),
        //("testGetWas", testGetWas),
        //("testGetBad", testGetBad),
        //("testGet", testGet)
    ]
}
