import Vapor

let drop = Droplet()

drop.get(String.self) { request, team in
    switch team.lowercased() {
    case "ana", "laa":
        return try drop.view.make("index", ["lat": "33.800353", "lon": "-117.882265", "park": "Angel Stadium", "color": "BA0021"])
    case "ari":
        return try drop.view.make("index", ["lat": "33.445525", "lon": "-112.066258", "park": "Chase Field", "color": "A71930"])
    case "bal":
        return try drop.view.make("index", ["lat": "39.284184", "lon": "-76.620986", "park": "Oriole Park", "color": "DF4601"])
    case "bos":
        return try drop.view.make("index", ["lat": "42.346700", "lon": "-71.096703", "park": "Fenway Park", "color": "BD3039"])
    case "chn", "chc":
        return try drop.view.make("index", ["lat": "41.948414", "lon": "-87.654882", "park": "Wrigley Field", "color": "0E3386"])
    case "cin":
        return try drop.view.make("index", ["lat": "39.097840", "lon": "-84.507346", "park": "Great American Ball Park", "color": "C6011F"])
    case "cle":
        return try drop.view.make("index", ["lat": "41.496235", "lon": "-81.684773", "park": "Progressive Field", "color": "E31937"])
    
    default:

    }
}

drop.run()