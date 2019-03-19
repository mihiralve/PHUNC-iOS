//
//  guideVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 3/4/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit

class guideVC: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.isTranslucent = false
        
        webView = UIWebView(frame: view.bounds)
        webView.delegate = self
        
        
        let url = URL(string:"https://punc.psiada.org/wp-content/plugins/pdfjs-viewer-shortcode/pdfjs/web/viewer.php?file=https://punc.psiada.org/wp-content/uploads/2019/03/PUNC-XII-Conference-Guide-Final-1.pdf&download=true&print=true&openfile=false")
        
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
