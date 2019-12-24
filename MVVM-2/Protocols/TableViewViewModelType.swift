//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 16.12.2019.
//  Copyright © 2019 Ivan Nikitin. All rights reserved.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectedRow(atIndexPath indexPath: IndexPath)
}
