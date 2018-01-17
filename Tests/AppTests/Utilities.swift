import Foundation
@testable import App
@testable import Vapor
import XCTest

extension Application {
    static func testable() throws -> Application {
        var config = Config.default()
        var env = Environment.detect()
        var services = Services.default()

        try App.configure(&config, &env, &services)

        let app = try Application(
            config: config,
            environment: env,
            services: services
        )

        return app
    }
}
