//
//  TimerViewController.swift
//  Animation_Study_2nd
//
//  Created by 이성민 on 2023/04/28.
//

import UIKit

final class TimerViewController: UIViewController {
    
    // MARK: - properties
    
    var score: Int = 0
    
//    private lazy var soptView = UIImageView(image: UIImage(named: "image")).then {
//        let gesture = UIPanGestureRecognizer(target: self,
//                                             action: #selector(didImageViewMoved(_:)))
//        $0.addGestureRecognizer(gesture)
//        $0.isUserInteractionEnabled = true
//    }
    
    
    // MARK: - init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeEnemy()
    }
    
    // MARK: -  set
    
    //make Enemy
    private let topEnemy = UIImageView(image: UIImage(named: "enemy"))
    private let bottomEnemy = UIImageView(image: UIImage(named: "enemy"))
    private let leadingEnemy = UIImageView(image: UIImage(named: "enemy"))
    private let trailingEnemy = UIImageView(image: UIImage(named: "enemy"))
    
    private func makeEnemy() {
        self.view.addSubview(topEnemy)
        self.view.addSubview(bottomEnemy)
        self.view.addSubview(leadingEnemy)
        self.view.addSubview(trailingEnemy)
        
        topEnemy.snp.makeConstraints {
            $0.top.centerX.equalToSuperview()
            $0.width.height.equalTo(50)
        }
        leadingEnemy.snp.makeConstraints {
            $0.leading.centerY.equalToSuperview()
            $0.width.height.equalTo(50)
        }
        trailingEnemy.snp.makeConstraints {
            $0.trailing.centerY.equalToSuperview()
            $0.width.height.equalTo(50)
        }
        bottomEnemy.snp.makeConstraints {
            $0.bottom.centerX.equalToSuperview()
            $0.width.height.equalTo(50)
        }
    }
    
    
}
