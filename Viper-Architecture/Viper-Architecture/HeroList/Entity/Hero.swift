//
//  HerosModel.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 18/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import Foundation

struct Hero : Codable {
    var name :  String
    
    enum CodingKeys : String, CodingKey {
        case name
    }
}
