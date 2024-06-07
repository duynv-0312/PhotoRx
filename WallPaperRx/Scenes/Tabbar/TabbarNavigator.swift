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
        let videoVC = makeVideo()
        let searchVC = makeSearch()
        let personalVC = makePersonal()
        
        return [photoVC, videoVC, searchVC, personalVC]
    }
    
    private func makePhoto() -> UINavigationController {
        let navVC = BaseNavigationController()
        let photoUseCase = PhotoUseCase(photoRepository: PhototRepository())
        let photoNavigator = PhotoNavigator(navigationController: navVC)
        let photoVM = PhotoViewModel(useCase: photoUseCase, navigator: photoNavigator)
        let photoVC = PhotoViewController()
        photoVC.bindViewModel(to: photoVM)
        photoVC.tabBarItem = TabbarItemType.photo.item
        navVC.viewControllers = [photoVC]
        return navVC
    }
    
    private func makeVideo() -> UINavigationController {
        let navVC = BaseNavigationController()
        let videoUseCase = VideoUseCase()
        let videoNavigator = VideoNavigator(navigationController: navVC)
        let videoVM = VideoViewModel(useCase: videoUseCase, navigator: videoNavigator)
        let videoVC = VideoViewController()
        videoVC.bindViewModel(to: videoVM)
        videoVC.tabBarItem = TabbarItemType.video.item
        navVC.viewControllers = [videoVC]
        return navVC
    }
    
    private func makeSearch() -> UINavigationController {
        let navVC = BaseNavigationController()
        let searchUseCase = SearchUseCase()
        let searchNavigator = SearchNavigator(navigationController: navVC)
        let searchVM = SearchViewModel(useCase: searchUseCase, navigator: searchNavigator)
        let searchVC = SearchViewController()
        searchVC.bindViewModel(to: searchVM)
        searchVC.tabBarItem = TabbarItemType.search.item
        navVC.viewControllers = [searchVC]
        return navVC
    }
    
    private func makePersonal() -> UINavigationController {
        let navVC = BaseNavigationController()
        let personalUseCase = PersonalUseCase()
        let personalNavigator = PersonalNavigator(navigationController: navVC)
        let personalVM = PersonalViewModel(useCase: personalUseCase, navigator: personalNavigator)
        let personalVC = PersonalViewController()
        personalVC.bindViewModel(to: personalVM)
        personalVC.tabBarItem = TabbarItemType.personal.item
        navVC.viewControllers = [personalVC]
        return navVC
    }
}
