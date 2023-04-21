//
//  UIView+.swift
//  Animation_Study_1st
//
//  Created by 이성민 on 2023/04/21.
//

import UIKit

import SnapKit

extension UIViewController {
    
    func showToast() {
        lazy var toastView = UIView()
        toastView.backgroundColor = .systemBlue
        toastView.alpha = 0
        lazy var titleLabel = UILabel()
        titleLabel.text = "test"
        titleLabel.textColor = .white
        
        self.view.addSubview(toastView)
        toastView.addSubview(titleLabel)
        
        toastView.frame = .init(origin: .init(x: (UIScreen.main.bounds.width - 200) / 2, y: 100), size: .init(width: 200, height: 100))
        titleLabel.frame = .init(origin: .init(x: 40, y: 20), size: .init(width: 120, height: 60))
        
        UIView.animateKeyframes(withDuration: 0.8, delay: 0) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/6) {
                toastView.alpha = 1
            }
            UIView.addKeyframe(withRelativeStartTime: 1/2, relativeDuration: 1/2) {
                toastView.alpha = 0
            }
        } completion: { _ in
            toastView.removeFromSuperview()
        }
    }
    
    
    
}
