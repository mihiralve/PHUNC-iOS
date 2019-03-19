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
    @IBOutlet var textView: UITextView!
    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var logoImg: UIImageView!

    @IBOutlet weak var sponsors: ImageSlideshow!
    
    @IBOutlet var Parent: UIView!
    let sponsorSource = [SDWebImageSource(urlString: "https://punc.psiada.org/wp-content/uploads/2019/03/Bush-logo.jpg")!, SDWebImageSource(urlString: "https://punc.psiada.org/wp-content/uploads/2019/03/Public-Policy-PSU-CLA_Roboto-font.png")!, SDWebImageSource(urlString: "https://punc.psiada.org/wp-content/uploads/2018/03/23600769_1758399207567367_1383342331_o-1024x1024-2-copy.png")!, SDWebImageSource(urlString: "https://punc.psiada.org/wp-content/uploads/2018/01/Schreyer-Logo.png")!, SDWebImageSource(urlString: "https://punc.psiada.org/wp-content/uploads/2018/01/pla_logo-1f1uy08.png")!, SDWebImageSource(urlString: "https://punc.psiada.org/wp-content/uploads/2017/11/24259325_1779457425461545_825887776_o.jpg")!,]

//    "https://punc.psiada.org/wp-content/uploads/2019/03/Bush-logo.jpg",
//    "https://punc.psiada.org/wp-content/uploads/2019/03/Public-Policy-PSU-CLA_Roboto-font.png",
//    "https://punc.psiada.org/wp-content/uploads/2018/03/23600769_1758399207567367_1383342331_o-1024x1024-2-copy.png",
//    "https://punc.psiada.org/wp-content/uploads/2018/01/Schreyer-Logo.png",
//    "https://punc.psiada.org/wp-content/uploads/2018/01/pla_logo-1f1uy08.png",
//    "https://punc.psiada.org/wp-content/uploads/2017/11/24259325_1779457425461545_825887776_o.jpg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        sponsors.setImageInputs(sponsorSource)
      
        sponsors.setImageInputs(sponsorSource)
        sponsors.slideshowInterval = 5
        sponsors.pageIndicator = nil
        
        webView = UIWebView(frame: container.bounds)
        webView.delegate = self
        webView.scrollView.bounces = false;
        webView.scrollView.isScrollEnabled = false;

        
        
        let url = URL(string:"https://punc.psiada.org/app-announcements/")
        
        let URLReq = URLRequest(url: url!)
        
        webView.loadRequest(URLReq)
        
        logoImg.sd_setImage(with: URL(string: "https://punc.psiada.org/wp-content/uploads/2018/03/sticker.jpg"), placeholderImage:#imageLiteral(resourceName: "PUNC Logo (No Text)"))

        logoImg.contentMode = .scaleAspectFit

    }
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        webView.isHidden = true
        
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        webView.isHidden = false
        container.addSubview(webView)
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        webView.center.x = Parent.center.x
        webView.isOpaque = false
        webView.clipsToBounds = true
        webView.widthAnchor.constraint(equalToConstant: screenWidth - 16)
         webView.scalesPageToFit = true
//        this has potential but I can't figure it out
//        let result = webView.stringByEvaluatingJavaScript(from: "document.body.offsetHeight;")
//
//        let result_num = CGFloat(NumberFormatter().number(from: result!)!) * 1.5
//
//        print(result_num)
//
//        textView.heightAnchor.constraint(equalToConstant: result_num)
//        webView.heightAnchor.constraint(equalToConstant: result_num)
//        container.heightAnchor.constraint(equalToConstant: result_num)

        
        }
        
    
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

