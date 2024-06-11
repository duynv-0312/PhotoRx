//
//  PhotoCell.swift
//  WallPaperRx
//
//  Created by nguyen.van.duyb on 6/7/24.
//

import UIKit
import Reusable

final class PhotoCell: UICollectionViewCell, NibReusable {

    @IBOutlet private weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configView()
    }
    
    private func configView() {
        
    }

}
