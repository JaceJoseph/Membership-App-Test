//
//  ViewSubclass.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import Foundation
import UIKit

class roundedView:UIView{
    override func awakeFromNib() {
        layer.cornerRadius = 10
        layer.shadowColor = .init(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
    }
}
