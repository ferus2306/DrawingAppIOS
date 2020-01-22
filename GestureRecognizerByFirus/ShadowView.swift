//
//  ShadowView.swift
//  GestureRecognizerByFirus
//
//  Created by Firus Hanov on 12/1/19.
//  Copyright © 2019 Firus Hanov. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        layer.shadowOpacity = 10
        layer.shadowRadius = 100
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowPath = CGPath(rect: bounds, transform: nil)
    }
}
