//
//  Seller.swift
//  Pattern-Notification
//
//  Created by Neal on 2020/9/9.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class Seller: NSObject {

    lazy var appleCount: Int = 10
    
    lazy var apple = Apple()
    
    @objc func askApple() {
        
        if appleCount > 0 {
            sellPrint("There are \(appleCount) apple left , \(apple.symbol)\(apple.price) for each")
        } else {
            sellPrint("There are no apple")
        }
        
    }
    
    @objc func willSellApple(_ notification: Notification) {
        let dic = notification.userInfo ?? [:]
        let count = dic["count"] as? Int ?? 0
        if count > self.appleCount {
            sellPrint("No enough apple")
        } else {
            sellPrint("Total \(self.apple.symbol) \(Float(count) * self.apple.price)")
        }
    }
    
    @objc func getMoney(_ notification: Notification) {
        let dic = notification.userInfo ?? [:]
        let count = dic["count"] as? Int ?? 0
        let money = dic["money"] as? Float ?? 0
        let total = Float(count) * self.apple.price
        
        if count > self.appleCount {
            sellPrint("I'm Sorry, There are not enough apple")
            return
        }
        
        if money == total {
            sellPrint("All right")
            self.sellApple(count: count)
        } else if money > total {
            sellPrint("\(money - total) dollar left")
            self.sellApple(count: count)
        } else {
            sellPrint("Sorry, your money is not enough")
        }
    }
    
    func sellApple(count: Int) {
        self.appleCount = self.appleCount - count
        sellPrint("Here your apple")
        sellPrint("Welcome Next Time")
        
        NotificationCenter.default.post(name: .init("sellApple"), object: nil, userInfo: ["count": count])
    }
    
    func sellPrint(_ msg: String) {
        print("Seller: \(msg)")
    }
    
    func open() {
        NotificationCenter.default.addObserver(self, selector: #selector(askApple), name: .init("askApple"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willSellApple), name: .init("willSellApple"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(getMoney), name: .init("getMoney"), object: nil)
    }

}
