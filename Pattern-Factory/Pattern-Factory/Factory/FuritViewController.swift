//
//  FuritViewController.swift
//  Pattern-Factory
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class FuritViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fruite = FactoryManager.getFurit(.orange)
        fruite.show()

        // Do any additional setup after loading the view.
    }
    

    

}
