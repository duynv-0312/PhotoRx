//
//  TabbarViewModel.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

struct TabbarViewModel {
    let useCase: TabbarUseCaseType
    let navigator: TabbarNavigatorType
}

extension TabbarViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
    }
    
    struct Output {
        let viewControllers: Driver<[UIViewController]>
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        let viewControllers = input.loadTrigger
            .map { _ in
                return self.navigator.createTabbarControllers()
            }
            .asDriver(onErrorJustReturn: [])
        
        return Output(viewControllers: viewControllers)
    }
}
