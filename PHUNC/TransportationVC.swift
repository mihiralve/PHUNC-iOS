//
//  TransportationVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 2/18/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit

class TransportationVC: UIViewController, UIWebViewDelegate{

//    @IBOutlet var busRoutes: UITextView!
//
//    @IBOutlet weak var webViewHeight: NSLayoutConstraint!
//    @IBOutlet var webView: UIWebView!
//
//    @IBOutlet var container: UIView!
    @IBOutlet weak var loc1: UITextView!
    @IBOutlet weak var loc2: UITextView!
    @IBOutlet weak var loc3: UITextView!
    @IBOutlet weak var loc4: UITextView!
    @IBOutlet weak var routes: UITextView!
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view.
        self.navigationController!.navigationBar.isTranslucent = false
        
//        webView = UIWebView(frame: container.bounds)
//        webView.delegate = self
//
//        let url = URL(string:"http://realtime.catabus.com/InfoPoint/?mobile=True#route_page")
//
//        let URLReq = URLRequest(url: url!)
//
//        webView.loadRequest(URLReq)
        
        let locLink1 = NSMutableAttributedString(string: loc1.text)
        locLink1.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/5T6NXGRMEiH2", range: NSMakeRange(0, loc1.text.count))
        loc1.attributedText = locLink1
        loc1.dataDetectorTypes = .link
        loc1.isEditable = false
        loc1.isScrollEnabled = false
        loc1.font = loc1.font?.withSize(16)
        
        let locLink2 = NSMutableAttributedString(string: loc2.text)
        locLink2.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/MFuUjedDMHS2", range: NSMakeRange(0, loc2.text.count))
        loc2.attributedText = locLink2
        loc2.dataDetectorTypes = .link
        loc2.isEditable = false
        loc2.isScrollEnabled = false
        loc2.font = loc2.font?.withSize(16)
        
        let locLink3 = NSMutableAttributedString(string: loc3.text)
        locLink3.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/8BkYe5v2sv72", range: NSMakeRange(0, loc3.text.count))
        loc3.attributedText = locLink3
        loc3.dataDetectorTypes = .link
        loc3.isEditable = false
        loc3.isScrollEnabled = false
        loc3.font = loc3.font?.withSize(16)
        
        let locLink4 = NSMutableAttributedString(string: loc4.text)
        locLink4.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/KkT742wnkBK2", range: NSMakeRange(0, loc4.text.count))
        loc4.attributedText = locLink4
        loc4.dataDetectorTypes = .link
        loc4.isEditable = false
        loc4.isScrollEnabled = false
        loc4.font = loc4.font?.withSize(16)
        
        let routesLink = NSMutableAttributedString(string: routes.text)
        routesLink.addAttribute(NSLinkAttributeName, value: "http://realtime.catabus.com/InfoPoint/?mobile=True#route_page", range: NSMakeRange(0, routes.text.count))
        routes.attributedText = routesLink
        routes.dataDetectorTypes = .link
        routes.isEditable = false
        routes.isScrollEnabled = false
        routes.font = routes.font?.withSize(16)
        
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
