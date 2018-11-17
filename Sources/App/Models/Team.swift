import MLB
import Vapor

extension Team {
    public var slugs: [String] {
        switch self {
        case .laAngels:
            return ["laa"]
        case .arizona:
            return ["ari"]
        case .baltimore:
            return ["bal"]
        case .boston:
            return ["bos"]
        case .chiCubs:
            return ["chc", "chn"]
        case .cincinnati:
            return ["cin"]
        case .cleveland:
            return ["cle"]
        case .colorado:
            return ["col"]
        case .detroit:
            return ["det"]
        case .houston:
            return ["hou"]
        case .kansasCity:
            return ["kc"]
        case .laDodgers:
            return ["lad", "lan"]
        case .washington:
            return ["was"]
        case .nyMets:
            return ["nym", "nyn"]
        case .oakland:
            return ["oak"]
        case .pittsburgh:
            return ["pit"]
        case .sanDiego:
            return ["sd", "sdn"]
        case .seattle:
            return ["sea"]
        case .sanFrancisco:
            return ["sf"]
        case .stLouis:
            return ["stl"]
        case .tampaBay:
            return ["tb"]
        case .texas:
            return ["tex"]
        case .toronto:
            return ["tor"]
        case .minnesota:
            return ["min"]
        case .philadelphia:
            return ["phi"]
        case .atlanta:
            return ["atl"]
        case .chiWhiteSox:
            return ["cws", "cha"]
        case .miami:
            return ["mia"]
        case .nyYankees:
            return ["nyy", "nya"]
        case .milwaukee:
            return ["mil"]
        }
    }
}

extension Team: Parameter {
    public static func resolveParameter(_ parameter: String, on container: Container) throws -> Team {
        guard let team = Team.allCases.first(where: { team in
            team.slugs.contains(parameter.lowercased())
        }) else {
            throw Abort(.notFound)
        }
        return team
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
