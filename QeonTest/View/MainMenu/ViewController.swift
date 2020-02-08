//
//  ViewController.swift
//  QeonTest
//
//  Created by Jesse Joseph on 07/02/20.
//  Copyright © 2020 Jesse Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = MainMenuViewModel()
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeTableView.delegate = self
        self.homeTableView.dataSource = self
        setupNavigation() //function on extension
    }
}
