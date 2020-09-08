//
//  FruitView.swift
//  Pattern-MVC
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit
import SnapKit

class FruitView: UITableViewCell {
    
    fileprivate lazy var imgIcon = UILabel()
    fileprivate lazy var lblName = UILabel()
    fileprivate lazy var lblPrice = UILabel()
    
    fileprivate var model: FruitModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    
    func setFruit(_ fruit: FruitModel) {
        
        self.imgIcon.text = fruit.icon ?? ""
        self.lblName.text = fruit.name ?? ""
        self.lblPrice.text = fruit.price ?? ""
        
    }
    
    

    
//MARK:- Init
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        
        self.addSubview(self.imgIcon)
        self.addSubview(self.lblName)
        self.addSubview(self.lblPrice)
        
        self.imgIcon.snp.makeConstraints { [weak self] (make) in
            make.leading.equalTo(self!.snp.leading).offset(15)
            make.centerY.equalTo(self!.snp.centerY)
        }
        
        self.lblName.snp.makeConstraints { [weak self] (make) in
            make.leading.equalTo(self!.imgIcon.snp.trailing).offset(15)
            make.centerY.equalTo(self!.imgIcon.snp.centerY)
        }
        
        self.lblPrice.snp.makeConstraints { [weak self] (make) in
            make.trailing.equalTo(self!.snp.trailing).offset(-15)
            make.centerY.equalTo(self!.lblName.snp.centerY)
        }
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
