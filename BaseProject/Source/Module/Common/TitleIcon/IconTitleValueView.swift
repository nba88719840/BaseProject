//
//  IconTitleValueView.swift
//  BaseProject
//
//  Created by 小唐 on 2020/11/30.
//  Copyright © 2020 ChainOne. All rights reserved.
//
//  左侧：图标+标题，右侧：值

import UIKit

class IconTitleValueView: UIView
{

    let iconView: UIImageView = UIImageView()
    let titleLabel: UILabel = UILabel()
    let valueLabel: UILabel = UILabel()
    
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

extension IconTitleValueView {

}

// MARK: - Override Function

// MARK: - Private  UI
extension IconTitleValueView {
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
        // 1. icon
        self.addSubview(self.iconView)
        self.iconView.set(cornerRadius: 0)
        self.iconView.snp.makeConstraints { (make) in
            make.leading.centerY.equalToSuperview()
            make.top.greaterThanOrEqualToSuperview().offset(0)
            make.bottom.lessThanOrEqualToSuperview().offset(-0)
        }
        // 2. title
        self.addSubview(self.titleLabel)
        self.titleLabel.set(text: nil, font: UIFont.pingFangSCFont(size: 14), textColor: AppColor.mainText)
        self.titleLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalTo(self.iconView.snp.right).offset(8)
        }
        // 3. value
        self.addSubview(self.valueLabel)
        self.valueLabel.set(text: nil, font: UIFont.pingFangSCFont(size: 16, weight: .medium), textColor: AppColor.mainText)
        self.valueLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview()
        }
    }

}

// MARK: - Private  数据(处理 与 加载)

// MARK: - Private  事件
