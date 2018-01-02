//
//  FirstViewController.swift
//  PHUNC
//
//  Created by Mihir Alve on 6/15/17.
//  Copyright © 2017 PSIADA. All rights reserved.
//

import UIKit
import WebKit
import SDWebImage

class FirstViewController: UIViewController, UIWebViewDelegate {

    
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var sponsorLeft: UIImageView!
   
    @IBOutlet weak var sponsorRight: UIImageView!
    
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
        
        logoImg.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/12/phunc_v_logo2.png"))
        
        sponsorLeft.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/12/CGS-logo.png"))
        
        sponsorRight.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/12/Liberal-Arts.png"))
        
        
        
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

