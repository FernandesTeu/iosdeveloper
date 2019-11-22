//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Mateus Fernandes on 21/11/19.
//  Copyright © 2019 Mateus Fernandes. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(){
        let vc = ViewController.instanciate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buyItens(){
        print("viagem mano")
        let vwBuy = BuyViewController.instanciate()
        vwBuy.coordinator = self
        navigationController.pushViewController(vwBuy, animated: true)
    }
    
    func freeShop(){
        let vwShop = ShopViewController.instanciate()
        vwShop.coordinator = self
        navigationController.pushViewController(vwShop, animated: true)
    }
    
    func testeDoClique() {
        print("clicou mané")
    }
}
