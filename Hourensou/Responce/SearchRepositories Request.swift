//
//  File.swift
//  Hourensou
//
//  Created by 根津嘉一 on 2019/06/28.
//  Copyright © 2019 根津嘉一. All rights reserved.
//

import Foundation
import APIKit

final class GoogleAPI {
    private init() {}
    
    struct SearchRepositories: GoogleRequest {
        typealias Response = Distance
        
        let method: HTTPMethod = .get
        let path: String = "/maps/api/directions/json"
        var parameters: Any? {
            return [
                "origin": origin,
                "destination": destination,
                "key": key,
            ]
        }
        
        let origin: String
        let destination: String
        private let key: String = "AIzaSyD6OYuVfFCuIahZFWfCpHlObgB4FUaJKVo"
    }
}
