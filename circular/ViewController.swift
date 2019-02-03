//
//  ViewController.swift
//  circular
//
//  Created by Ahmed abu elregal on 11/21/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circularProgress: circularProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let cp = circularProgressView(frame: CGRect(x: 10.0, y: 10.0, width: 100.0, height: 100.0))
        
        cp.trackColor = UIColor.red
        cp.progressColor = UIColor.yellow
        cp.tag = 101
        self.view.addSubview(cp)
        cp.center = self.view.center
        
        self.perform(#selector(animateprogress), with: nil, afterDelay: 2.0)
        
//        circularProgress.trackColor = UIColor.white
//        circularProgress.progressColor = UIColor.purple
//        circularProgress.setProgressWithAnimation(duration: 1.0, value: 0.6)
//
    }
    
    @objc func animateprogress()
    {
        let cp = self.view.viewWithTag(101) as! circularProgressView
        cp.setProgressWithAnimation(duration: 1.0, value: 0.7)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

