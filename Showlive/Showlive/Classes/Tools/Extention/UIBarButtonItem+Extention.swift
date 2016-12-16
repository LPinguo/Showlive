//
//  UIBarButtonItem+Extention.swift
//  Showlive
//
//  Created by LPGuo on 2016/12/16.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit


extension UIBarButtonItem {

    // 类方法 不建议使用
//    class func createItem(imageName: String, hightImageName: String, size: CGSize) -> UIBarButtonItem {
//    
//        let btn = UIButton()
//        
//        btn.setImage(UIImage(named:imageName ), for: UIControlState.init(rawValue: 0))
//        btn.setImage(UIImage(named:hightImageName ), for: .highlighted)
//        btn.frame.size = size
//        
//        return  UIBarButtonItem.init(customView: btn)
//    }
    
    // 建议使用 构造函数 使用最多遍历构造
    //
    convenience  init(imageName: String, hightImageName: String = "", size: CGSize = CGSize.zero) {
       
        // 创建 btn
        let btn = UIButton()
        btn.setImage(UIImage(named:imageName ), for: UIControlState.init(rawValue: 0))
        if hightImageName != "" {
            
            btn.setImage(UIImage(named:hightImageName ), for: .highlighted)
        }
        
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        self.init(customView:btn)
        
    }
    
}
