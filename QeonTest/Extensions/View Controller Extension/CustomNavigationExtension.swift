//
//  NavigationExtension.swift
//  QeonTest
//
//  Created by Jesse Joseph on 07/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import Foundation
import UIKit

extension ViewController{
    func setupNavigation(){
        let upperTitleLabel = UILabel()
        let upperString = "HI,JOSE"
        let upperStringAtt = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.gray]
        let attributedUpperString = NSAttributedString(string: upperString, attributes: upperStringAtt)
        upperTitleLabel.attributedText = attributedUpperString
        
        let bottomTitleLabel = UILabel()
    
        let bottomString1Att = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: UIColor.black]
        let attributedBottomString1 = NSMutableAttributedString(string: "45,560", attributes: bottomString1Att)
        
        let bottomString2Att = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.light), NSAttributedString.Key.foregroundColor: UIColor.gray]
        let attributedBottomString2 = NSMutableAttributedString(string: " POIN", attributes: bottomString2Att)
        
        attributedBottomString1.append(attributedBottomString2)
        bottomTitleLabel.attributedText = attributedBottomString1
        
        let stackView = UIStackView(arrangedSubviews: [upperTitleLabel,bottomTitleLabel])
        stackView.axis = .vertical
        stackView.spacing = 5
        let newRightButtonItem = UIBarButtonItem(customView: stackView)
        self.navigationItem.rightBarButtonItem = newRightButtonItem
        
    }
}
