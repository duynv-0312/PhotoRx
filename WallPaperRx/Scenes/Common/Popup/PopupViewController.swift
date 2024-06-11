//
//  PopupViewController.swift
//  WallPaperRx
//
//  Created by nguyen.van.duyb on 6/7/24.
//

import UIKit

final class PopupViewController: UIViewController {

    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var noticeLabel: UILabel!
    @IBOutlet private weak var closeButton: UIButton!
    
    private var notice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

       configView()
    }

    private func configView() {
        containerView.layer.cornerRadius = 12
    }
    
    override func viewDidLayoutSubviews() {
        self.noticeLabel.text = notice
    }
    
    func bindData(notice: String) {
        self.notice = notice
    }
    
    @IBAction func tappedCloseButton(_ sender: Any) {
        self.view.removeFromSuperview()
    }
}
