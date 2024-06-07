//
//  PhotoNavigator.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

protocol PhotoNavigatorType {
    func toDetail(_ photo: Image)
}

struct PhotoNavigator: PhotoNavigatorType {
    unowned let navigationController: UINavigationController
    
    func toDetail(_ photo: Image) {
        let viewController = DetailViewController()
        let useCase = DetailUseCase()
        let navigator = DetailNavigator(navigationController: navigationController)
        let viewModel = DetailViewModel(useCase: useCase, navigator: navigator)
        viewController.bindViewModel(to: viewModel)
        navigationController.pushViewController(viewController, animated: true)
    }
}
