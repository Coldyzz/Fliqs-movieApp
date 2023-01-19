//
//  OnboardingVC.swift
//  Fliqs MoviesApp
//
//  Created by Дима Холод on 16.01.2023.
//

import UIKit

class OnboardingVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    var slides: [OnboardingSlide] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        slides = [OnboardingSlide(title: "Welcome to Fliqs",
                                  description: "The best movie streaming app of the country to make your days greatfull",
                                  image: UIImage(named: "LogoApp")!),
                  OnboardingSlide(title: "Enjoy Your Movies",
                                  description: "The best movie streaming app of the country to make your days greatfull",
                                  image: UIImage(named: "LogoApp")!),
                  OnboardingSlide(title: "Enjoy Your Movies",
                                  description: "The best movie streaming app of the country to make your days greatfull",
                                  image: UIImage(named: "LogoApp")!)]
    }
    @IBAction func getStartedClicked(_ sender: UIButton) {
    }
    @IBAction func skipClicked(_ sender: Any) {
    }
}

extension OnboardingVC: UICollectionViewDelegate,
                        UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "onboardingCollectionViewCell",
                                                      for: indexPath)
        as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
}
