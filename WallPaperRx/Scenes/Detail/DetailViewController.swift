//
//  DetailViewController.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import UIKit
import RxSwift
import RxCocoa

final class DetailViewController: UIViewController, Bindable {
    
    @IBOutlet private weak var topView: UIView!
    @IBOutlet private weak var backButton: UIButton!
    @IBOutlet private weak var authorNameLabel: UILabel!
    @IBOutlet private weak var favoriteButton: UIButton!
    @IBOutlet private weak var detailImageView: UIImageView!
    @IBOutlet private weak var downloadButton: UIButton!
    @IBOutlet private weak var showInfoButton: UIButton!
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var arowTriangleImageView: UIImageView!
    @IBOutlet private weak var informationView: UIView!
    @IBOutlet private weak var widthImageLabel: UILabel!
    @IBOutlet private weak var heightImageLabel: UILabel!
    @IBOutlet private weak var idImageLabel: UILabel!
    @IBOutlet private weak var colorImageLabel: UILabel!
    @IBOutlet private weak var bottomView: UIView!
    
    var viewModel: DetailViewModel!
    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    private func configView() {
        topView.setGradientBackground(colorTop: UIColor.black.cgColor,
                                      colorBottom: UIColor.clear.cgColor)
        bottomView.setGradientBackground(colorTop: UIColor.clear.cgColor,
                                         colorBottom: UIColor.black.cgColor)
        informationView.layer.cornerRadius = 12
        downloadButton.layer.cornerRadius = 20
        
    }
    
    func bindViewModel() {
        
    }
    
    
    @IBAction func tappedBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
