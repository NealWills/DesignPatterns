//
//  FruitModel.swift
//  Pattern-MVC
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class FruitModel: NSObject {
    
    var name:String?
    var icon:String?
    var price:String?
    
    init(name: String?, icon: String?, price: String?) {
        super.init()
        self.name = name
        self.icon = icon
        self.price = price
    }

}
