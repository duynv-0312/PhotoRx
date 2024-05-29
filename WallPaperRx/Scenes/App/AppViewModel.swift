//
//  AppViewModel.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

struct AppViewModel {
    let useCase: AppUseCaseType
    let navigator: AppNavigatorType
}

extension AppViewModel: ViewModelType {

    struct Input {
        let loadTrigger: Driver<Void>
    }
    
    struct Output {
        
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        
        input.loadTrigger
            .drive(onNext: self.navigator.toTabbar)
            .disposed(by: disposeBag)
        return Output()
    }
}
