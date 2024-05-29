//
//  TabbarViewController.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import UIKit
import RxSwift
import RxCocoa

final class TabbarViewController: UITabBarController, Bindable {
 
    var viewModel: TabbarViewModel!
    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func bindViewModel() {
        let input = TabbarViewModel.Input(loadTrigger: Driver.just(()))
        let output = viewModel.transform(input, disposeBag: disposeBag)
        
        output.viewControllers
            .drive(onNext: { [weak self] viewControllers in
                self?.setViewControllers(viewControllers, animated: true)
            })
            .disposed(by: disposeBag)
    }
}
