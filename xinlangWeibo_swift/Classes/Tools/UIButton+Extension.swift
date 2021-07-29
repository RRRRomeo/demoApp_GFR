//
//  UIButton+Extension.swift
//  xinlangWeibo_swift
//
//  Created by 芝麻汤圆 on 2021/7/29.
//

import UIKit

extension UIButton{
    ///便利构造函数
    convenience init(imageName: String, backIamgeName: String ){
        self.init()
        //设置图片
        setImage(UIImage(named: imageName), for: UIControl.State.normal)
        setImage(UIImage(named: imageName + "_highlighted"), for: UIControl.State.highlighted)
        
        //设置背景图片
        setBackgroundImage(UIImage(named: backIamgeName), for: UIControl.State.normal)
        setBackgroundImage(UIImage(named: backIamgeName + "_highlighted"), for: UIControl.State.highlighted)
        
        //自动适应大小
        sizeToFit()
    }
}
