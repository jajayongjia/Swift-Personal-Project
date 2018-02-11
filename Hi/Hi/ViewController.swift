//
//  ViewController.swift
//  Hi
//
//  Created by Yongjia Huang on 2018-02-08.
//  Copyright © 2018 Yongjia Huang. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    static func popUp(context ctx: UIViewController, msg: String) {
        
        let toast = UILabel(frame:
            CGRect(x: 16, y: ctx.view.frame.size.height / 2,
                   width: ctx.view.frame.size.width - 32, height: 100))
        
        toast.backgroundColor = UIColor.lightGray
        toast.textColor = UIColor.white
        toast.textAlignment = .center;
        toast.numberOfLines = 3
        toast.font = UIFont.systemFont(ofSize: 20)
        toast.layer.cornerRadius = 12;
        toast.clipsToBounds  =  true
        
        toast.text = msg
        
        ctx.view.addSubview(toast)
        
        UIView.animate(withDuration: 5.0, delay: 0.2,
                       options: .curveEaseOut, animations: {
                        toast.alpha = 0.0
        }, completion: {(isCompleted) in
            toast.removeFromSuperview()
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func yunQiu(_ sender: Any) {
        ViewController.popUp(context: self, msg: "敬请期待！")
    }
    
    


}

