//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 16.12.2019.
//  Copyright © 2019 Ivan Nikitin. All rights reserved.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?

    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 32),
        Profile(name: "Max", secondName: "Pain", age: 43),
        Profile(name: "Gim", secondName: "Kerry", age: 65)]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectedRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }

}
