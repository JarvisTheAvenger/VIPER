//
//  HeroListView.swift
//  Viper-Architecture
//
//  Created by Rahul Umap on 18/02/19.
//  Copyright © 2019 Rahul Umap. All rights reserved.
//

import UIKit

class HeroListView: UIViewController {

    @IBOutlet weak var heroListTableView: UITableView!
    
    var presenter : HLViewToPresenter?
    var heros = [Hero]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

}

extension HeroListView : HLPresenterToView {
    func reloadTableView(with heros : [Hero]) {
        self.heros = heros
        heroListTableView.reloadData()
    }
}

extension HeroListView : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = heros[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let hero = heros[indexPath.row]
        presenter?.selectedHero(hero)
    }
}
