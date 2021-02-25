//
//  ChainOneView.swift
//  BaseProject
//
//  Created by 小唐 on 2021/2/25.
//  Copyright © 2021 ChainOne. All rights reserved.
//

import Foundation


struct ChainOneViewItemContainer {
    
    ///
    enum LineType {
        case top
        case bottom
        case left
        case right
        case hor
        case ver
    }

    
    /// bg
    let bgView: UIImageView = UIImageView.init()
    let gradientLayer: CAGradientLayer = AppUtil.commonGradientLayer()

    /// lines
    let topLine: UIView = UIView.init()
    let bottomLine: UIView = UIView.init()
    let leftLine: UIView = UIView.init()
    let rightLine: UIView = UIView.init()
    let horLine: UIView = UIView.init()
    let verLine: UIView = UIView.init()

    
    ///
    func line(with type: ChainOneViewItemContainer.LineType) -> UIView {
        var line: UIView
        switch type {
        case .top:
            line = self.topLine
        case .bottom:
            line = self.bottomLine
        case .left:
            line = self.leftLine
        case .right:
            line = self.rightLine
        case .hor:
            line = self.horLine
        case .ver:
            line = self.verLine
        }
        return line
    }
    
}


protocol ChainOneView: UIView {
    
    var co: ChainOneViewItemContainer { get }
    
    var showCoBottomLine: Bool { get set}

    
    func coInitial(lineColor: UIColor, lineWidth: CGFloat) -> Void

}
extension ChainOneView {

    var showCoBottomLine: Bool {
        set {
            self.co.bottomLine.isHidden = !showCoBottomLine
            self.bringSubviewToFront(self.co.bottomLine)
        }
        get {
            return self.co.bottomLine.isHidden
        }
    }
    
    
    func coInitial(lineColor: UIColor = AppColor.dividing, lineWidth: CGFloat = 0.5) -> Void {
        //let lineColor: UIColor = AppColor.dividing
        //let lineWidth: CGFloat = 0.5
        // 1. bgView
        //self.insertSubview(self.co.bgView, at: 0)
        self.addSubview(self.co.bgView)
        self.co.bgView.set(cornerRadius: 0)
        self.co.bgView.isHidden = false // 默认隐藏(默认无颜色，自动隐藏不显示)
        self.co.bgView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        // 2. gradientLayer
        self.layer.insertSublayer(self.co.gradientLayer, below: nil)
        self.co.gradientLayer.isHidden = false  // 默认隐藏(默认无大小，自动隐藏不显示)
        // 3. lines
        let lines: [UIView] = [self.co.topLine, self.co.bottomLine, self.co.leftLine, self.co.rightLine, self.co.horLine, self.co.verLine]
        for (_, lineView) in lines.enumerated() {
            self.addSubview(lineView)
            lineView.backgroundColor = lineColor
            lineView.isHidden = true // 默认隐藏
        }
        self.co.topLine.snp.makeConstraints { (make) in
            make.leading.trailing.top.equalToSuperview()
            make.height.equalTo(lineWidth)
        }
        self.co.bottomLine.snp.makeConstraints { (make) in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(lineWidth)
        }
        self.co.leftLine.snp.makeConstraints { (make) in
            make.leading.top.bottom.equalToSuperview()
            make.width.equalTo(lineWidth)
        }
        self.co.rightLine.snp.makeConstraints { (make) in
            make.trailing.top.bottom.equalToSuperview()
            make.width.equalTo(lineWidth)
        }
        self.co.horLine.snp.makeConstraints { (make) in
            make.leading.trailing.centerY.equalToSuperview()
            make.height.equalTo(lineWidth)
        }
        self.co.verLine.snp.makeConstraints { (make) in
            make.top.bottom.centerX.equalToSuperview()
            make.width.equalTo(lineWidth)
        }
    }

}

extension ChainOneView {
    
    ///
    func showLines(types: [ChainOneViewItemContainer.LineType], color: UIColor = AppColor.dividing, width: CGFloat = 0.5) -> Void {
        for type in types {
            self.showLine(type: type, color: color, width: width)
        }
    }
    ///
    func showLine(type: ChainOneViewItemContainer.LineType, color: UIColor = AppColor.dividing, width: CGFloat = 0.5) -> Void {
        let line = self.co.line(with: type)
        line.backgroundColor = color
        line.isHidden = false
        switch type {
        case .left:
            fallthrough
        case .right:
            fallthrough
        case .ver:
            line.snp.updateConstraints { (make) in
                make.width.equalTo(width)
            }
        case .top:
            fallthrough
        case .bottom:
            fallthrough
        case .hor:
            line.snp.updateConstraints { (make) in
                make.height.equalTo(width)
            }
        }
        self.bringSubviewToFront(line)
        self.layoutIfNeeded()
    }
    
}

