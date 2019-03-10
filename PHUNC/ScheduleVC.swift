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
        scheduleImg.isHidden = true
        socialWeb.isHidden = false
        
        scrollView.pinchGestureRecognizer?.isEnabled = true;
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height:
            1), animated: false)
        scrollView.zoomScale = 1.0;
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
//        imgHeight.constant = (screenWidth - 24) * 1.75
//        containerHeight.constant = (screenWidth - 24) * 1.75
//
////        scheduleImg.setShowActivityIndicator(true)
////        scheduleImg.setIndicatorStyle(.gray)
//
//
//        scheduleImg.sd_setImage(with: URL(string: "https://phunc.psiada.org/wp-content/uploads/2018/01/Schedule.png"), placeholderImage: #imageLiteral(resourceName: "Blank_button.svg"), options:.refreshCached)
//        scheduleImg.contentMode = .scaleAspectFit
//        scheduleImg.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
//        scrollView.minimumZoomScale = 1.0;
//        scrollView.maximumZoomScale = 6.0;
//        scrollView.contentSize = scheduleImg.frame.size
//        scrollView.delegate = self
//        scheduleImg.isHidden = false
        let socialUrl = URL(string: "https://punc.psiada.org/app-schedule/")!
        let socialRequest = URLRequest(url: socialUrl)
        socialWeb.load(socialRequest)
        
    }
    
    func loadRooms(){
        
        socialText.isHidden = true
        socialWeb.isHidden = true
        
        scrollView.pinchGestureRecognizer?.isEnabled = true;
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height:
            1), animated: false)
        scrollView.zoomScale = 1.0;
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        imgHeight.constant = (screenWidth - 24) * 2.4
        containerHeight.constant = (screenWidth - 24) * 2.4
        
//        scheduleImg.setShowActivityIndicator(true)
//        scheduleImg.setIndicatorStyle(.gray)
//        
        scheduleImg.sd_setImage(with: URL(string: "https://phunc.psiada.org/wp-content/uploads/2018/10/Room-Assignments.png"), placeholderImage: #imageLiteral(resourceName: "Blank_button.svg"), options:.refreshCached)
        scheduleImg.contentMode = .scaleAspectFit
        scheduleImg.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        scrollView.minimumZoomScale = 1.0;
        scrollView.maximumZoomScale = 3.0;
        scrollView.contentSize = scheduleImg.frame.size
        scrollView.delegate = self
        scheduleImg.isHidden = false

    }
    
    func loadSocial(){
        socialWeb.isHidden = true
        
        scrollView.pinchGestureRecognizer?.isEnabled = false;
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height:
            1), animated: false)
        scrollView.zoomScale = 1.0;
        scrollView.minimumZoomScale = 1.0;
        scrollView.maximumZoomScale = 3.0;
        socialText.isHidden = false
        scheduleImg.isHidden = true
        scrollView.isHidden = false
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        scheduleImg.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = false
        scrollView.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        scrollView.contentSize = socialText.frame.size
        scrollView.delegate = self
        
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return scheduleImg
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
