//
//  MainViewController.swift
//  xinlangWeibo_swift
//
//  Created by 芝麻汤圆 on 2021/7/29.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()

    }
}

///MARK - 设置界面
extension MainViewController{
    ///添加所有控制器
    private func addChildViewController(vc: UIViewController, title: String, imageName: String ){
        //设置标题 由内之外
        vc.title = title
        //设置图像
        vc.tabBarItem.image = UIImage(named: imageName)
        //导航控制器
        let nav = UINavigationController(rootViewController: vc)
        addChild(nav)
    }
    private func addChildViewControllers(){
        tabBar.tintColor = UIColor.orange
        addChildViewController(vc: HomeTableViewController(), title: "首页", imageName: "imageNormal")
        addChildViewController(vc: DiscoverTableViewController(), title: "发现", imageName: "imageNormal")
        addChild(UIViewController())
        addChildViewController(vc: MessageTableViewController(), title: "消息", imageName: "imageNormal")
        addChildViewController(vc: ProfileTableViewController(), title: "我的", imageName: "imageNormal")
    }
}
