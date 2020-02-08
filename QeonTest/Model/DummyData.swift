//
//  DummyData.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import Foundation
import UIKit

class DummyData{
    let itemData:[ItemModel] = [ItemModel(image: #imageLiteral(resourceName: "samplePhotoLandscape"), name: "OculusVR", point: "1000000"), ItemModel(image: #imageLiteral(resourceName: "samplePhotoLandscape"), name: "LG Plasma TV", point: "1500000"), ItemModel(image: #imageLiteral(resourceName: "samplePhotoLandscape"), name: "Nintendo Switch", point: "500000")]
    let eventData:[EventModel] = [EventModel(image: #imageLiteral(resourceName: "samplePhotoLandscape"), title: "Promo Buy One Get One hanya di Grand Indonesia", Subtitle: "Promo hanya berlaku di Grand Indonesia Store dan terbatas untuk pengguna baru."), EventModel(image: #imageLiteral(resourceName: "samplePhotoLandscape"), title: "Promo Buy One Get One hanya di Grand Indonesia", Subtitle: "Promo hanya berlaku di Grand Indonesia Store dan terbatas untuk pengguna baru." ), EventModel(image: #imageLiteral(resourceName: "samplePhotoLandscape"), title: "Promo Buy One Get One hanya di Grand Indonesia", Subtitle: "Promo hanya berlaku di Grand Indonesia Store dan terbatas untuk pengguna baru.")]
    let bannerImages:[UIImage] = [#imageLiteral(resourceName: "samplePhotoPortrait"),#imageLiteral(resourceName: "samplePhotoPortrait"),#imageLiteral(resourceName: "samplePhotoPortrait")]
    
    func fetchItemData() -> [ItemModel]{
        return itemData
    }
    
    func fetchEventData() -> [EventModel]{
        return eventData
    }
    
    func fetchBannerImage() -> [UIImage]{
        return bannerImages
    }
}
