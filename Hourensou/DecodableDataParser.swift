//
//  DataParser.swift
//  Hourensou
//
//  Created by 根津嘉一 on 2019/06/08.
//  Copyright © 2019 根津嘉一. All rights reserved.
//

import Foundation
import APIKit

final class DecodableDataParser: DataParser {
    var contentType: String? {
        return "application/json"
    }
    
    func parse(data: Data) throws -> Any {
        return data
    }

}
