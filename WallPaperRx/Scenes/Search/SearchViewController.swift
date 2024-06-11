//
//  SearchViewController.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import UIKit
import RxSwift
import RxCocoa

final class SearchViewController: UIViewController, Bindable {
    
    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var noResultLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var viewModel: SearchViewModel!
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
