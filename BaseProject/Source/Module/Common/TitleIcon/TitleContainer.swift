//
//  TitleContainer.swift
//  ChuangYe
//
//  Created by 小唐 on 2020/8/14.
//  Copyright © 2020 ChainOne. All rights reserved.
//

import UIKit

typealias TitleView = TitleContainer
class TitleContainer: UIView
{

    // MARK: - Internal Property

    let label: UILabel = UILabel()

    let bgView: UIImageView = UIImageView.init()
    let gradientLayer: CAGradientLayer = AppUtil.commonGradientLayer()
    

    // MARK: - Private Property

    // MARK: - Initialize Function

    init() {
        super.init(frame: CGRect.zero)
        self.commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }

    /// 通用初始化
    fileprivate func commonInit() -> Void {
        self.initialUI()
    }

}

// MARK: - Internal Function

// MARK: - Override Function

// MARK: - Private  UI
extension TitleContainer {
    /// 界面布局
    fileprivate func initialUI() -> Void {
        // 0. bg
        self.addSubview(self.bgView)
        self.bgView.set(cornerRadius: 0)
        self.bgView.isHidden = true // 默认隐藏
        self.bgView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        self.layer.insertSublayer(self.gradientLayer, below: nil)
        self.layer.isHidden = true  // 默认隐藏
        // 1. label
        self.addSubview(self.label)
        self.label.set(text: nil, font: UIFont.systemFont(ofSize: 14), textColor: UIColor.darkText)
        self.label.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

}

// MARK: - Private  数据(处理 与 加载)

// MARK: - Private  事件
