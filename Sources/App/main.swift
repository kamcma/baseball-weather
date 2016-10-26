import Vapor

let drop = Droplet()

drop.get("/") { request in
    return try drop.view.make("test", [
        "message": "Hello Baseball Weather",
    ])
}

drop.run()