//
//  Coordinator.swift
//  Coordinator
//
//  Created by Mateus Fernandes on 21/11/19.
//  Copyright © 2019 Mateus Fernandes. All rights reserved.
//


import UIKit

protocol Coordinator {
     var childCoordinators: [Coordinator] { get set }
    var navigationController : UINavigationController  {get set}
    
    func start()
}
