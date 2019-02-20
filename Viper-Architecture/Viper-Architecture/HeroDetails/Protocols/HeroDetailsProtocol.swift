//
//  HeroDetailsProtocol.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 20/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import UIKit

protocol HDViewToPresenter : class {
    var router : HDRouter? {get set}
    var view : HDPresenterToView?  {get set}
    var model : Hero? {get set}
    func viewDidLoad()
}

protocol HDPresenterToView {
    func updateHeroName(with hero : Hero)
}

protocol HDRouter {
    static func createModule(with hero: Hero) -> UIViewController
}
