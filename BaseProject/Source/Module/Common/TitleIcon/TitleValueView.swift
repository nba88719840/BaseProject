//
//  TitleValueView.swift
//  ChuangYe
//
//  Created by 小唐 on 2020/8/11.
//  Copyright © 2020 ChainOne. All rights reserved.
//

import UIKit

typealias TitleValueContainer = TitleValueView
class TitleValueView: UIView
{

    // MARK: - Internal Property

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

// MARK: - Override Function

// MARK: - Private  UI
extension TitleValueView {
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
        self.titleLabel.set(text: nil, font: UIFont.systemFont(ofSize: 14), textColor: UIColor.darkText)
        self.titleLabel.snp.makeConstraints { (make) in
            make.leading.centerY.equalToSuperview()
            make.top.greaterThanOrEqualToSuperview().offset(0)
            make.bottom.lessThanOrEqualToSuperview().offset(-0)
        }
        // 2. valueLabel
        self.addSubview(self.valueLabel)
        self.valueLabel.set(text: nil, font: UIFont.systemFont(ofSize: 14), textColor: UIColor.lightGray)
        self.valueLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(self.titleLabel.snp.trailing)
            make.centerY.trailing.equalToSuperview()
            make.top.greaterThanOrEqualToSuperview().offset(0)
            make.bottom.lessThanOrEqualToSuperview().offset(-0)
        }
    }

}

// MARK: - Private  数据(处理 与 加载)

// MARK: - Private  事件
