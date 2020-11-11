//
//  DetailCollectionView.swift
//  DailyPlank
//
//  Created by Владислав Никольский on 08.11.2020.
//  Copyright © 2020 Владислав Никольский. All rights reserved.
//

import UIKit

  

  class DetailCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
        var cells = [DetailModel]()
    
        func set(cells: [DetailModel]) {
            self.cells = cells
        }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            super.init(frame: .zero, collectionViewLayout: layout)

            backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            delegate = self
            dataSource = self
            register(DetailCollectionViewCell.self, forCellWithReuseIdentifier: DetailCollectionViewCell.reuseId)

            translatesAutoresizingMaskIntoConstraints = false
            layout.minimumLineSpacing = 25
            contentInset = UIEdgeInsets(top: 0, left: DetailConstants.leftDistanceToView, bottom: 0, right: DetailConstants.rightDistanceToView)
            clipsToBounds = false
    
            showsVerticalScrollIndicator = false
            showsHorizontalScrollIndicator = false
    }


        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return cells.count
        }
        
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: DetailConstants.galleryItemWidth, height: frame.height * 0.96)
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = dequeueReusableCell(withReuseIdentifier: DetailCollectionViewCell.reuseId, for: indexPath) as! DetailCollectionViewCell
            cell.mainImageView.image = #imageLiteral(resourceName: "placeholder_large_dark")
            cell.descriptionLabel.text = cells[indexPath.row].description
            
            return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        print("worked")
    }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }



