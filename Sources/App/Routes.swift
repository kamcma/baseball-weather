//import Routing
import Vapor
import MLB

final class Routes: RouteCollection {
    let app: Application

    init(app: Application) {
        self.app = app
    }

    func boot(router: Router) throws {
        router.get(Team.parameter) { req -> Response in
            let coordinates = try req.parameter(Team.self).parkCoordinates
            return req.redirect(to: "https://darksky.net/forecast/\(coordinates.latitude),\(coordinates.longitude)/")
        }

        router.get { req -> Future<View> in
            return try req.view().render("index.html")
        }
    }
}
