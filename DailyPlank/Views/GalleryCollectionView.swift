//
//  CollectionViewLayout.swift
//  DailyPlank
//
//  Created by Владислав Никольский on 07.11.2020.
//  Copyright © 2020 Владислав Никольский. All rights reserved.
//

import UIKit



class GalleryCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [PlankModel]()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
            super.init(frame: .zero, collectionViewLayout: layout)

            backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
            delegate = self
            dataSource = self
            register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.reuseId)

            translatesAutoresizingMaskIntoConstraints = false
            layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
            contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
            clipsToBounds = false
            showsVerticalScrollIndicator = false
            showsHorizontalScrollIndicator = false
    }

    
    func set(cells: [PlankModel]) {
        self.cells = cells
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.galleryItemWidth, height: frame.height * 0.8)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.reuseId, for: indexPath) as! GalleryCollectionViewCell
        cell.mainImageView.image = cells[indexPath.row].mainImage
        cell.difficultyLabel.text = cells[indexPath.row].difficultyMode
        cell.plankNameLabel.text = cells[indexPath.row].plankName
        cell.smallDescriptionLabel.text = cells[indexPath.row].smallDescription
        return cell
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
