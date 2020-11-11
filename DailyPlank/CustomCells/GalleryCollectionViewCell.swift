//
//  GalleryCollectionViewCell.swift
//  DailyPlank
//
//  Created by Владислав Никольский on 07.11.2020.
//  Copyright © 2020 Владислав Никольский. All rights reserved.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
            return imageView
    }()
    
    let plankNameLabel: UILabel = {
        let plankLabel = UILabel()
        plankLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        plankLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        plankLabel.translatesAutoresizingMaskIntoConstraints = false
        return plankLabel
    }()
    
    let smallDescriptionLabel: UILabel = {
        let smallDescription = UILabel()
        smallDescription.numberOfLines = 3
        smallDescription.lineBreakMode = .byWordWrapping
        smallDescription.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        smallDescription.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        smallDescription.translatesAutoresizingMaskIntoConstraints = false
        return smallDescription
}()
    
    let difficultyLabel: UILabel = {
            let difficulty = UILabel()
            difficulty.font = UIFont.systemFont(ofSize: 24, weight: .black)
            difficulty.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            difficulty.translatesAutoresizingMaskIntoConstraints = false
            return difficulty
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImageView)
        addSubview(plankNameLabel)
        addSubview(smallDescriptionLabel)
        addSubview(difficultyLabel)
        
        backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2).isActive = true
        
        plankNameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 10).isActive = true
        plankNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        
        smallDescriptionLabel.topAnchor.constraint(equalTo: plankNameLabel.bottomAnchor, constant: 10).isActive = true
        smallDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        smallDescriptionLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2).isActive = true
        
        difficultyLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        difficultyLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 8
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 5, height: 8)
        self.layer.masksToBounds = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
