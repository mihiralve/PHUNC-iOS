//
//  contactVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 6/28/17.
//  Copyright © 2017 PSIADA. All rights reserved.
//

import UIKit
import SDWebImage

class contactVC: UIViewController {

    @IBOutlet weak var contact1: UIImageView!
    @IBOutlet weak var contact2: UIImageView!
    @IBOutlet weak var contact3: UIImageView!
    @IBOutlet weak var contact4: UIImageView!
    @IBOutlet weak var groupImage: UIImageView!
    
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var parentStack: UIStackView!
    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var stack2: UIStackView!
    @IBOutlet weak var stack3: UIStackView!
    @IBOutlet weak var stack4: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        parentStack.topAnchor.constraint(equalTo: parentView.topAnchor, constant:60).isActive = true
//        parentStack.bottomAnchor.constraint(equalTo: stack4.bottomAnchor, constant:80).isActive = true
//        parentStack.leftAnchor.constraint(equalTo: parentView.leftAnchor, constant:8).isActive = true
//        parentStack.rightAnchor.constraint(equalTo: parentView.rightAnchor, constant:8).isActive = true
//        
//        let screenSize = UIScreen.main.bounds
//        let screenHeight = screenSize.height - 100
//       
//        let numContacts = 4
//        
//        let size: Double = Double (screenHeight) / Double (numContacts)
//        
//        
//        stack1.topAnchor.constraint(equalTo: parentStack.topAnchor, constant:8).isActive = true
//        stack1.bottomAnchor.constraint(equalTo: stack2.topAnchor, constant:8).isActive = true
////        stack1.heightAnchor.constraint(equalToConstant: CGFloat(size)).isActive = true
//        
//        stack1.layoutMargins = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
//        stack1.isLayoutMarginsRelativeArrangement = true
//
//        stack2.topAnchor.constraint(equalTo: stack1.bottomAnchor, constant:8).isActive = true
//        stack2.bottomAnchor.constraint(equalTo: stack3.topAnchor, constant:8).isActive = true
////        stack2.heightAnchor.constraint(equalToConstant: CGFloat(size)).isActive = true
//        
//        stack2.layoutMargins = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
//        stack2.isLayoutMarginsRelativeArrangement = true
//        
//        stack3.topAnchor.constraint(equalTo: stack2.bottomAnchor, constant:8).isActive = true
//        stack3.bottomAnchor.constraint(equalTo: stack4.topAnchor, constant:8).isActive = true
////        stack3.heightAnchor.constraint(equalToConstant: CGFloat(size)).isActive = true
//        
//        stack3.layoutMargins = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
//        stack3.isLayoutMarginsRelativeArrangement = true
//        
//        stack4.topAnchor.constraint(equalTo: stack3.bottomAnchor, constant:8).isActive = true
//        stack4.bottomAnchor.constraint(equalTo: parentStack.bottomAnchor, constant:8).isActive = true
////        stack4.heightAnchor.constraint(equalToConstant: CGFloat(size)).isActive = true
//        
//        stack4.layoutMargins = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
//        stack4.isLayoutMarginsRelativeArrangement = true
        
        contact1.sd_setImage(with: URL(string:"https://phunc.psiada.org/wp-content/uploads/2018/10/fullsizeoutput_145e-1.jpeg"), placeholderImage:#imageLiteral(resourceName: "Applogo"))
        contact1.contentMode = .scaleAspectFill
        
        contact1.topAnchor.constraint(equalTo: stack1.topAnchor, constant:8).isActive = true
        contact1.leadingAnchor.constraint(equalTo: stack1.leadingAnchor, constant:8).isActive = true
        contact1.bottomAnchor.constraint(equalTo: stack1.bottomAnchor, constant:8).isActive = true
        
        contact2.sd_setImage(with: URL(string:"https://phunc.psiada.org/wp-content/uploads/2018/10/IMGP2944-1.jpg"), placeholderImage:#imageLiteral(resourceName: "Applogo"))
        contact2.contentMode = .scaleAspectFill
        
        contact2.topAnchor.constraint(equalTo: stack2.topAnchor, constant:8).isActive = true
        contact2.bottomAnchor.constraint(equalTo: stack2.bottomAnchor, constant:8).isActive = true
        
        contact3.sd_setImage(with: URL(string:"https://phunc.psiada.org/wp-content/uploads/2018/10/IMGP2969-1.jpg"), placeholderImage:#imageLiteral(resourceName: "Applogo"))
        contact3.contentMode = .scaleAspectFill
        
        contact3.topAnchor.constraint(equalTo: stack3.topAnchor, constant:8).isActive = true
        contact3.bottomAnchor.constraint(equalTo: stack3.bottomAnchor, constant:8).isActive = true
        
        contact4.sd_setImage(with: URL(string:"https://phunc.psiada.org/wp-content/uploads/2018/10/IMGP2952-1.jpg"), placeholderImage:#imageLiteral(resourceName: "Applogo"))
        contact4.contentMode = .scaleAspectFill

        contact4.topAnchor.constraint(equalTo: stack4.topAnchor, constant:8).isActive = true
        contact4.bottomAnchor.constraint(equalTo: stack4.bottomAnchor, constant:8).isActive = true
        
        
        
        
        
        
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
