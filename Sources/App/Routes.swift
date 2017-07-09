import Vapor
import HTTP

extension Droplet {
    func setupRoutes() throws {
        get(String.parameter, handler: Controller().index)

        get("/") { _ in
            return Response(status: .ok, body: "Test worked")
        }
    }
}
