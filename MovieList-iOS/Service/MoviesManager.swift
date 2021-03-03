//
//  MoviesManager.swift
//  MovieList-iOS
//
//  Created by Admin on 02/03/21.
//

import UIKit

class MoviesManager {
    
    func performRequest() {
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=caa820e085c4c624da54475b140f0cbd&language&language=en-US&page=1")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            print ("response: \(String(describing: response))")
            print ("error: \(String(describing: error))")
            
            guard let responseData = data else {return}
            
            if let responseString = String(data: responseData, encoding: .utf8)
            {
                print(responseString)
            }
        }
        task.resume()
    }
    
}
