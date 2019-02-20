//
//  HeroListProtocol.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 18/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import UIKit

protocol HLViewToPresenter : class {
    var view: HLPresenterToView? {get set}
    var interector: HLPresenterToInteractor? {get set}
    var router: HLPresenterToRouter? {get set}
    func viewDidLoad()
    func selectedHero(_ hero : Hero) 
}

protocol HLPresenterToInteractor : class {
    var presenter: HLInteractorToPresenter? {get set}
    func getHeroList()
}

protocol HLInteractorToPresenter : class {
    func updateList(with heros : [Hero])
}

protocol HLPresenterToView : class {
    func reloadTableView(with heros : [Hero])
}

protocol HLPresenterToRouter : class {
    static func createModule() -> UIViewController
    func navigateToHeroDetailsView(for view : HLPresenterToView, hero : Hero) 
}
