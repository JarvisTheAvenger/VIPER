//
//  HeroListPresenterView.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 18/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import Foundation

class HeroListPresenter : HLViewToPresenter {
    var view: HLPresenterToView?
    
    var interector: HLPresenterToInteractor?
    
    var router: HLPresenterToRouter?
    
    func viewDidLoad() {
        interector?.getHeroList()
    }
    
    func selectedHero(_ hero: Hero) {
        router?.navigateToHeroDetailsView(for: view!, hero: hero)
    }
}

extension HeroListPresenter : HLInteractorToPresenter {
    func updateList(with heros: [Hero]) {
        view?.reloadTableView(with: heros)
    }
}

