//
//  ViewController.swift
//  Coordinator
//
//  Created by Mateus Fernandes on 21/11/19.
//  Copyright © 2019 Mateus Fernandes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StoryBoarded {
    weak var coordinator : MainCoordinator?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnFreeShop(_ sender: Any) {
        coordinator?.freeShop()
    }
    
    @IBAction func btnBuyItems(_ sender: Any) {
       
        coordinator?.buyItens()
    }
    @IBAction func BtnClickTeste(_ sender: Any) {
        coordinator?.testeDoClique()
    }
}

