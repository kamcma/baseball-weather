import XCTest
import Vapor
@testable import App

class RequestTests: XCTestCase {
    var app: Application!

    override func setUp() {
        app = try! Application.testable()
    }

    override func tearDown() { }

    func testGetCle() throws {
        let response = try app.sendRequest(to: "/cle", method: .GET)
        XCTAssertEqual(response.http.status, .seeOther)
    }

    func testGetWas() throws {
        let response = try app.sendRequest(to: "/was", method: .GET)
        XCTAssertEqual(response.http.status, .seeOther)
    }

    func testGetBad() throws {
        let response = try app.sendRequest(to: "/not", method: .GET)
        XCTAssertEqual(response.http.status, .notFound)
    }

    func testGet() throws {
        let response = try app.sendRequest(to: "/", method: .GET)
        XCTAssertEqual(response.http.status, .ok)
        XCTAssertEqual(response.http.headers[.contentType], ["text/html; charset=utf-8"])
    }
}

extension RequestTests {
    static let allTests = [
        ("testGetCle", testGetCle),
        ("testGetWas", testGetWas),
        ("testGetBad", testGetBad),
        ("testGet", testGet)
    ]
}
