//
//  TitleButtonView.swift
//  ChuangYe
//
//  Created by 小唐 on 2020/8/17.
//  Copyright © 2020 ChainOne. All rights reserved.
//

import UIKit

typealias TitleButtonContainer = TitleButtonView
class TitleButtonView: UIView
{

    // MARK: - Internal Property

    let titleLabel: UILabel = UILabel()
    let button: UIButton = UIButton.init(type: .custom)

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
    func commonInit() -> Void {
        self.initialUI()
    }
}

// MARK: - Internal Function
extension TitleButtonView {

}

// MARK: - Override Function

// MARK: - Private  UI
extension TitleButtonView {
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
        // 1. titleLabel
        self.addSubview(self.titleLabel)
        self.titleLabel.set(text: nil, font: UIFont.systemFont(ofSize: 15), textColor: UIColor.lightGray)
        self.titleLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.top.greaterThanOrEqualToSuperview()
            make.bottom.lessThanOrEqualToSuperview()
        }
        // 2. button
        self.addSubview(self.button)
        self.button.snp.makeConstraints { (make) in
            make.leading.equalTo(self.titleLabel.snp.trailing)
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.greaterThanOrEqualToSuperview()
            make.bottom.lessThanOrEqualToSuperview()
        }
    }

}

// MARK: - Private  数据(处理 与 加载)

// MARK: - Private  事件
