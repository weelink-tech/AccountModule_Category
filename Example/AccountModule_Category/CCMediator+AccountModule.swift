//
//  CCMediator+AccountModule.swift
//  AccountModule_Category_Example
//
//  Created by Thomas Lau on 2020/10/6.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

let MediatorTargetAccount = "Account"
let MediatorActionAccountLoginViewController = "nativeLoginViewController"
let MediatorActionAccountLoginStatus = "nativeLoginStatus"
let MediatorActionAccountLoginStatusChangeNotification = "nativeLoginStatusChangeNotificationName"

extension CTMediator {
    ///登陆(presentViewController)
    ///
    func account_viewControllerForLogin() -> UIViewController? {
        let viewController = performTarget(MediatorTargetAccount,
                                           action: MediatorActionAccountLoginViewController,
                                           params: nil,
                                           shouldCacheTarget: false)
        if viewController is UIViewController {
            return viewController as? UIViewController
        } else {
            return UIViewController()
        }
    }

    ///登陆状态
    ///
    func account_statusForLogin() -> Bool {
        return performTarget(MediatorTargetAccount,
                             action: MediatorActionAccountLoginStatus,
                             params: nil,
                             shouldCacheTarget: false) as! Bool
    }
}
