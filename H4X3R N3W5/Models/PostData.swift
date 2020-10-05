//
//  PostData.swift
//  H4X3R N3W5
//
//  Created by paritosh on 04/04/20.
//  Copyright © 2020 paritosh. All rights reserved.
//

import Foundation
struct Results : Decodable{
    let hits : [Post]
    
    
}
struct Post: Decodable, Identifiable{
    var id : String {
        return objectID 
    }
    let points : Int
    let title : String
    let url : String?
    let objectID : String
    
}
