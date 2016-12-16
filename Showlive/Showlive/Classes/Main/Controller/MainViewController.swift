//
//  MainViewController.swift
//  Showlive
//
//  Created by LPGuo on 2016/12/16.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 1. 通过 Storyboard获取控制器
        addChild(name: "Home")
        addChild(name: "Live")
        addChild(name: "Follow")
        addChild(name: "Profile")
        
    }
    
    
    private func addChild(name: String) {
        
        let childVc = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVc)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
