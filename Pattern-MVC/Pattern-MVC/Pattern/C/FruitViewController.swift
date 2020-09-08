//
//  FruitViewController.swift
//  Pattern-MVC
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

class FruitViewController: UIViewController {
    
    var tableView: UITableView?
    var arrData: [FruitModel]?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView = UITableView.init(frame: self.view.bounds, style: .grouped)
        self.tableView?.register(FruitView.self, forCellReuseIdentifier: "FruitView")
        
        self.view.addSubview(self.tableView!)
        
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        
        getData()
    }
    
    func getData() {
        
        self.arrData = [
            .init(name: "apple", icon: "🍎", price: "$ 0.99"),
            .init(name: "pear", icon: "🍐", price: "$ 0.87"),
            .init(name: "orange", icon: "🍊", price: "$ 0.58"),
            .init(name: "lemon", icon: "🍋", price: "$ 1.21"),
            .init(name: "banana", icon: "🍌", price: "$ 0.36"),
        ]
        
        self.tableView?.reloadData()
        
    }
    

}

extension FruitViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitView", for: indexPath)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let fruitView = cell as? FruitView {
            if self.arrData?.count ?? 0 > 0 {
                fruitView.setFruit(self.arrData![indexPath.row])
            }
            
        }
    }
    
    
    
    
}
