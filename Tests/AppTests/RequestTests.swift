import XCTest
import Vapor
@testable import App

class RequestTests: XCTestCase {
    var app: Application!
    var responder: Responder!

    override func setUp() {
        super.setUp()
        self.app = try? Application()
        try? App.boot(self.app)
        self.responder = try? self.app.make(Responder.self)
    }

    override func tearDown() {
        app = nil
        responder = nil
        super.tearDown()
    }

    func testGetCle() throws {
        let request = Request(using: self.app)
        request.http.method = .get
        request.http.uri.path = "/cle"
        let response = try? responder.respond(to: request).blockingAwait()
        XCTAssertEqual(response?.http.status, .seeOther)
    }

    func testGetWas() throws {
        let request = Request(using: self.app)
        request.http.method = .get
        request.http.uri.path = "/was"
        let response = try? responder.respond(to: request).blockingAwait()
        XCTAssertEqual(response?.http.status, .seeOther)
    }

    func testGetBad() throws {
        let request = Request(using: self.app)
        request.http.method = .get
        request.http.uri.path = "/not"
        let response = try? responder.respond(to: request).blockingAwait()
        XCTAssertEqual(response?.http.status, .notFound)
    }

    func testGet() throws {
        let request = Request(using: self.app)
        request.http.method = .get
        request.http.uri.path = "/"
        let response = try? responder.respond(to: request).blockingAwait()
        XCTAssertEqual(response?.http.status, .ok)
        XCTAssertEqual(response?.http.headers[.contentType], "text/html; charset=utf-8")
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
