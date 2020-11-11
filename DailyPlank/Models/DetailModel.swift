//
//  DetailImageModel.swift
//  DailyPlank
//
//  Created by Владислав Никольский on 08.11.2020.
//  Copyright © 2020 Владислав Никольский. All rights reserved.
//

import Foundation
import UIKit

struct DetailModel {
    var detailImages: [UIImage]
    var plankName: String
    var description: String
    
    static func fetchImages() -> [DetailModel]{
        let firstItem = DetailModel(detailImages: [#imageLiteral(resourceName: "female-placeholder"), #imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "placeholder_large_dark")], plankName: "Классика", description: "Классическая планка поможет начинающим заниматься подготовить мышцы спины, груди и рук.")
        let secondItem = DetailModel(detailImages: [#imageLiteral(resourceName: "female-placeholder"), #imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "placeholder_large_dark")], plankName: "Руки вверх", description: "Не забывай дышать!")
        let thirdItem = DetailModel(detailImages: [#imageLiteral(resourceName: "female-placeholder"), #imageLiteral(resourceName: "images"), #imageLiteral(resourceName: "placeholder_large_dark")], plankName: "Здравствуйте", description: "Держи спину ровно!")
        return [firstItem, secondItem, thirdItem]
    }
}

struct DetailConstants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) 
}
