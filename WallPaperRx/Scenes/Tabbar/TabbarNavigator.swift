//
//  TabbarNavigator.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import UIKit


protocol TabbarNavigatorType {
    func createTabbarControllers() -> [UIViewController]
}

struct TabbarNavigator: TabbarNavigatorType {
    
    func createTabbarControllers() -> [UIViewController] {
        let photoVC = makePhoto()
        
        return [photoVC]
    }
    
    private func makePhoto() -> UINavigationController {
        let navVC = BaseNavigationController()
        let photoUseCase = PhotoUseCase()
        let photoNavigator = PhotoNavigator(navigationController: navVC)
        let photoVM = PhotoViewModel(useCase: photoUseCase, navigator: photoNavigator)
        let photoVC = PhotoViewController()
        photoVC.bindViewModel(to: photoVM)
        photoVC.tabBarItem = TabbarItemType.photo.item
        navVC.viewControllers = [photoVC]
        return navVC
    }
}
