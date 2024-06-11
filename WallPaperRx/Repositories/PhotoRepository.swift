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
            .do(onSuccess: { response in
                print("API Response received: \(response)")
            })
            .mapObject(Images.self)
        
            .asObservable()
            .map {
                $0.photos
            }
            .do(onNext: { photos in
                print("Final Photos: \(photos.count) items")
            })
    }
}
