//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 16.12.2019.
//  Copyright © 2019 Ivan Nikitin. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
    
    
}
