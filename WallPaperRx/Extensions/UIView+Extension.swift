//
//  UIView+Extension.swift
//  WallPaperRx
//
//  Created by nguyen.van.duyb on 6/7/24.
//

import Foundation
import UIKit

extension UIView {
    func circleView() {
        layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }

    func setGradientBackground(colorTop: CGColor, colorBottom: CGColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
