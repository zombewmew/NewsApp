//
//  WebService.swift
//  NewsApp
//
//  Created by zombewmew on 28.11.2019.
//  Copyright © 2019 Christina S. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
            
        }.resume()
        
    }
    
}
