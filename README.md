# Kitura Todo List Boilerplate

> An example using the Kitura web framework and HTTP Server to develop a backend for a todo list organizer

This is a starter repository for quickly adding a new TodoList implementation for a specific database. It was created to encourage the Swift community for integrating with more databases. 

## Implementations:

  The following implementations were created from todolist-boilerplate:

 - [TodoList CouchDB](https://github.com/IBM-Swift/todolist-couchdb/)
 - [TodoList Redis](https://github.com/IBM-Swift/todolist-redis)
 - [TodoList MongoDB](https://github.com/IBM-Swift/todolist-mongodb)

## Requirements:

 - swift-DEVELOPMENT-06-06-SNAPSHOT compiler toolchain

## Quick start for developing locally:

1. Install the [06-06-DEVELOPMENT Swift toolchain](https://swift.org/download/) 

2. Clone the boilerplate:

  `git clone https://github.com/IBM-Swift/todolist-boilerplate`

2. Autogenerate an XCode project:

  ```
  cd todolist-boilerplate
  swift package generate-xcodeproj
  ```

3. Add additional Library Search Path:   

  Currently the 06-06 snapshot will automatically generate an XCode project, but will fail to find compiled libraries that are located in .build/debug. You must manually add a search path to the XCode project. Open the XCode project and in the 'Build Settings' of both the ***Kitura*** and ***Kitura-net*** modules, add the following to your ***Library Search Paths***:
    
    `$SRCROOT/.build/debug`

4. (Optional) Clone the Unit Tests for TodoList in to your project directory

  Make sure you are in the root of your project where Package.swift and Sources/ directory are.
  
  `git clone https://github.com/IBM-Swift/todolist-tests Tests`

5. Add the necessary dependencies to your `Package.swift` file:

  For example, the CouchDB implementation could look like:
  
  ```swift
  let package = Package(
    name: "TodoList",
    dependencies: [
                      .Package(url: "https://github.com/IBM-Swift/todolist-api.git", majorVersion: 0),
                      .Package(url: "https://github.com/IBM-Swift/Kitura-CouchDB.git", majorVersion: 0, minor: 16)
    ]
   )
  ```

  You can find Swift libraries to popular databases at the [Swift Package Catalog](https://swiftpkgs.ng.bluemix.net/)

6. Open the project and edit Sources/TodoList.swift:

  Each of the functions that need to be implemented are shown here.

7. Edit the Sources/main.swift file:

  Edit the database configuration settings to get from Cloud Foundry the appropriate values for the host, port, username, and password (if relevant).

7. Run your Project

  Autogenerated XCode projects will choose the library named TodoList-Boilerplate instead of the executable named TodoList-Boilerplate as the default Target to run. Change it to the executable and press the run button or Cmd-R. When it is running you should see in the XCode console: `Server is listening on port 8090`.
  
  You can also run the Unit Tests in XCode.

8. Open up your browser, and view: 

   [http://www.todobackend.com/client/index.html?http://localhost:8090](http://www.todobackend.com/client/index.html?http://localhost:8090)
   
   This example will use the official todobackend frontend written in Backbone.js with your backend running locally.

## Contributing Checklist

1. Rename your project name in Package.swift to your database implementation. 

  For example, `TodoList-Memcached`, `TodoList-MongoDB`, etc.
  
2. Push to a new repository with that name

  For example, `todolist-memcached`, `todolist-mongodb`, etc.
  
3. git tag your release
  ```
  git tag 0.0.1
  git push --tags
  ```

## Deploying to BlueMix

1. Get an account for [Bluemix](https://new-console.ng.bluemix.net/?direct=classic)

2. Dowload and install the [Cloud Foundry tools](https://new-console.ng.bluemix.net/docs/starters/install_cli.html):

    ```
    cf login
    bluemix api https://api.ng.bluemix.net
    bluemix login -u username -o org_name -s space_name
    ```

    Be sure to change the directory to the Kitura-TodoList directory where the manifest.yml file is located.

3. Run `cf push`

    ***Note** The uploading droplet stage should take a long time, roughly 2-3 minutes. If it worked correctly, it should say:

    ```
    1 of 1 instances running 

    App started
    ```

## License 

This library is licensed under Apache 2.0. Full license text is available in [LICENSE](LICENSE).
