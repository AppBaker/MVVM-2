//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 16.12.2019.
//  Copyright © 2019 Ivan Nikitin. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
