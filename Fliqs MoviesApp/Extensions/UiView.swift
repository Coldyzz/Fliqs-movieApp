//
//  UiView.swift
//  Fliqs MoviesApp
//
//  Created by Дима Холод on 19.01.2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
