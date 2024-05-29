//
//  AppNavigator.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

protocol AppNavigatorType {
    func toTabbar()
}

struct AppNavigator: AppNavigatorType {
    unowned let window: UIWindow
    
    func toTabbar() {
        let tabbarUseCase = TabbarUseCase()
        let tabbarNavigator = TabbarNavigator()
        let tabbarVM = TabbarViewModel(useCase: tabbarUseCase, navigator: tabbarNavigator)
        let tabbarVC = TabbarViewController()
        tabbarVC.bindViewModel(to: tabbarVM)
        window.rootViewController = tabbarVC
        window.makeKeyAndVisible()
    }
}
