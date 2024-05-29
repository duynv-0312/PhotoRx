//
//  SearchViewModel.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

struct SearchViewModel {
    let useCase: SearchUseCaseType
    let navigator: SearchNavigatorType
}

extension SearchViewModel: ViewModelType {
    
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        return Output()
    }
}
