//
//  Fruit.swift
//  Pattern-Factory
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class Fruit: NSObject {
    
    var name: String?
    var price: String?
    var icon: String?
    
    func show() {
        print("Hi, This is \(icon ?? "") \(name ?? "") , pay for \(price ?? "")")
    }

}
