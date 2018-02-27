//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap({ URLQueryItem(name: $0.0, value: $0.1)
        })
        
        return components?.url
    }
}

let query: [String: String] = [
    "api_key": "DEMO_KEY",
    "date" : "2011-07-13"
]

let baseURL = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!
let url = baseURL.withQueries(query)!
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    let jsonDecoder = JSONDecoder()
    
    if let data = data,
        let photoDictionary = try? jsonDecoder.decode([String: String].self, from: data) {
            print(photoDictionary)
    }
}

print(url.absoluteURL)

task.resume()
