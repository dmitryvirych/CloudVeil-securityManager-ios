//
//  ObjectManager.swift
//
//
//  Created by Dmitriy Virych on 3/20/17.
//  Copyright © 2017 Requestum. All rights reserved.
//

import Foundation

import Alamofire
import AlamofireNetworkActivityIndicator
import ObjectMapper

typealias JSON = [String: Any]
typealias JSONArray = [[String: Any]]

class ObjectManager {
    
    func headers() -> HTTPHeaders {
        
        let headers: HTTPHeaders = [:]
    
        return headers
    }
    
    func request(_ method: HTTPMethod,
                 serverConstant: ServerConstant,
                 parameters: Parameters? = nil,
                 urlParameters: [String: String]? = nil,
                 encoding: ParameterEncoding = URLEncoding.httpBody) -> DataRequest {
        
        let urlString = ServerConstant.serverAPIUrl + serverConstant.rawValue
        
        let url = urlString.replacingURLParameters(urlParameters: urlParameters)

        return Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers())
    }
}
