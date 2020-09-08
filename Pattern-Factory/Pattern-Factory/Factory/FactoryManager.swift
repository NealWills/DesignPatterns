//
//  FactoryManager.swift
//  Pattern-Factory
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class FactoryManager: NSObject {
    
    enum fruit {
        case apple
        case pear
        case orange
    }

   class func getFurit(_ type: fruit) -> Fruit {
        
        switch type {
            
        case .apple:
            return Apple()
            
        case .pear:
            return Pear()
            
        case .orange:
            return Orange()
            
        }
        
    }
    
}
