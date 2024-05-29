//
//  DetailNavigator.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

protocol DetailNavigatorType {
    
}

struct DetailNavigator: DetailNavigatorType {
    unowned let navigationController: UINavigationController
    
    
}
