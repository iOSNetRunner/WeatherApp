//
//  Extension + UIView.swift
//  WeatherApp
//
//  Created by Dmitrii Galatskii on 12.07.2023.
//

import UIKit

extension UIView {
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.white.cgColor,
                                UIColor.clear.cgColor]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
