import Vapor

let drop = Droplet()

drop.get(String.self) { request, team in
    return try drop.view.make("index", [
        "lat": "41.496235",
        "lon": "-81.684773",
        "name": "Progressive Field",
        "color": "002B5C"
    ])
}

drop.run()