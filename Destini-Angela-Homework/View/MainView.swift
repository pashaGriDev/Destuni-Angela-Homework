//
//  MainView.swift
//  Destini-Angela-Homework
//
//  Created by Павел Грицков on 29.01.23.
//

import UIKit

class MainView: UIView {
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "background")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let choiceButtons: [ChoiceButton] = []
    
    init() {
        super.init(frame: .zero)
        
        self.addSubview(backgroundImageView)
        
        setConstraint()
        
        
    }
    
    private func setConstraint() {
        
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: self.topAnchor),
            backgroundImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            backgroundImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
