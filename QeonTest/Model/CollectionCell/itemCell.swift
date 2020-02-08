//
//  itemCell.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import UIKit

class itemCell: UICollectionViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(image:UIImage, title:String, subtitle:String){
        self.itemImage.image = image
        self.itemTitle.text = title
        self.itemSubtitle.text = "\(generateThousands(number: subtitle)) POIN"
    }
    
    func generateThousands(number:String)->String{
        var numberString = String(number)
        let thousandPlaces = numberString.count/3
        var offset = 3
        for _ in 1...thousandPlaces{
            numberString.insert(",", at: numberString.index(numberString.endIndex, offsetBy: -offset))
            offset += 4
        }
        if numberString.first == ","{
            numberString.remove(at: numberString.startIndex)
        }
        return numberString
    }

}
