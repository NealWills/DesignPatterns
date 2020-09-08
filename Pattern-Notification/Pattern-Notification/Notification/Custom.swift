//
//  Custom.swift
//  Pattern-Notification
//
//  Created by Neal on 2020/9/9.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class Custom: NSObject {
    
    var money: Float?
    var appleCount: Int?
    lazy var apple = Apple()
    
    func askApple() {
        customPrint("What about the apple")
        NotificationCenter.default.post(name: .init("askApple"), object: nil, userInfo: nil)
    }
    
    func wannaApple(count: Int) {
        customPrint("I wanna \(count) apples")
        NotificationCenter.default.post(name: .init("willSellApple"), object: nil, userInfo: ["count": count])
    }
    
    func payApple(money: Float, count: Int) {
        if ((self.money ?? 0) < self.apple.price * Float(count)) {
            customPrint("(To self)Will, I wanna \(count) apples, but i don't have enough money")
            return
        }
        customPrint("Here are \(apple.symbol)\(money), please give me \(count) apples")
        NotificationCenter.default.post(name: .init("getMoney"), object: nil, userInfo: ["count": count, "money": money])
    }

    
    func customPrint(_ msg: String) {
        print("Custom: \(msg)")
    }
    
    init(money: Float?) {
        super.init()
        self.money = money
        self.appleCount = 0
        
        NotificationCenter.default.addObserver(self, selector: #selector(getApple), name: .init("sellApple"), object: nil)
    }
    
    @objc func getApple(_ notification: Notification) {
        customPrint("Thank you")
        let dic = notification.userInfo ?? [:]
        let count = dic["count"] as! Int
        let total = Float(count) * apple.price
        money = money! - total
        appleCount = (appleCount ?? 0) + count
        customPrint("(To self)OK, I still have \(money ?? 0) dollars and \(self.appleCount ?? 0) apples")
    }
    
    
}
