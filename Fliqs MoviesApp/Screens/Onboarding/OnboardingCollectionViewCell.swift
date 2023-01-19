//
//  OnboardingCollectionViewCell.swift
//  Fliqs MoviesApp
//
//  Created by Дима Холод on 19.01.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    func setup(_ slide: OnboardingSlide){
        slideImage.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
}
