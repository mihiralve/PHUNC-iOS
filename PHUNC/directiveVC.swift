//
//  directiveVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 6/28/17.
//  Copyright © 2017 PSIADA. All rights reserved.
//

import UIKit

class directiveVC: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.isTranslucent = false
        
        webView = UIWebView(frame: view.bounds)
        webView.delegate = self
        
        let url = URL(string:"https://docs.google.com/viewer?embedded=true&url=http://phunc.psiada.org/wp-content/uploads/2017/05/Directive-Writing-101.pdf")
        
        //let url = URL(string:"http://phunc.psiada.org/wp-content/uploads/2017/05/Directive-Writing-101.pdf")
        
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
