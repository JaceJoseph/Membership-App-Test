//
//  ItemTableViewCell.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    let viewModel = MainMenuViewModel()
    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.itemCollectionView.delegate = self
        self.itemCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension ItemTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let row:ItemModel = viewModel.items[indexPath.row]
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCollectionCell", for: indexPath) as? itemCell{
            cell.setCell(image: row.itemImage, title: row.itemName, subtitle: row.itemPoint)
            return cell
        }
        return UICollectionViewCell()
    }
}
