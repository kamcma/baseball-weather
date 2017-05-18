import Vapor
import HTTP
import Routing

let drop = try Droplet()

drop.get(String.parameter) { req in
    let team = try req.parameters.next(String.self)
    let darkSkyRoot = "https://darksky.net/forecast/"
    let lat: Double
    let lon: Double

    switch team.lowercased() {
    case "ana", "laa":
        lat = 33.800353; lon = -117.882265
    case "ari":
        lat = 33.445525; lon = -112.066258
    case "bal":
        lat = 39.284184; lon = -76.620986
    case "bos":
        lat = 42.346700; lon = -71.096703
    case "chn", "chc":
        lat = 41.948414; lon = -87.654882
    case "cin":
        lat = 39.097840; lon = -84.507346
    case "cle":
        lat = 41.496235; lon = -81.684773
    case "col":
        lat = 39.755924; lon = -104.993878
    case "det":
        lat = 42.339078; lon = -83.048069
    case "hou":
        lat = 29.757222; lon = -95.355143
    case "kca", "kc":
        lat = 39.051589; lon = -94.479810
    case "lan", "lad":
        lat = 34.073895; lon = -118.239347
    case "was":
        lat = 38.873094; lon = -77.006939
    case "nym":
        lat = 40.757088; lon = -73.845435
    case "oak":
        lat = 37.751645; lon = -122.200052
    case "pit":
        lat = 40.446789; lon = -80.005376
    case "sdn", "sd":
        lat = 32.707210; lon = -117.156754
    case "sea":
        lat = 47.591384; lon = -122.331866
    case "sfn", "sf":
        lat = 37.778604; lon = -122.389012
    case "sln", "stl":
        lat = 38.622636; lon = -90.192510
    case "tba", "tb":
        lat = 27.768120; lon = -82.652834
    case "tex":
        lat = 32.751208; lon = -97.082075
    case "tor":
        lat = 43.641314; lon = -79.388806
    case "min":
        lat = 44.981736; lon = -93.277422
    case "phi":
        lat = 39.905975; lon = -75.166077
    case "atl":
        lat = 33.890695; lon = -84.467176
    case "cha", "cws":
        lat = 41.829957; lon = -87.633181
    case "mia":
        lat = 25.778186; lon = -80.220304
    case "nya", "nyy":
        lat = 40.829699; lon = -73.925617
    case "mil":
        lat = 43.028125; lon = -87.970568
    default:
        throw Abort(.notFound)
    }
    return Response(redirect: "\(darkSkyRoot)/\(lat),\(lon)/")
}

try drop.run()
