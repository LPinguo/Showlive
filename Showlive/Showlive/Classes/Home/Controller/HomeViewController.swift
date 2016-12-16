//
//  HomeViewController.swift
//  Showlive
//
//  Created by LPGuo on 2016/12/16.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit



private let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {

    // MARK:- 懒加载属性
    fileprivate lazy var titlePageView: TitlePageView = {
    
        let titleFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        
        let titleView = TitlePageView(frame: titleFrame, titles: titles)
        
        return titleView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        setupUI()
    
    }

    
}
// MARK: - UI界面设置
extension HomeViewController {

    
    func setupUI() {
    
        // 1. 设置导航栏
        setupNavgationBar()
        
        // 2. 添加titleView
        setupTitleView()
    }
    
    
    private func setupNavgationBar() {
    
        // 1. 设置 左侧 item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo_66x26_")
        
        // 2. 设置 右侧 items
        let size = CGSize(width: 40, height: 40)
        
        let historyBtn = UIBarButtonItem(imageName: "image_my_history_22x22_", hightImageName: "Image_my_history_click_22x22_", size: size)
        let searchBtn = UIBarButtonItem(imageName: "btn_search_22x22_", hightImageName: "btn_search_clicked_22x22_", size: size)
        let qrcodeBtn = UIBarButtonItem(imageName: "Image_scan_22x22_", hightImageName: "Image_scan_click_22x22_", size: size)
        
        
        navigationItem.rightBarButtonItems = [historyBtn,searchBtn ,qrcodeBtn]
        
    
    }
    
    private func setupTitleView() {
    
        view.addSubview(titlePageView)
    }
}
