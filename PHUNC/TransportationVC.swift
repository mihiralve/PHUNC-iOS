//
//  TransportationVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 2/18/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit

class TransportationVC: UIViewController, UIWebViewDelegate{

    @IBOutlet var busRoutes: UITextView!
    
    @IBOutlet var webView: UIWebView!

    @IBOutlet var container: UIView!
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view.
        self.navigationController!.navigationBar.isTranslucent = false
        
        webView = UIWebView(frame: container.bounds)
        webView.delegate = self
        
        let url = URL(string:"http://realtime.catabus.com/InfoPoint/?mobile=True#route_page")
        
        let URLReq = URLRequest(url: url!)
        
        webView.loadRequest(URLReq)
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        webView.isHidden = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webView.isHidden = false
        view.addSubview(webView)
        
        let scrollPoint = CGPoint(x: 0, y: webView.scrollView.contentSize.height - webView.frame.size.height)
        webView.scrollView.setContentOffset(scrollPoint, animated: true)
        
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
