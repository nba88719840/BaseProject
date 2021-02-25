//
//  BaseView.swift
//  ProjectTemplate-Swift
//
//  Created by 小唐 on 2018/11/27.
//  Copyright © 2018 TangXiaoDe. All rights reserved.
//

import UIKit


class BaseView: UIView, ChainOneView {
    
    let co: ChainOneViewItemContainer = ChainOneViewItemContainer.init()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initialize()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initialize()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        //self.gradientLayer.bounds = self.bounds
        self.co.gradientLayer.bounds = self.bounds
    }
    
    // MARK: - Internal Function

    // MARK: - Custom User Interface
    func initialize() {
        self.coInitial()
    }

}


