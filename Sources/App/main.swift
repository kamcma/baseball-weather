import Vapor

let drop = Droplet()

drop.get("/") { request in
    return "Hello Baseball Weather!"
})

drop.run()