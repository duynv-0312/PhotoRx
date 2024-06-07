//
//  PhotoRepository.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

protocol PhotoRepositoryType {
    func getCurated() -> Observable<[Image]>
}

struct PhototRepository: PhotoRepositoryType {
    func getCurated() -> RxSwift.Observable<[Image]> {
        return APIService.shared.request(.curatedPhoto)
            .mapObject(Images.self)
            .asObservable()
            .map {
                $0.photos
            }
    }
}
