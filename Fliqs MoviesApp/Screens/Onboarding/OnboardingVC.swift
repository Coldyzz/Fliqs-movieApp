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
    var currentPage = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        slides = [OnboardingSlide(title: "Welcome to Fliqs",
                                  description: "The best movie streaming app of the country to make your days greatfull",
                                  image: UIImage(named: "OnboardingSlide")!),
                  OnboardingSlide(title: "Enjoy Your Movies",
                                  description: "The best movie streaming app of the country to make your days greatfull",
                                  image: UIImage(named: "LaunchLogo")!),
                  OnboardingSlide(title: "Enjoy Your Movies",
                                  description: "The best movie streaming app of the country to make your days greatfull",
                                  image: UIImage(named: "OnboardingSlide")!)]
    }
    @IBAction func getStartedClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SignUpVC", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "signUpVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func skipClicked(_ sender: Any) {
    }
}

extension OnboardingVC: UICollectionViewDelegate,
                        UICollectionViewDataSource,
                        UICollectionViewDelegateFlowLayout {
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width,
                      height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
}
