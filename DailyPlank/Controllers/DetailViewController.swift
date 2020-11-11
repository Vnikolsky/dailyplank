//
//  DetailViewController.swift
//  DailyPlank
//
//  Created by Владислав Никольский on 08.11.2020.
//  Copyright © 2020 Владислав Никольский. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    

    @IBOutlet weak var nameLabel: UILabel!
    
     var detailCollectionView = DetailCollectionView()
     var timerLabel = UILabel()
    var startStopButton = UIButton(title: "Нажмите, чтобы начать", titleColor: .white, backgroundColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), isShadow: true, cornerRadius: 12)
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(startStopButton)
        view.addSubview(detailCollectionView)
        view.addSubview(timerLabel)
        
        
        
        
        
        view.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        
        detailCollectionView.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        startStopButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        timerLabel.text = "0.00"
        timerLabel.font = .systemFont(ofSize: 70, weight: .semibold)
        timerLabel.textColor = .white
        
        startStopButton.titleLabel!.font = .systemFont(ofSize: 18, weight: .light)
        
        
        setupConstraints()
        
        
        
        detailCollectionView.set(cells: DetailModel.fetchImages())
    }
    
    
    
    private func setupConstraints() {
        
        detailCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        detailCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true

        detailCollectionView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        detailCollectionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.55).isActive = true
        
        
        timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timerLabel.topAnchor.constraint(equalTo: detailCollectionView.bottomAnchor, constant: 30).isActive = true
        
        
        startStopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startStopButton.topAnchor.constraint(equalTo: timerLabel.bottomAnchor, constant: 30).isActive = true
        startStopButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.65).isActive = true
        startStopButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        
        
        
        
    }
    
    
    

}
