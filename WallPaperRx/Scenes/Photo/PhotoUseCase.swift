//
//  PhotoUseCase.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

protocol PhotoUseCaseType {
    func getCurated() -> Observable<[Image]>
}

struct PhotoUseCase: PhotoUseCaseType {
    var photoRepository: PhotoRepositoryType
    
    func getCurated() -> Observable<[Image]> {
        return photoRepository.getCurated()
    }
}
