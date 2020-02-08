//
//  MainMenuViewModel.swift
//  QeonTest
//
//  Created by Jesse Joseph on 07/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import Foundation
import UIKit

class MainMenuViewModel{
    
    var events:[EventModel]
    var items:[ItemModel]
    var bannerImages:[UIImage]
    
    let dummyData = DummyData()
    
    init() {
        self.events = dummyData.fetchEventData()
        self.items = dummyData.fetchItemData()
        self.bannerImages = dummyData.fetchBannerImage()
    }
}
