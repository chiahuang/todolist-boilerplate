import PackageDescription

let package = Package(
    name: "todolist-boilerplate",
    dependencies: [
         .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 19),
         .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", majorVersion: 0, minor: 9),
         .Package(url: "https://github.com/IBM-Swift/todolist-web", majorVersion: 0),
         .Package(url: "https://github.com/IBM-Swift/todolist-api", majorVersion: 0),
    ]
)
