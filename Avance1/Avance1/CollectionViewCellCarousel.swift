//
//  CollectionViewCellCarousel.swift
//  Avance1
//
//  Created by user222909 on 11/16/22.
//

import UIKit

class CollectionViewCellCarousel: UICollectionViewCell {
    // MARK: - SubViews
        
        private lazy var imageView = UIImageView()
        private lazy var textLabel = UILabel()
        
        // MARK: - Properties
        
        static let cellId = "CollectionViewCellCarousel"
        
        // MARK: - Initializer
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupUI()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupUI()
        }
    }

    // MARK: - Setups
    private extension CollectionViewCellCarousel {
        func setupUI() {
            backgroundColor = .clear
            
            addSubview(imageView)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            imageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 24
            
            addSubview(textLabel)
            textLabel.translatesAutoresizingMaskIntoConstraints = false
            textLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
            textLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 0.5).isActive = true
            textLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -0.5).isActive = true
            textLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -0.5).isActive = true
            textLabel.numberOfLines = 0
            textLabel.textAlignment = .center
            textLabel.font = .systemFont(ofSize: 11)
            textLabel.textColor = .white
        }
    }

    // MARK: - Public
    extension CollectionViewCellCarousel {
        public func configure(image: UIImage?, text: String) {
            imageView.image = image
            textLabel.text = text
        }}
