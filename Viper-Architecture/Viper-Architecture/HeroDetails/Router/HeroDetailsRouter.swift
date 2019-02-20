//
//  HeroDetailsRouter.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 20/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import UIKit

class HeroDetailsRouter : HDRouter {
    static func createModule(with hero: Hero) -> UIViewController {
        let view = storyboard.instantiateViewController(withIdentifier: "HeroDetailsView") as? HeroDetailsView
        let router : HDRouter = HeroDetailsRouter()
        let presenter : HDViewToPresenter = HeroDetailsPresenter()
        
        presenter.router = router
        presenter.view = view
        presenter.model = hero
        view?.presenter = presenter
        
        return view!
    }
    
    static var storyboard : UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}
