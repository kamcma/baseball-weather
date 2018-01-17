import MLB
import Vapor

extension Team: Parameter {
    public static func make(for parameter: String, using _: Container) throws -> Team {
        switch parameter.lowercased() {
        case "ana", "laa":
            return .laAngels
        case "ari":
            return .arizona
        case "bal":
            return .baltimore
        case "bos":
            return .boston
        case "chn", "chc":
            return .chiCubs
        case "cin":
            return .cincinnati
        case "cle":
            return .cleveland
        case "col":
            return .colorado
        case "det":
            return .detroit
        case "hou":
            return .houston
        case "kca", "kc":
            return .kansasCity
        case "lan", "lad":
            return .laDodgers
        case "was":
            return .washington
        case "nym":
            return .nyMets
        case "oak":
            return .oakland
        case "pit":
            return .pittsburgh
        case "sdn", "sd":
            return .sanDiego
        case "sea":
            return .seattle
        case "sfn", "sf":
            return .sanFrancisco
        case "sln", "stl":
            return .stLouis
        case "tba", "tb":
            return .tampaBay
        case "tex":
            return .texas
        case "tor":
            return .toronto
        case "min":
            return .minnesota
        case "phi":
            return .philadelphia
        case "atl":
            return .atlanta
        case "cha", "cws":
            return .chiWhiteSox
        case "mia":
            return .miami
        case "nya", "nyy":
            return .nyYankees
        case "mil":
            return .milwaukee
        default:
            throw Abort(.notFound)
        }
    }
}

extension Team {
    public var parkCoordinates: (latitude: Double, longitude: Double) {
        switch self {
        case .laAngels:
            return (33.800353, -117.882265)
        case .arizona:
            return (33.445525, -112.066258)
        case .baltimore:
            return (39.284184, -76.620986)
        case .boston:
            return (42.346700, -71.096703)
        case .chiCubs:
            return (41.948414, -87.654882)
        case .cincinnati:
            return (39.097840, -84.507346)
        case .cleveland:
            return (41.496235, -81.684773)
        case .colorado:
            return (39.755924, -104.993878)
        case .detroit:
            return (42.339078, -83.048069)
        case .houston:
            return (29.757222, -95.355143)
        case .kansasCity:
            return (39.051589, -94.479810)
        case .laDodgers:
            return (34.073895, -118.239347)
        case .washington:
            return (38.873094, -77.006939)
        case .nyMets:
            return (40.757088, -73.845435)
        case .oakland:
            return (37.751645, -122.200052)
        case .pittsburgh:
            return (40.446789, -80.005376)
        case .sanDiego:
            return (32.707210, -117.156754)
        case .seattle:
            return (47.591384, -122.331866)
        case .sanFrancisco:
            return (37.778604, -122.389012)
        case .stLouis:
            return (38.622636, -90.192510)
        case .tampaBay:
            return (27.768120, -82.652834)
        case .texas:
            return (32.751208, -97.082075)
        case .toronto:
            return (43.641314, -79.388806)
        case .minnesota:
            return (44.981736, -93.277422)
        case .philadelphia:
            return (39.905975, -75.166077)
        case .atlanta:
            return (33.890695, -84.467176)
        case .chiWhiteSox:
            return (41.829957, -87.633181)
        case .miami:
            return (25.778186, -80.220304)
        case .nyYankees:
            return (40.829699, -73.925617)
        case .milwaukee:
            return (43.028125, -87.970568)
        }
    }
}
