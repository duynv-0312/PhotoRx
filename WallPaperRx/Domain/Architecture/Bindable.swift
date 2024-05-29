//
//  Bindable.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

public protocol Bindable: AnyObject {
    associatedtype ViewModelType
    
    var disposeBag: DisposeBag { get set }
    var viewModel: ViewModelType! { get set }
    
    func bindViewModel()
}

public extension Bindable where Self: UIViewController {
    func bindViewModel(to model: Self.ViewModelType) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}
