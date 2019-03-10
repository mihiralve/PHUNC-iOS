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


class ScheduleVC: UIViewController, WKNavigationDelegate, WKUIDelegate{

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var socialText: UITextView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var socialWeb: WKWebView!
    @IBOutlet weak var roomWeb: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        socialWeb.navigationDelegate = self
        socialWeb.uiDelegate = self

        let socialUrl = URL(string: "https://punc.psiada.org/app-schedule/")!
        let socialRequest = URLRequest(url: socialUrl)
        socialWeb.load(socialRequest)
        
        roomWeb.navigationDelegate = self
        roomWeb.uiDelegate = self
        
        let roomUrl = URL(string: "https://punc.psiada.org/app-rooms/")!
        let roomRequest = URLRequest(url: roomUrl)
        roomWeb.load(roomRequest)
        
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
        roomWeb.isHidden = true
        socialWeb.isHidden = false
        
        
        
    }
    
    func loadRooms(){
        
        socialText.isHidden = true
        socialWeb.isHidden = true
        roomWeb.isHidden = false
        
    }
    
    func loadSocial(){
        socialWeb.isHidden = true
        roomWeb.isHidden = true
        socialText.isHidden = false
        activityIndicator.isHidden = true
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        showActivityIndicator(show: false)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        showActivityIndicator(show: true)
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        showActivityIndicator(show: false)
    }
    
    func showActivityIndicator(show: Bool) {
        if show {
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
            activityIndicator.isHidden = true
            
        }
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
