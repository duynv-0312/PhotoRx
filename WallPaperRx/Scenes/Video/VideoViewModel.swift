//
//  VideoViewModel.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

struct VideoViewModel {
    let useCase: VideoUseCaseType
    let navigator: VideoNavigatorType
}

extension VideoViewModel: ViewModelType {
    
    struct Input {
        
    }
    
    struct Output {
        
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        return Output()
    }
}
