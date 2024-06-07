//
//  ImageCell.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import UIKit
import Reusable
import SDWebImage

final class ImageCell: UITableViewCell, NibReusable {

    @IBOutlet private weak var photoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configView()
    }
    
    private func configView() {
        
    }
    
    func bind(photo: Image) {
        photoImageView.sd_setImage(with: URL(string: photo.source.original))
    }
}
