//
//  ViewControllerTableViewExtension.swift
//  QeonTest
//
//  Created by Jesse Joseph on 08/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import Foundation
import UIKit

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 2{
            return "Merchant Event"
        }
        return String()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 2{
            return viewModel.events.count
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row:EventModel = viewModel.events[indexPath.row]
        
        if indexPath.section == 0{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "bannerCell", for: indexPath) as? BannerTableViewCell{
                print("Section1")
                return cell
            }
        }else if indexPath.section == 1{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as? ItemTableViewCell{
                print("Section2")
                return cell
            }
        }else if indexPath.section == 2{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath) as? EventTableViewCell{
                print("Section3")
                cell.setCell(image: row.eventImage, title: row.eventTitle, subtitle: row.eventSubtitle)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if section == 2{
             guard let header = view as? UITableViewHeaderFooterView else { return }
            header.textLabel?.textColor = UIColor.darkGray
            header.textLabel?.font = UIFont.boldSystemFont(ofSize: 30)
            header.tintColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        }
    }
}
