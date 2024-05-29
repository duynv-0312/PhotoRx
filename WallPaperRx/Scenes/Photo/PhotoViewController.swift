//
//  PhotoViewController.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import UIKit
import RxSwift
import RxCocoa

final class PhotoViewController: UIViewController, Bindable {
    
    var viewModel: PhotoViewModel!
    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        
    }
    
    func bindViewModel() {
        
    }
}
