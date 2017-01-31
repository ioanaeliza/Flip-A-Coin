//
//  UIViewExtensions.swift
//  Flip a Coin
//
//  Created by mac on 30/01/2017.
//  Copyright © 2017 Ioana Marian. All rights reserved.
//

import UIKit

extension UIView {
    func rotate360Degrees(_ duration: CFTimeInterval = 0.15, completionDelegate: AnyObject? = nil)
    {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = duration
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate as? CAAnimationDelegate
        }
        self.layer.add(rotateAnimation, forKey: nil)
    }
}

