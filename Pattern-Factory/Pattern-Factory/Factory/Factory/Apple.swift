//
//  Apple.swift
//  Pattern-Factory
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class Apple: Fruit {
    
    override init() {
        super.init()
        
        self.name = "Apple"
        self.icon = "🍎"
        self.price = "$ 0.99"
    }

}
