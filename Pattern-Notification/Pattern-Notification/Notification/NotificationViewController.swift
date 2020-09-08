//
//  NotificationViewController.swift
//  Pattern-Notification
//
//  Created by Neal on 2020/9/9.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {
    
    lazy var seller = Seller()
    lazy var custom = Custom(money: 20)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        seller.open()
        custom.askApple()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.custom.wannaApple(count: 3)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.custom.payApple(money: self.custom.money!, count: 4)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.custom.payApple(money: self.custom.money!, count: 4)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
            self.custom.payApple(money: self.custom.money!, count: 4)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
            self.custom.payApple(money: self.custom.money!, count: 4)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.custom.payApple(money: self.custom.money!, count: 4)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
            self.custom.payApple(money: self.custom.money!, count: 4)
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
