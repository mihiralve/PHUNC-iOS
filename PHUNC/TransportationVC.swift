//
//  TransportationVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 2/18/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit
import SDWebImage

class TransportationVC: UIViewController, UIWebViewDelegate, UIScrollViewDelegate {

    @IBOutlet weak var mapView: UIScrollView!
    @IBOutlet weak var mapPic: UIImageView!
    @IBOutlet weak var loc1: UITextView!
    @IBOutlet weak var loc2: UITextView!
    @IBOutlet weak var loc3: UITextView!
    @IBOutlet weak var loc4: UITextView!
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view.
        self.navigationController!.navigationBar.isTranslucent = false
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        mapPic.sd_setImage(with: URL(string:"https://phunc.psiada.org/wp-content/uploads/2018/10/campus-map.jpg"))
        mapPic.contentMode = .scaleAspectFit
        mapView.minimumZoomScale = 1.0;
        mapView.maximumZoomScale = 6.0;
        mapView.contentSize = mapPic.frame.size;
        mapView.delegate = self;
        mapView.heightAnchor.constraint(equalToConstant: screenWidth)
        
        let locLink1 = NSMutableAttributedString(string: loc1.text)
        locLink1.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/3qaCPkPKb1w", range: NSMakeRange(0, loc1.text.count))
        loc1.attributedText = locLink1
        loc1.dataDetectorTypes = .link
        loc1.isEditable = false
        loc1.isScrollEnabled = false
        loc1.font = loc1.font?.withSize(16)
        
        let locLink2 = NSMutableAttributedString(string: loc2.text)
        locLink2.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/Mk1xcLb3BzE2", range: NSMakeRange(0, loc2.text.count))
        loc2.attributedText = locLink2
        loc2.dataDetectorTypes = .link
        loc2.isEditable = false
        loc2.isScrollEnabled = false
        loc2.font = loc2.font?.withSize(16)
        
        let locLink3 = NSMutableAttributedString(string: loc3.text)
        locLink3.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/f9KAmjtqpCC2", range: NSMakeRange(0, loc3.text.count))
        loc3.attributedText = locLink3
        loc3.dataDetectorTypes = .link
        loc3.isEditable = false
        loc3.isScrollEnabled = false
        loc3.font = loc3.font?.withSize(16)
        
        let locLink4 = NSMutableAttributedString(string: loc4.text)
        locLink4.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/2VMprkrE94o", range: NSMakeRange(0, loc4.text.count))
        loc4.attributedText = locLink4
        loc4.dataDetectorTypes = .link
        loc4.isEditable = false
        loc4.isScrollEnabled = false
        loc4.font = loc4.font?.withSize(16)
        
    }
    
    func viewForZooming(in mapView: UIScrollView) -> UIView? {
        
        return mapPic
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
