//
//  UIViewController+Extension.swift
//  BaseProject
//
//  Created by 小唐 on 2020/11/30.
//  Copyright © 2020 ChainOne. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController
{
    var topVC: UIViewController {
        var topVC: UIViewController = self
        if let presendVC = self.presentedViewController {
            topVC = presendVC
        } else if let tabVC = self as? UITabBarController, let selectedVC = tabVC.selectedViewController {
            topVC = selectedVC.topVC
        } else if let navVC = self as? UINavigationController, let lastVC = navVC.children.last {
            topVC = lastVC
        }
        return topVC
    }

}
