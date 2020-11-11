//
//  PlankModel.swift
//  DailyPlank
//
//  Created by Владислав Никольский on 07.11.2020.
//  Copyright © 2020 Владислав Никольский. All rights reserved.
//

import UIKit

struct PlankModel {
    
    var mainImage: UIImage
    
    var plankName: String
    var smallDescription: String
    var difficultyMode: String
    
    static func fetchPlank() -> [PlankModel] {
        let firstItem = PlankModel(mainImage: UIImage(#imageLiteral(resourceName: "images")), plankName: "Классика", smallDescription: "Пресс Спина Руки", difficultyMode: "Easy")
        let secondItem = PlankModel(mainImage: UIImage(#imageLiteral(resourceName: "female-placeholder")), plankName: "Опора на локти", smallDescription: "1,2,3", difficultyMode: "Medium")
        let thirdItem = PlankModel(mainImage: UIImage(#imageLiteral(resourceName: "placeholder")), plankName: "Поднятая рука", smallDescription: "1,2,3", difficultyMode: "Hard")
        
        return [firstItem, secondItem, thirdItem]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 1.5
}
