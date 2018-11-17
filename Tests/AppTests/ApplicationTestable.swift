import Vapor
import App

extension Application {
    static func testable(envArgs: [String]? = nil) throws -> Application {
        var config = Config.default()
        var services = Services.default()
        var env = Environment.testing

        if let envArgs = envArgs {
            env.arguments = envArgs
        }

        try App.configure(&config, &env, &services)
        let app = try Application(
            config: config,
            environment: env,
            services: services
        )

        try App.boot(app)
        return app
    }
    
    func sendRequest(
        to path: String,
        method: HTTPMethod,
        headers: HTTPHeaders = .init(),
        body: HTTPBody = .init()
    ) throws -> Response {
        let responder = try self.make(Responder.self)
        let request = HTTPRequest(
            method: method,
            url: URL(string: path)!,
            headers: headers, body: body
        )
        let wrappedRequest = Request(http: request, using: self)
        return try responder.respond(to: wrappedRequest).wait()
    }
}
