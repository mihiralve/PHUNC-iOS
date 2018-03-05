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


    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        loadSchedule()
        
    }
    @IBAction func indexChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            loadSchedule()
        case 1:
            loadRooms()
        default:
            break
        }
        
    }
    
    func loadSchedule(){
//        scrollView.heightAnchor.constraint(equalToConstant: 1100).isActive = false
//        container.heightAnchor.constraint(equalToConstant: 1100).isActive = false
//        scheduleImg.heightAnchor.constraint(equalToConstant: 1100).isActive = false
//
//        scrollView.heightAnchor.constraint(equalToConstant: 1740).isActive = true
//        container.heightAnchor.constraint(equalToConstant: 1740).isActive = true
//        scheduleImg.heightAnchor.constraint(equalToConstant: 1740).isActive = true
//        imgHeight.constant = 1727
//        containerHeight.constant = 1727
//        scrollHeight.constant = 1727
//
        scheduleImg.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/PUNCschedule.png"))
        scheduleImg.contentMode = .scaleAspectFit
    }
    
    func loadRooms(){
//        scrollView.heightAnchor.constraint(equalToConstant: 1740).isActive = false
//        container.heightAnchor.constraint(equalToConstant: 1740).isActive = false
//        scheduleImg.heightAnchor.constraint(equalToConstant: 1740).isActive = false
//
//        scrollView.heightAnchor.constraint(equalToConstant: 1100).isActive = true
//        container.heightAnchor.constraint(equalToConstant: 1100).isActive = true
//        scheduleImg.heightAnchor.constraint(equalToConstant: 1100).isActive = true
        
//        imgHeight.constant = 1100
//        containerHeight.constant = 1100
//        scrollHeight.constant = 1100
        
        scheduleImg.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/room_Assignments.png"))
        scheduleImg.contentMode = .scaleAspectFit
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

