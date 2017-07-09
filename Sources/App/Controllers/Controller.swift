final class Controller {
    func index(req: Request) throws -> ResponseRepresentable {
        let team = try req.parameters.next(String.self)
        let coordinates: (latitude: Double, longitude: Double)

        switch team.lowercased() {
        case "ana", "laa":
            coordinates = (33.800353, -117.882265)
        case "ari":
            coordinates = (33.445525, -112.066258)
        case "bal":
            coordinates = (39.284184, -76.620986)
        case "bos":
            coordinates = (42.346700, -71.096703)
        case "chn", "chc":
            coordinates = (41.948414, -87.654882)
        case "cin":
            coordinates = (39.097840, -84.507346)
        case "cle":
            coordinates = (41.496235, -81.684773)
        case "col":
            coordinates = (39.755924, -104.993878)
        case "det":
            coordinates = (42.339078, -83.048069)
        case "hou":
            coordinates = (29.757222, -95.355143)
        case "kca", "kc":
            coordinates = (39.051589, -94.479810)
        case "lan", "lad":
            coordinates = (34.073895, -118.239347)
        case "was":
            coordinates = (38.873094, -77.006939)
        case "nym":
            coordinates = (40.757088, -73.845435)
        case "oak":
            coordinates = (37.751645, -122.200052)
        case "pit":
            coordinates = (40.446789, -80.005376)
        case "sdn", "sd":
            coordinates = (32.707210, -117.156754)
        case "sea":
            coordinates = (47.591384, -122.331866)
        case "sfn", "sf":
            coordinates = (37.778604, -122.389012)
        case "sln", "stl":
            coordinates = (38.622636, -90.192510)
        case "tba", "tb":
            coordinates = (27.768120, -82.652834)
        case "tex":
            coordinates = (32.751208, -97.082075)
        case "tor":
            coordinates = (43.641314, -79.388806)
        case "min":
            coordinates = (44.981736, -93.277422)
        case "phi":
            coordinates = (39.905975, -75.166077)
        case "atl":
            coordinates = (33.890695, -84.467176)
        case "cha", "cws":
            coordinates = (41.829957, -87.633181)
        case "mia":
            coordinates = (25.778186, -80.220304)
        case "nya", "nyy":
            coordinates = (40.829699, -73.925617)
        case "mil":
            coordinates = (43.028125, -87.970568)
        default:
            throw Abort(.notFound)
        }
        return Response(redirect: "https://darksky.net/forecast/\(coordinates.latitude),\(coordinates.longitude)/")
    }
}
