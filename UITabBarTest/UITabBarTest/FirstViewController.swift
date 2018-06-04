//
//  FirstViewController.swift
//  UITabBarTest
//
//  Created by lidang on 2018/3/26.
//  Copyright © 2018年 lidang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
        self.title = "Item1"
        self.tabBarItem.image = UIImage(named: "Tab1")
        
        let label = UILabel(frame: CGRect(x: 40, y: 150, width: 240, height: 44))
        label.text = "第一页"
        label.backgroundColor = UIColor.blue
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name: "Arial", size: 36)
        self.view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 40, y: 220, width: 240, height: 44))
        button.setTitle("进入第二页", for: UIControlState())
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(FirstViewController.enterPage2), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func enterPage2()
    {
        self.tabBarController?.selectedIndex = 1
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
