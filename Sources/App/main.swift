import Vapor
import EnforceHerokuPiggybackSSL

let drop = Droplet()

drop.addConfigurable(middleware: EnforceHerokuPiggybackSSL(), name: "enforceHerokuPiggybackSSL")

drop.get(String.self) { _, team in
    switch team.lowercased() {
    case "ana", "laa":
        return try drop.view.make("widget", ["lat": "33.800353", "lon": "-117.882265", "park": "Angel Stadium", "color": "BA0021"])
    case "ari":
        return try drop.view.make("widget", ["lat": "33.445525", "lon": "-112.066258", "park": "Chase Field", "color": "A71930"])
    case "bal":
        return try drop.view.make("widget", ["lat": "39.284184", "lon": "-76.620986", "park": "Oriole Park", "color": "DF4601"])
    case "bos":
        return try drop.view.make("widget", ["lat": "42.346700", "lon": "-71.096703", "park": "Fenway Park", "color": "BD3039"])
    case "chn", "chc":
        return try drop.view.make("widget", ["lat": "41.948414", "lon": "-87.654882", "park": "Wrigley Field", "color": "0E3386"])
    case "cin":
        return try drop.view.make("widget", ["lat": "39.097840", "lon": "-84.507346", "park": "Great American Ball Park", "color": "C6011F"])
    case "cle":
        return try drop.view.make("widget", ["lat": "41.496235", "lon": "-81.684773", "park": "Progressive Field", "color": "E31937"])
    case "col":
        return try drop.view.make("widget", ["lat": "39.755924", "lon": "-104.993878", "park": "Coors Field", "color": "333366"])
    case "det":
        return try drop.view.make("widget", ["lat": "42.339078", "lon": "-83.048069", "park": "Comerica Park", "color": "0C2C56"])
    case "hou":
        return try drop.view.make("widget", ["lat": "29.757222", "lon": "-95.355143", "park": "Minute Maid Park", "color": "EB6E1F"])
    case "kca", "kc":
        return try drop.view.make("widget", ["lat": "39.051589", "lon": "-94.479810", "park": "Kauffman Stadium", "color": "004687"])
    case "lan", "lad":
        return try drop.view.make("widget", ["lat": "34.073895", "lon": "-118.239347", "park": "Dodger Stadium", "color": "005A9C"])
    case "was":
        return try drop.view.make("widget", ["lat": "38.873094", "lon": "-77.006939", "park": "Nationals Park", "color": "AB0003"])
    case "nym":
        return try drop.view.make("widget", ["lat": "40.757088", "lon": "-73.845435", "park": "Citi Field", "color": "FF5910"])
    case "oak":
        return try drop.view.make("widget", ["lat": "37.751645", "lon": "-122.200052", "park": "Oakland Coliseum", "color": "003831"])
    case "pit":
        return try drop.view.make("widget", ["lat": "40.446789", "lon": "-80.005376", "park": "PNC Park", "color": "FDB827"])
    case "sdn", "sd":
        return try drop.view.make("widget", ["lat": "32.707210", "lon": "-117.156754", "park": "Petco Park", "color": "002D62"])
    case "sea":
        return try drop.view.make("widget", ["lat": "47.591384", "lon": "-122.331866", "park": "Safeco Field", "color": "005C5C"])
    case "sfn", "sf":
        return try drop.view.make("widget", ["lat": "37.778604", "lon": "-122.389012", "park": "AT%26T Park", "color": "FD5A1E"])
    case "sln", "stl":
        return try drop.view.make("widget", ["lat": "38.622636", "lon": "-90.192510", "park": "Busch Stadium", "color": "C41E3A"])
    case "tba", "tb":
        return try drop.view.make("widget", ["lat": "27.768120", "lon": "-82.652834", "park": "Tropicana Field", "color": "092C5C"])
    case "tex":
        return try drop.view.make("widget", ["lat": "32.751208", "lon": "-97.082075", "park": "Globe Life Park", "color": "C0111F"])
    case "tor":
        return try drop.view.make("widget", ["lat": "43.641314", "lon": "-79.388806", "park": "Rogers Centre", "color": "134A8E"])
    case "min":
        return try drop.view.make("widget", ["lat": "44.981736", "lon": "-93.277422", "park": "Target Field", "color": "D31145"])
    case "phi":
        return try drop.view.make("widget", ["lat": "39.905975", "lon": "-75.166077", "park": "Citizens Bank Park", "color": "E81828"])
    case "atl":
        return try drop.view.make("widget", ["lat": "33.890695", "lon": "-84.467176", "park": "SunTrust Park", "color": "CE1141"])
    case "cha", "cws":
        return try drop.view.make("widget", ["lat": "41.829957", "lon": "-87.633181", "park": "Guaranteed Rate Field", "color": "000000"])
    case "mia":
        return try drop.view.make("widget", ["lat": "25.778186", "lon": "-80.220304", "park": "Marlins Park", "color": "FF6600"])
    case "nya", "nyy":
        return try drop.view.make("widget", ["lat": "40.829699", "lon": "-73.925617", "park": "Yankee Stadium", "color": "E4002B"])
    case "mil":
        return try drop.view.make("widget", ["lat": "43.028125", "lon": "-87.970568", "park": "Miller Park", "color": "B6922E"])
    default:
        return try drop.view.make("error")
    }
}

drop.get("/") { _ in
    return try drop.view.make("error")
}

drop.run()
