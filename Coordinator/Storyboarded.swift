//
//  Storeboarded.swift
//  Coordinator
//
//  Created by Mateus Fernandes on 21/11/19.
//  Copyright © 2019 Mateus Fernandes. All rights reserved.
//

import Foundation
import UIKit

protocol  StoryBoarded {
    static func instanciate() -> Self
}

extension StoryBoarded where Self: UIViewController {
    static func instanciate() -> Self {
        let fullName  = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
