//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 17.12.2019.
//  Copyright © 2019 Ivan Nikitin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        textLabel.text = viewModel.description
    }
}
