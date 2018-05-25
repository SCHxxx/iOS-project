//
//  YQTabBarViewController.swift
//  swiftProject
//
//  Created by 施承皓 on 2018/5/25.
//  Copyright © 2018年 施承皓. All rights reserved.
//

import UIKit

class YQTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.isTranslucent = false
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.tintColor = UIColor.init(red: 89/255.0, green: 66/255.0, blue: 0/255.0, alpha: 1)
        self.tabBar.unselectedItemTintColor = UIColor.init(red: 145/255.0, green: 145/255.0, blue: 145/255.0, alpha: 1)
        self.addSubViewController(subController: YQIndexViewController(), childTitle: "首页", imageName: "首页-未选中", selectedImageName: "首页-选中")
        self.addSubViewController(subController: YQNovelViewController(), childTitle: "小说", imageName: "小说-未选中", selectedImageName: "小说-选中")
        self.addSubViewController(subController: YQCircleViewController(), childTitle: "圈子", imageName: "圈子-未选中", selectedImageName: "圈子-选中")
        self.addSubViewController(subController: YQShelfViewController(), childTitle: "书架", imageName: "书架-未选中", selectedImageName: "书架-选中")
        self.addSubViewController(subController: YQUserViewController(), childTitle: "我的", imageName: "我的-未选中", selectedImageName: "我的-选中")
        
        // Do any additional setup after loading the view.
    }
    
    func addSubViewController(subController: UIViewController, childTitle: String, imageName: String, selectedImageName:String){
        let navigation = UINavigationController.init(rootViewController: subController);
        navigation.navigationBar.tintColor = UIColor.white //item 字体颜色
        navigation.navigationBar.barTintColor = UIColor.init(red: 255/255.0, green: 220/255.0, blue: 82/255.0, alpha: 1)

        subController.tabBarItem.title = childTitle
        subController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        subController.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        self.addChildViewController(navigation)
        
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
