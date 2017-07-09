import Vapor
import HTTP

extension Droplet {
    func setupRoutes(drop: Droplet) throws {
        get(String.parameter, handler: Controller().index)

        get("/") { _ in
            return try drop.view.make("index.html")
        }
    }
}
