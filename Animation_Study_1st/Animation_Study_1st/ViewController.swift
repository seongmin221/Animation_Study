//
//  ViewController.swift
//  Animation_Study_1st
//
//  Created by 이성민 on 2023/04/21.
//

import UIKit

import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLayout()
        view.backgroundColor = .white
    }
    
    private func setLayout() {
        view.addSubview(imageView)
        imageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(200)
        }
        
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide)
            $0.horizontalEdges.equalToSuperview().inset(40)
            $0.height.equalTo(50)
        }
    }
    
    @objc
    private func buttonTapped() {
//        animateImageView()
//        showToast()
        button.shakeButton()
    }
    
    private func animateImageView() {
//        UIView.animate(withDuration: 0.5) {
//            self.imageView.transform = CGAffineTransform(translationX: -50, y: 0)
//            self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
//        }
        UIView.animateKeyframes(withDuration: 1, delay: 0) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/2) {
                self.imageView.transform = CGAffineTransform(translationX: -50, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 1/2, relativeDuration: 1/2) {
                self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
            }
        }
    }

    private let imageView = UIImageView(image: UIImage(named: "sopt_ios"))
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("눌러", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()

}

