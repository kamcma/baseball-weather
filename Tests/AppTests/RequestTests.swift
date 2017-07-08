import XCTest
import Foundation
import Testing
import HTTP
@testable import Vapor
@testable import App

class RequestTests: TestCase {
    let drop = try! Droplet.testable()

    func testGetCle() throws {
        try drop.testResponse(to: .get, at: "/cle")
            .assertStatus(is: .seeOther)
    }

    func testGetBad() throws {
        try drop.testResponse(to: .get, at: "/not")
            .assertStatus(is: .notFound)
    }

    func testGet() throws {
        try drop.testResponse(to: .get, at: "/")
            .assertStatus(is: .ok)
    }
}

extension RequestTests {
    static let allTests = [
        ("testGetCle", testGetCle),
        ("testGetBad", testGetBad),
        ("testGet", testGet)
    ]
}
