//
//  BannerTableViewCell.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import UIKit

class BannerTableViewCell: UITableViewCell {

    @IBOutlet weak var bannerCollectionView: UICollectionView!
    let viewModel = MainMenuViewModel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.bannerCollectionView.delegate = self
        self.bannerCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension BannerTableViewCell:UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.bannerImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let row:UIImage = viewModel.bannerImages[indexPath.row]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCollectionCell", for: indexPath) as? bannerCell{
            print("Banner")
            cell.setCell(image: row)
            return cell
        }
        
        return UICollectionViewCell()
    }
}
