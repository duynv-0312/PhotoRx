//
//  PhotoViewController.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import UIKit
import RxSwift
import RxCocoa
import Reusable

final class PhotoViewController: UIViewController, Bindable, NibReusable {
    
    @IBOutlet private weak var tableView: UITableView!
    
    var viewModel: PhotoViewModel!
    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        tableView.do {
            $0.rowHeight = 100
            $0.separatorStyle = .none
            $0.register(cellType: ImageCell.self)
        }
    }
    
    func bindViewModel() {
        let input = PhotoViewModel.Input(
            loadTrigger: Driver.just(()),
            selectedTrigger: tableView.rx.itemSelected.asDriver()
        )
        
        let output = viewModel.transform(input,
                                         disposeBag: disposeBag)
        
        output.photos
            .do(onNext: { photos in
                print("Photos to be displayed: \(photos.count) items")
            })
            .drive(tableView.rx.items) { tableView, index, photo in
                let indexPath = IndexPath(item: index, section: 0)
                let cell: ImageCell = tableView.dequeueReusableCell(for: indexPath)
                cell.selectionStyle = .none
                cell.bind(photo: photo)
                return cell
            }
            .disposed(by: disposeBag)
    }
}
