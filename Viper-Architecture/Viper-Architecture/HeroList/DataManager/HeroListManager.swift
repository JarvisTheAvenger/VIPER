//
//  HeroListManager.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 18/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

enum API {
    static let baseURL = "https://swapi.co/api/"
    
    enum EndPoints {
        static let getHeroList = "people"
    }
}


class HeroListAPIManager {
    
    static func getHeroList(_ heroListURL : String, completionHandler: @escaping ([Hero])->Void) {
        let url = API.baseURL + heroListURL
        Alamofire
            .request( url,
                      method: .get ,
                      parameters: nil,
                      encoding: JSONEncoding.default,
                      headers: nil)
            .responseJSON { (response) in
                
                func handleSuccess(_ result : Any ) {
                    let responseJson =  JSON(result)
                    let heros = responseJson["results"]
                    let heroRawData = try! heros.rawData()
                    do {
                        let heroModels = try JSONDecoder().decode([Hero].self, from: heroRawData)
                        completionHandler(heroModels)
                    } catch {
                        print(error)
                    }
                }
                
                func handleError(_ error : Any) {
                    print(error)
                }
                
                switch (response.result) {
                case .success(let responseJson):
                    handleSuccess(responseJson)
                case .failure(let error):
                    handleError(error)
                }
        }
    }
    
}
