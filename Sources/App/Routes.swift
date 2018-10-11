import Vapor
import HtmlVaporSupport
import MLB

public func routes(_ router: Router) throws {
    router.get(Team.parameter) { req -> Response in
        let coordinates = try req.parameters.next(Team.self).parkCoordinates
        return req.redirect(to: "https://darksky.net/forecast/\(coordinates.latitude),\(coordinates.longitude)/")
    }

    router.get { _ -> Node in
        let slugs = Team.allCases.compactMap({ $0.slugs.first }).sorted()

        return html([
            head([
                title("Baseball Weather")
            ]),
            body([
                ul(
                    slugs.map { slug in
                        li([
                            a([href("/\(slug)")], [.text("/\(slug)")])
                        ])
                    }
                )
            ])
        ])
    }
}
