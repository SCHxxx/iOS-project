//
//  NetWorkManager.swift
//  swiftProject
//
//  Created by 施承皓 on 2018/5/24.
//  Copyright © 2018年 施承皓. All rights reserved.
//

import UIKit
import Alamofire

class NetWorkManager: NSObject {
    
    //单例模式
    static let shareNetWorkManager = NetWorkManager.init()
    private override init() {}
    
    //get请求
    public func GetNetworkWithURL(url:String,parameters:Dictionary<String, Any>){
        Alamofire.request(url, method: HTTPMethod.get, parameters: parameters, encoding: JSONEncoding.default, headers: nil).responseJSON{ (response) in
            
        }
    }
}


