//
//  ViewController.swift
//  DailyPlank
//
//  Created by Владислав Никольский on 07.11.2020.
//  Copyright © 2020 Владислав Никольский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var galleryCollectionView = GalleryCollectionView()
    
    
    @IBOutlet weak var chooseLabel: UILabel!
    
    @IBAction func goButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBOutlet weak var goButtonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(galleryCollectionView)
        view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        galleryCollectionView.topAnchor.constraint(equalTo: chooseLabel.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.bottomAnchor.constraint(equalTo: goButtonOutlet.topAnchor, constant: 10).isActive = true
        
        
        galleryCollectionView.set(cells: PlankModel.fetchPlank())
        
        
        
    }

    
    
    
}

