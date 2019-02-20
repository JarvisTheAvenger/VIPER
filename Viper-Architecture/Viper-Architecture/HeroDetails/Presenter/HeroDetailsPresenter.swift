//
//  HeroDetailsPresenter.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 20/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import Foundation

class HeroDetailsPresenter : HDViewToPresenter {
    var router: HDRouter?
    
    var view: HDPresenterToView?
    
    var model : Hero?
    
    func viewDidLoad() {
        view?.updateHeroName(with: model!)
    }
}

