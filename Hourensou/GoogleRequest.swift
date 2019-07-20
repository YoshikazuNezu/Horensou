//
//  GoogleRequest.swift
//  Hourensou
//
//  Created by 根津嘉一 on 2019/06/08.
//  Copyright © 2019 根津嘉一. All rights reserved.
//

import Foundation
import APIKit

protocol GoogleRequest: Request{
    
}


extension GoogleRequest {
    var baseURL: URL {
        return URL(string: "https://maps.googleapis.com")!
    }
}

extension GoogleRequest where Response: Decodable {
    var dataParser: DataParser {
        return DecodableDataParser()
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else {
            throw ResponseError.unexpectedObject(object)
        }
        return try JSONDecoder().decode(Response.self,from: data)
        
    }
    
}






