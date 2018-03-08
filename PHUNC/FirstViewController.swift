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
import ImageSlideshow

class FirstViewController: UIViewController, UIWebViewDelegate {

    
    
    @IBOutlet var webView: UIWebView!
    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var sponsors: ImageSlideshow!
    
    //let sponsorSource = [SDWebImageSource(urlString: "")!, SDWebImageSource(urlString: "")!]
    
    let sponsorSource = [ImageSource(image: #imageLiteral(resourceName: "pla_logo")), ImageSource(image: #imageLiteral(resourceName: "seven_sage")), ImageSource(image: #imageLiteral(resourceName: "seton_hall")), ImageSource(image: #imageLiteral(resourceName: "SIA-logo")), ImageSource(image: #imageLiteral(resourceName: "Schreyer-Logo"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
      
        sponsors.setImageInputs(sponsorSource)
        sponsors.slideshowInterval = 5
        sponsors.pageControlPosition = .hidden
        
        webView = UIWebView(frame: container.bounds)
        webView.delegate = self
        webView.scrollView.bounces = false;
        webView.scrollView.isScrollEnabled = false;

        
        
        let url = URL(string:"http://punc.psiada.org/app-announcements/")
        
        let URLReq = URLRequest(url: url!)
        
        webView.loadRequest(URLReq)
        
        logoImg.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/02/PUNC-logo.png"), placeholderImage:#imageLiteral(resourceName: "Applogo"))
        //logoImg.sd_set
        logoImg.contentMode = .scaleAspectFit
//
//        sponsorLeft.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/12/CGS-logo.png"))
//
//        sponsorRight.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/12/Liberal-Arts.png"))
//
//
        
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

