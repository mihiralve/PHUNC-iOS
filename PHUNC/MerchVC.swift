//
//  MerchVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 3/6/18.
//  Copyright © 2018 PSIADA. All rights reserved.
//

import UIKit

class MerchVC: UIViewController {

    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var merchImg1: UIImageView!
    @IBOutlet weak var merchImg2: UIImageView!
    @IBOutlet weak var merchImg3: UIImageView!
    
    @IBOutlet weak var parentStack: UIStackView!
    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var stack2: UIStackView!
    @IBOutlet weak var stack3: UIStackView!
    @IBOutlet weak var stack4: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        merchImg1.sd_setImage(with: URL(string:"http://punc.psiada.org/wp-content/uploads/2018/03/shot-glass.png"), placeholderImage: #imageLiteral(resourceName: "Applogo"), options:.refreshCached)
        merchImg1.contentMode = .scaleAspectFit
        
        merchImg2.sd_setImage(with: URL(string:"http://punc.psiada.org/wp-content/uploads/2018/03/phone-wallet.jpg"), placeholderImage: #imageLiteral(resourceName: "Applogo"), options:.refreshCached)
        merchImg2.contentMode = .scaleAspectFit
        
        merchImg3.sd_setImage(with: URL(string:"http://punc.psiada.org/wp-content/uploads/2018/03/bottle-opener.jpg"), placeholderImage: #imageLiteral(resourceName: "Applogo"), options:.refreshCached)
        merchImg3.contentMode = .scaleAspectFit
        
        
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
