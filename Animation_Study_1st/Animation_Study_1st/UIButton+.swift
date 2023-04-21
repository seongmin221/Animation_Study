//
//  UIButton+.swift
//  Animation_Study_1st
//
//  Created by 이성민 on 2023/04/21.
//

import UIKit

import SnapKit

extension UIButton {
    func shakeButton() {
        UIView.animateKeyframes(withDuration: 0.3, delay: 0) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/2) {
                self.transform = CGAffineTransform(translationX: 0, y: 20)
            }
            UIView.addKeyframe(withRelativeStartTime: 1/2, relativeDuration: 1/2) {
                self.transform = .identity
            }
        }
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.1,
                       initialSpringVelocity: 1,
                       options: [.curveEaseInOut]) {
            self.transform = .identity
        }
    }
}
