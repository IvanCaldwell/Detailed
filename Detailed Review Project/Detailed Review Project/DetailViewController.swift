//
//  DetailViewController.swift
//  Detailed Review Project
//
//  Created by Ivan Caldwell on 11/27/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailViewImageView: UIImageView!
    @IBOutlet weak var detailViewLabel: UILabel!
    
    var character: Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let character = character else { return }
        detailViewLabel.text = character.rawValue
        let cells = Model.shared.cells(for: character)
        detailViewImageView.animationImages = cells
        detailViewImageView.animationRepeatCount = 0
        detailViewImageView.animationDuration = Double (cells.count) / 15.0
        detailViewImageView.startAnimating()
    }
    
}
