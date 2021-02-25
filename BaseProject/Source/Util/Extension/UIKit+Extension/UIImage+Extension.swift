//
//  UIImage+Extension.swift
//  BaseProject
//
//  Created by 小唐 on 2019/7/13.
//  Copyright © 2019 ChainOne. All rights reserved.
//
//  UIImage的扩展

import Foundation
import UIKit


extension UIImage {

    /// 根据坐标获取图片中的像素颜色值
    subscript (x: Int, y: Int) -> UIColor? {
        guard let provider = self.cgImage?.dataProvider, let providerData = provider.data, let data = CFDataGetBytePtr(providerData) else {
            return nil
        }
        if x < 0 || x > Int(size.width) || y < 0 || y > Int(size.height) {
            return nil
        }
        //
        let numberOfComponents = 4
        let pixelData = ((Int(size.width) * y) + x) * numberOfComponents
        //
        let r = CGFloat(data[pixelData + 0]) / 255.0
        let g = CGFloat(data[pixelData + 1]) / 255.0
        let b = CGFloat(data[pixelData + 2]) / 255.0
        let a = CGFloat(data[pixelData + 3]) / 255.0
        
        return UIColor.init(red: r, green: g, blue: b, alpha: a)
    }
    ///
    func getColor(at point: CGPoint) -> UIColor? {
        return self[Int(point.x), Int(point.y)]
    }

}
