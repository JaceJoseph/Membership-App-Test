//
//  EventTableViewCell.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventSubtitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCell(image:UIImage, title:String, subtitle:String){
        self.eventImage.image = image
        self.eventTitle.text = title
        self.eventSubtitle.text = subtitle
    }

}
