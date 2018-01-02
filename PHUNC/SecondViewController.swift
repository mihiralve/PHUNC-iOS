//
//  SecondViewController.swift
//  PHUNC
//
//  Created by Mihir Alve on 6/15/17.
//  Copyright © 2017 PSIADA. All rights reserved.
//

import UIKit

import SDWebImage

class SecondViewController: UIViewController {

    @IBOutlet weak var scheduleImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scheduleImg.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/01/Schedule.png"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

