//
//  ViewController.swift
//  WeatherApp
//
//  Created by Dmitrii Galatskii on 12.07.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private lazy var logoImage: UIImageView = {
        let imageView = UIImageView()
        let config = UIImage.SymbolConfiguration.preferringMulticolor()
        let scaleConfig = UIImage.SymbolConfiguration(pointSize: 150)
        let finalConfig = config.applying(scaleConfig)
        
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.image = UIImage(systemName: "cloud.sun.rain.fill",
                                  withConfiguration: finalConfig)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "WeatherApp"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var secondaryTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "a tiny forecast"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var enterButton: UIButton = {
        var buttonConfig = UIButton.Configuration.plain()
        var attributes = AttributeContainer()
        
        attributes.font = .systemFont(ofSize: 30, weight: .ultraLight)
        
        buttonConfig.buttonSize = .large
        buttonConfig.attributedTitle = AttributedString("Enter", attributes: attributes)
        buttonConfig.baseForegroundColor = .white
        
        let button = UIButton(configuration: buttonConfig, primaryAction: UIAction { [unowned self] _ in
            //BUTTON ACTION HERE
        })
        
        
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        view.setGradientBackground()
        setupSubviews(logoImage, titleLabel, secondaryTitleLabel, enterButton)
        setupConstraints()
    }
    
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -180),
                
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                
                secondaryTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                secondaryTitleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
                
                enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                enterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150)
            ]
        )
    }
}

