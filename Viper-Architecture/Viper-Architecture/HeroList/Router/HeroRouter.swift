//
//  HeroRouter.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 20/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import UIKit

class HeroRouter: HLPresenterToRouter {
    class func createModule() -> UIViewController {
        
        let navController = mainstoryboard.instantiateViewController(withIdentifier: "HerosNavigationController")
        guard let view = navController.children.first as? HeroListView else { return UIViewController() }
        
        let presenter: HLViewToPresenter & HLInteractorToPresenter = HeroListPresenter()
        let interactor: HLPresenterToInteractor = HeroListInteractor()
        let router: HLPresenterToRouter = HeroRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interector = interactor
        interactor.presenter = presenter
        
        return navController
    }
    
    static var mainstoryboard: UIStoryboard{
        return UIStoryboard(name:"Main",bundle: Bundle.main)
    }
    
    func navigateToHeroDetailsView(for view : HLPresenterToView, hero : Hero) {
        let heroDetails = HeroDetailsRouter.createModule(with: hero)
        if let sourceView = view as? UIViewController {
            sourceView.navigationController?.pushViewController(heroDetails, animated: true)
        }
    }
}
