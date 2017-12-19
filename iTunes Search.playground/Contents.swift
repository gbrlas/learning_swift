//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"

let query: [String: String] = [
    "term": "Interstellar",
    "media": "movie"
]

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap( { URLQueryItem(name: $0.0, value: $0.1) } )
        
        return components?.url
    }
}

let baseURL = URL(string: "https://itunes.apple.com/search")!
let url = baseURL.withQueries(query)!

let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data,
        let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}

task.resume()

PlaygroundPage.current.finishExecution()

