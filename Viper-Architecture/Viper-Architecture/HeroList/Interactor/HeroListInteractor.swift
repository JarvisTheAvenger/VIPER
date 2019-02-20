//
//  HeroListInteractor.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 18/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import Foundation

class HeroListInteractor : HLPresenterToInteractor{
    var presenter: HLInteractorToPresenter?
    
    func getHeroList() {
        HeroListAPIManager.getHeroList(API.EndPoints.getHeroList, completionHandler: { heros in
            self.presenter?.updateList(with: heros)
        })
    }
}

