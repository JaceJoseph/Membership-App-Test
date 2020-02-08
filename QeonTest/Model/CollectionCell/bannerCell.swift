//
//  bannerCell.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import UIKit

class bannerCell: UICollectionViewCell {

    @IBOutlet weak var bannerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(image:UIImage){
        self.bannerImage.image = image
    }

}
