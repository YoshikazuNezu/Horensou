//
//  File.swift
//  Hourensou
//
//  Created by 根津嘉一 on 2019/06/22.
//  Copyright © 2019 根津嘉一. All rights reserved.
//

import Foundation

struct Distance: Decodable {
    let routes: [Routes]
}

struct Routes: Decodable {
    let legs: [Legs]
}

struct Legs: Decodable {
    let distance: Distance2
}

struct Distance2: Decodable {
    let text: String
    let value: Int
}


