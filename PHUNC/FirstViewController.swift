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
    @IBOutlet weak var webViewWidth: NSLayoutConstraint!
    let sponsorSource = [SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2017/12/CGS-logo.png")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/O_lSUAaA_400x400.jpg")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/c6IsO5zb_400x400.jpg")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/psu-agsciences-logo.png")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/German_Header_Responsive_stacked-2.png")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/logo_sia_retina.png")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/Rock-Ethics-Wordmark-1.png")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/PSUIST.png")!, SDWebImageSource(urlString: "https://phunc.psiada.org/wp-content/uploads/2018/10/psu_bwo_rgb_2c_3x_1.png")!,]
    
    //let sponsorSource = [ImageSource(image: #imageLiteral(resourceName: "pla_logo")), ImageSource(image: #imageLiteral(resourceName: "seven_sage")), ImageSource(image: #imageLiteral(resourceName: "seton_hall")), ImageSource(image: #imageLiteral(resourceName: "SIA-logo")), ImageSource(image: #imageLiteral(resourceName: "Schreyer-Logo"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
      
        sponsors.setImageInputs(sponsorSource)
        sponsors.slideshowInterval = 5
        sponsors.pageIndicator = nil
        
        webView = UIWebView(frame: container.bounds)
        webView.delegate = self
        webView.scrollView.bounces = false;
        webView.scrollView.isScrollEnabled = false;

        
        
        let url = URL(string:"https://phunc.psiada.org/app-announcements/")
        
        let URLReq = URLRequest(url: url!)
        
        webView.loadRequest(URLReq)
        
        logoImg.sd_setImage(with: URL(string: "https://phunc.psiada.org/wp-content/uploads/2018/03/final-logo--300x300.png"), placeholderImage:#imageLiteral(resourceName: "Applogo"))

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

