//import Routing
import Vapor
import MLB

public func routes(_ router: Router) throws {
    router.get(Team.parameter) { req -> Response in
        let coordinates = try req.parameters.next(Team.self).parkCoordinates
        return req.redirect(to: "https://darksky.net/forecast/\(coordinates.latitude),\(coordinates.longitude)/")
    }

    router.get { req -> Response in
        return req.redirect(to: "index.html")
    }
}
