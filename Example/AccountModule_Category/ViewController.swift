//
//  ViewController.swift
//  AccountModule_Category
//
//  Created by xiaolangshou@foxmail.com on 10/06/2020.
//  Copyright (c) 2020 xiaolangshou@foxmail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let btn = UIButton.init(frame: CGRect.init(x: 10, y: 90, width: 100, height: 60))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(btn)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(btnTapped), for: UIControlEvents.touchUpInside)
    }
    
    @objc func btnTapped() {
        let vc = CTMediator.init().account_viewControllerForLogin()
        self.view.window?.rootViewController = UINavigationController.init(rootViewController: vc!)
    }
}

