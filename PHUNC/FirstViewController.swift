//
//  FirstViewController.swift
//  PHUNC
//
//  Created by Mihir Alve on 6/15/17.
//  Copyright © 2017 PSIADA. All rights reserved.
//

import UIKit
import WebKit

class FirstViewController: UIViewController, UIWebViewDelegate {

    
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet weak var container: UIView!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
      
        
        
        
        webView = UIWebView(frame: container.bounds)
        webView.delegate = self
        webView.scrollView.bounces = false;
        webView.scrollView.isScrollEnabled = false;

        
        
        let url = URL(string:"http://phunc.psiada.org/2669-2/")
        
        let URLReq = URLRequest(url: url!)
        
        webView.loadRequest(URLReq)
        
        
        
        
        
    }
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        webView.isHidden = true
        
        
        
        
        
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webView.isHidden = false
        container.addSubview(webView)
        
    
        
        
        
    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

