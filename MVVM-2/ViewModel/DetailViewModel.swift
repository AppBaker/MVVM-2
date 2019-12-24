//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 17.12.2019.
//  Copyright © 2019 Ivan Nikitin. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age)")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
