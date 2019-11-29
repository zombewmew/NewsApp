//
//  Article.swift
//  NewsApp
//
//  Created by zombewmew on 28.11.2019.
//  Copyright © 2019 Christina S. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
