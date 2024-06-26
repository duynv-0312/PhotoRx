//
//  PhotoViewModel.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

struct PhotoViewModel {
    let useCase: PhotoUseCaseType
    let navigator: PhotoNavigatorType
}

extension PhotoViewModel: ViewModelType {
    
    struct Input {
        let loadTrigger: Driver<Void>
        let selectedTrigger: Driver<IndexPath>
    }
    
    struct Output {
        let photos: Driver<[Image]>
    }
    
    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        
        let photos = input.loadTrigger
            .do(onNext: {
                print("loadTrigger received")
            })
            .flatMapLatest {
                self.useCase.getCurated()
                    .asDriverOnErrorJustComplete()
            }
            .do(onNext: { photos in
                   print("Photos received: \(photos.count) items")
               })
        
        input.selectedTrigger
            .withLatestFrom(photos) { indexPath, photos in
                return photos[indexPath.row]
            }
            .do(onNext: { photo in
                print("Photo selected: \(photo)")
                self.navigator.toDetail(photo)
            })
            .drive()
            .disposed(by: disposeBag)
                
        
        return Output(photos: photos)
    }
}
