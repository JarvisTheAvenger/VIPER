//
//  HeroDetailsView.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 20/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import UIKit

class HeroDetailsView: UIViewController , HDPresenterToView {
    @IBOutlet weak var heroNameLabel: UILabel!
    
    var presenter: HDViewToPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    func updateHeroName(with hero: Hero) {
        heroNameLabel.text = hero.name
    }
}
