//
//  ScheduleVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 3/5/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit
import SDWebImage

class ScheduleVC: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var scheduleImg: UIImageView!
    
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
        default:
            break
        }
    }
    
    func loadSchedule(){
        imgHeight.constant = 1700
        containerHeight.constant = 1728
        scheduleImg.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/PUNCschedule.png"))
        scheduleImg.contentMode = .scaleAspectFit
    }
    
    func loadRooms(){
        imgHeight.constant = 1100
        containerHeight.constant = 1128
        scheduleImg.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/room_Assignments.png"))
        scheduleImg.contentMode = .scaleAspectFit
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
