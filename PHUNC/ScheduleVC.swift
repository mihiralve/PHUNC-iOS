//
//  ScheduleVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 3/5/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit
import SDWebImage
import WebKit


class ScheduleVC: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var scheduleImg: UIImageView!
    @IBOutlet weak var socialText: UITextView!

    @IBOutlet weak var socialWeb: WKWebView!
    @IBOutlet weak var imgHeight: NSLayoutConstraint!
    @IBOutlet weak var containerHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadSchedule()
    }

    @IBAction func indexChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            loadSchedule()
        case 1:
            loadRooms()
        case 2:
            loadSocial()
        default:
            break
        }
    }
    func loadSchedule(){
        
        socialText.isHidden = true
        socialWeb.isHidden = false
        
        let socialUrl = URL(string: "https://punc.psiada.org/app-schedule/")!
        let socialRequest = URLRequest(url: socialUrl)
        socialWeb.load(socialRequest)
        
    }
    
    func loadRooms(){
        
        socialText.isHidden = true
        socialWeb.isHidden = false
        
        let roomUrl = URL(string: "https://punc.psiada.org/app-rooms/")!
        let roomRequest = URLRequest(url: roomUrl)
        socialWeb.load(roomRequest)

    }
    
    func loadSocial(){
        socialWeb.isHidden = true
        socialText.isHidden = false
        
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
