//
//  RestaurantVC.swift
//  PHUNC
//
//  Created by Mihir Alve on 10/20/17.
//  Copyright © 2017 PSIADA. All rights reserved.
//

import UIKit
import Foundation
import SDWebImage

class RestaurantVC: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        
        let restaurantHeader = UITextView(frame: CGRect(x: 10, y: 10, width: 300, height: 40))
        restaurantHeader.text = "Restaurant Guide"
        restaurantHeader.isScrollEnabled = false
        restaurantHeader.font = UIFont(name: (restaurantHeader.font?.fontName)!, size: 20)
        restaurantHeader.textAlignment = .center
        
        
        
        
        
        let menuImg1 = UIImageView()
        
        menuImg1.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/india_pavillion.jpeg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg1.contentMode = .scaleAspectFill
        menuImg1.translatesAutoresizingMaskIntoConstraints = false
        menuImg1.clipsToBounds = true

        let menu1 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu1.text = "India Pavilion (Indian) 222 E Calder Way"
        menu1.textAlignment = .center
        menu1.isEditable = false
        menu1.isScrollEnabled = false

        
        let menuLink1 = NSMutableAttributedString(string: menu1.text)
        menuLink1.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/ffQeJwYN2tH2", range: NSMakeRange(0, menu1.text.characters.count))
        
        menu1.attributedText = menuLink1
        menu1.dataDetectorTypes = .link
        
        
        
        let menuImg2 = UIImageView()
        
        menuImg2.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/pita_cabana.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        
        menuImg2.contentMode = .scaleAspectFill
        menuImg2.translatesAutoresizingMaskIntoConstraints = false
        menuImg2.clipsToBounds = true
        
    
        let menu2 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu2.text = "Pita Cabana (Middle Eastern) 334 E Calder Way"
        menu2.textAlignment = .center
        menu2.isEditable = false
        menu2.isScrollEnabled = false
        
        let menuLink2 = NSMutableAttributedString(string: menu2.text)
        menuLink2.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/AjWY4baa3Tz", range: NSMakeRange(0, menu2.text.characters.count))
        
        menu2.attributedText = menuLink2
        menu2.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg3 = UIImageView()
        
        menuImg3.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/yallah.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg3.contentMode = .scaleAspectFill
        menuImg3.translatesAutoresizingMaskIntoConstraints = false
        menuImg3.clipsToBounds = true
        
        let menu3 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu3.text = "Yallah Taco (Mexican) 217 McAllister Alley"
        menu3.textAlignment = .center
        menu3.isEditable = false
        menu3.isScrollEnabled = false
        
        let menuLink3 = NSMutableAttributedString(string: menu3.text)
        menuLink3.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/yaVAn26TgAQ2", range: NSMakeRange(0, menu3.text.characters.count))
        
        menu3.attributedText = menuLink3
        menu3.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg4 = UIImageView()
        
        menuImg4.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/cozy_thai.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg4.contentMode = .scaleAspectFill
        menuImg4.translatesAutoresizingMaskIntoConstraints = false
        menuImg4.clipsToBounds = true
    
        let menu4 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu4.text = "Cozy Thai (Thai) 232 S. Allen Street"
        menu4.textAlignment = .center
        menu4.isEditable = false
        menu4.isScrollEnabled = false
        
        let menuLink4 = NSMutableAttributedString(string: menu4.text)
        menuLink4.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/jgdCBbGensD2", range: NSMakeRange(0, menu4.text.characters.count))
        
        menu4.attributedText = menuLink4
        menu4.dataDetectorTypes = .link
        
        
        
        
        let menuImg5 = UIImageView()
        
        menuImg5.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/irvings.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg5.contentMode = .scaleAspectFill
        menuImg5.translatesAutoresizingMaskIntoConstraints = false
        menuImg5.clipsToBounds = true
        
        let menu5 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu5.text = "Irving’s Bagels (Bagels, Sandwiches) 110 E College Ave"
        menu5.textAlignment = .center
        menu5.isEditable = false
        menu5.isScrollEnabled = false
        
        let menuLink5 = NSMutableAttributedString(string: menu5.text)
        menuLink5.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/VSgmQsSmMiG2", range: NSMakeRange(0, menu5.text.characters.count))
        
        menu5.attributedText = menuLink5
        menu5.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg6 = UIImageView()
        
        menuImg6.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/fiddlehead.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg6.contentMode = .scaleAspectFill
        menuImg6.translatesAutoresizingMaskIntoConstraints = false
        menuImg6.clipsToBounds = true
    
        let menu6 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu6.text = "Fiddlehead (Salads) 134 W College Ave"
        menu6.textAlignment = .center
        menu6.isEditable = false
        menu6.isScrollEnabled = false
        
        let menuLink6 = NSMutableAttributedString(string: menu6.text)
        menuLink6.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/n4e5QDVfMir", range: NSMakeRange(0, menu6.text.characters.count))
        
        menu6.attributedText = menuLink6
        menu6.dataDetectorTypes = .link
        
        
        
        
        
        
        
        let menuImg7 = UIImageView()
        
        menuImg7.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/bagel_crust.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg7.contentMode = .scaleAspectFill
        menuImg7.translatesAutoresizingMaskIntoConstraints = false
        menuImg7.clipsToBounds = true
        
        let menu7 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu7.text = "Bagel Crust (Bagels, Sandwiches) 332 E Calder Way"
        menu7.textAlignment = .center
        menu7.isEditable = false
        menu7.isScrollEnabled = false
        
        let menuLink7 = NSMutableAttributedString(string: menu7.text)
        menuLink7.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/zuCgvtysfuJ2", range: NSMakeRange(0, menu7.text.characters.count))
        
        menu7.attributedText = menuLink7
        menu7.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg8 = UIImageView()
        
        menuImg8.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/little_szechuan.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg8.contentMode = .scaleAspectFill
        menuImg8.translatesAutoresizingMaskIntoConstraints = false
        menuImg8.clipsToBounds = true
        
        let menu8 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu8.text = "Little Szechuan (Chinese) 228 W College Ave"
        menu8.textAlignment = .center
        menu8.isEditable = false
        menu8.isScrollEnabled = false
        
        let menuLink8 = NSMutableAttributedString(string: menu8.text)
        menuLink8.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/fsmPxsKVVYu", range: NSMakeRange(0, menu8.text.characters.count))
        
        menu8.attributedText = menuLink8
        menu8.dataDetectorTypes = .link
        
        
        
        
        let menuImg9 = UIImageView()
        
        menuImg9.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/corner_room.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg9.contentMode = .scaleAspectFill
        menuImg9.translatesAutoresizingMaskIntoConstraints = false
        menuImg9.clipsToBounds = true
        
        let menu9 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu9.text = "The Corner Room (American) 100 W. College Avenue"
        menu9.textAlignment = .center
        menu9.isEditable = false
        menu9.isScrollEnabled = false
        
        let menuLink9 = NSMutableAttributedString(string: menu9.text)
        menuLink9.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/dfig5Bd6PVy", range: NSMakeRange(0, menu9.text.characters.count))
        
        menu9.attributedText = menuLink9
        menu9.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg10 = UIImageView()
        
        menuImg10.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/chipotle.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg10.contentMode = .scaleAspectFill
        menuImg10.translatesAutoresizingMaskIntoConstraints = false
        menuImg10.clipsToBounds = true
        
        let menu10 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu10.text = "Chipotle (Mexican) 116 Heister Street"
        menu10.textAlignment = .center
        menu10.isEditable = false
        menu10.isScrollEnabled = false
        
        let menuLink10 = NSMutableAttributedString(string: menu10.text)
        menuLink10.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/Autkdsh663v", range: NSMakeRange(0, menu10.text.characters.count))
        
        menu10.attributedText = menuLink10
        menu10.dataDetectorTypes = .link
        
        
        
        
        
        
        
        let menuImg11 = UIImageView()
        
        menuImg11.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/pho11.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))

        menuImg11.contentMode = .scaleAspectFill
        menuImg11.translatesAutoresizingMaskIntoConstraints = false
        menuImg11.clipsToBounds = true
        
        let menu11 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu11.text = "Pho 11 (Vietnamese) 146 N Atherton St"
        menu11.textAlignment = .center
        menu11.isEditable = false
        menu11.isScrollEnabled = false
        
        let menuLink11 = NSMutableAttributedString(string: menu11.text)
        menuLink11.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/n7uhDseURqp", range: NSMakeRange(0, menu11.text.characters.count))
        
        menu11.attributedText = menuLink11
        menu11.dataDetectorTypes = .link
        
        
        
        let menuImg12 = UIImageView()
        
        menuImg12.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/deli.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg12.contentMode = .scaleAspectFill
        menuImg12.translatesAutoresizingMaskIntoConstraints = false
        menuImg12.clipsToBounds = true
        
        
        let menu12 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu12.text = "The Deli (Pizza, Sandwiches) 113 Heister Street"
        menu12.textAlignment = .center
        menu12.isEditable = false
        menu12.isScrollEnabled = false
        
        let menuLink12 = NSMutableAttributedString(string: menu12.text)
        menuLink12.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/zHJP8viPUgA2", range: NSMakeRange(0, menu12.text.characters.count))
        
        menu12.attributedText = menuLink12
        menu12.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg13 = UIImageView()
        
        menuImg13.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/big_bowl.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg13.contentMode = .scaleAspectFill
        menuImg13.translatesAutoresizingMaskIntoConstraints = false
        menuImg13.clipsToBounds = true
        
        let menu13 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu13.text = "Big Bowl Noodle House (Chinese) 418 E College Ave **Cash Only**"
        menu13.textAlignment = .center
        menu13.isEditable = false
        menu13.isScrollEnabled = false
        
        let menuLink13 = NSMutableAttributedString(string: menu13.text)
        menuLink13.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/Nzw9SiPaX8k", range: NSMakeRange(0, menu13.text.characters.count))
        
        menu13.attributedText = menuLink13
        menu13.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg14 = UIImageView()
        
        menuImg14.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/babys.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg14.contentMode = .scaleAspectFill
        menuImg14.translatesAutoresizingMaskIntoConstraints = false
        menuImg14.clipsToBounds = true
        
        let menu14 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu14.text = "Baby’s Burgers & Shakes (Diner) 131 S Garner St"
        menu14.textAlignment = .center
        menu14.isEditable = false
        menu14.isScrollEnabled = false
        
        let menuLink14 = NSMutableAttributedString(string: menu14.text)
        menuLink14.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/79LaYxjZ2QN2", range: NSMakeRange(0, menu14.text.characters.count))
        
        menu14.attributedText = menuLink14
        menu14.dataDetectorTypes = .link
        
        
        
        
        let menuImg15 = UIImageView()
        
        menuImg15.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/green_bowl.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg15.contentMode = .scaleAspectFill
        menuImg15.translatesAutoresizingMaskIntoConstraints = false
        menuImg15.clipsToBounds = true
        
        let menu15 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu15.text = "Green Bowl (Asian Fusion, Chinese, Salads) 131 W. Beaver Avenue"
        menu15.textAlignment = .center
        menu15.isEditable = false
        menu15.isScrollEnabled = false
        
        let menuLink15 = NSMutableAttributedString(string: menu15.text)
        menuLink15.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/qGZTgz2SSh92", range: NSMakeRange(0, menu15.text.characters.count))
        
        menu15.attributedText = menuLink15
        menu15.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg16 = UIImageView()
        
        menuImg16.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/underground.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg16.contentMode = .scaleAspectFill
        menuImg16.translatesAutoresizingMaskIntoConstraints = false
        menuImg16.clipsToBounds = true
        
        let menu16 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu16.text = "Underground Burgers & Crepes (Burgers, Crepes) 218 E Calder Way"
        menu16.textAlignment = .center
        menu16.isEditable = false
        menu16.isScrollEnabled = false
        
        let menuLink16 = NSMutableAttributedString(string: menu16.text)
        menuLink16.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/jsuYHUjKTm22", range: NSMakeRange(0, menu16.text.characters.count))
        
        menu16.attributedText = menuLink16
        menu16.dataDetectorTypes = .link
        
        
        let menuImg17 = UIImageView()
        
        menuImg17.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/galanga.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg17.contentMode = .scaleAspectFill
        menuImg17.translatesAutoresizingMaskIntoConstraints = false
        menuImg17.clipsToBounds = true
        
        let menu17 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu17.text = "Galanga (Thai) 454 E. College Avenue"
        menu17.textAlignment = .center
        menu17.isEditable = false
        menu17.isScrollEnabled = false
        
        let menuLink17 = NSMutableAttributedString(string: menu17.text)
        menuLink17.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/Pm9Vadd1NXy", range: NSMakeRange(0, menu17.text.characters.count))
        
        menu17.attributedText = menuLink17
        menu17.dataDetectorTypes = .link
        
        
        
        let menuImg18 = UIImageView()
        
        menuImg18.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/tavern.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg18.contentMode = .scaleAspectFill
        menuImg18.translatesAutoresizingMaskIntoConstraints = false
        menuImg18.clipsToBounds = true
        
        let menu18 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu18.text = "The Tavern (American) 220 E. College Avenue"
        menu18.textAlignment = .center
        menu18.isEditable = false
        menu18.isScrollEnabled = false
        
        let menuLink18 = NSMutableAttributedString(string: menu18.text)
        menuLink18.addAttribute(NSLinkAttributeName, value: "https://goo.gl/maps/GH8iS3KZwQo", range: NSMakeRange(0, menu18.text.characters.count))
        
        menu18.attributedText = menuLink18
        menu18.dataDetectorTypes = .link
        
        let menu19 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu19.text = ""
        menu19.textAlignment = .center
        menu19.isEditable = false
        menu19.isScrollEnabled = false
        
        
        
        
        
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 15
        stackView.distribution = .fill
        
        
        stackView.addArrangedSubview(restaurantHeader)
        
        stackView.addArrangedSubview(menuImg1)
        stackView.addArrangedSubview(menu1)
        
        stackView.addArrangedSubview(menuImg2)
        stackView.addArrangedSubview(menu2)
        
        stackView.addArrangedSubview(menuImg3)
        stackView.addArrangedSubview(menu3)
        
        stackView.addArrangedSubview(menuImg4)
        stackView.addArrangedSubview(menu4)
        
        stackView.addArrangedSubview(menuImg5)
        stackView.addArrangedSubview(menu5)
        
        stackView.addArrangedSubview(menuImg6)
        stackView.addArrangedSubview(menu6)
        
        stackView.addArrangedSubview(menuImg7)
        stackView.addArrangedSubview(menu7)
        
        stackView.addArrangedSubview(menuImg8)
        stackView.addArrangedSubview(menu8)
        
        stackView.addArrangedSubview(menuImg9)
        stackView.addArrangedSubview(menu9)
        
        stackView.addArrangedSubview(menuImg10)
        stackView.addArrangedSubview(menu10)
        
        stackView.addArrangedSubview(menuImg11)
        stackView.addArrangedSubview(menu11)
        
        stackView.addArrangedSubview(menuImg11)
        stackView.addArrangedSubview(menu11)
        
        stackView.addArrangedSubview(menuImg12)
        stackView.addArrangedSubview(menu12)
        
        stackView.addArrangedSubview(menuImg13)
        stackView.addArrangedSubview(menu13)
        
        stackView.addArrangedSubview(menuImg14)
        stackView.addArrangedSubview(menu14)
        
        stackView.addArrangedSubview(menuImg15)
        stackView.addArrangedSubview(menu15)
        
        stackView.addArrangedSubview(menuImg16)
        stackView.addArrangedSubview(menu16)
        
        stackView.addArrangedSubview(menuImg17)
        stackView.addArrangedSubview(menu17)
        
        stackView.addArrangedSubview(menuImg18)
        stackView.addArrangedSubview(menu18)
        
        stackView.addArrangedSubview(menu19)
        
        
        
        
        scrollView.addSubview(stackView)
        
        //constraints
        

        
        stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 8).isActive = true
        stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 16).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 8).isActive = true
        
        //menuLink1.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg1.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu2.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg2.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg2.heightAnchor.constraint(equalToConstant: 200).isActive = true

        //menu3.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg3.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg3.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu4.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg4.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg4.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        //menu5.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg5.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg5.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu6.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg6.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg6.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        //menu7.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg7.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg7.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu8.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg8.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg8.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu9.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg9.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg9.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu10.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg10.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg10.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu11.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg11.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg11.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu12.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg12.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg12.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu13.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg13.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg13.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu14.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg14.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg14.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        //menu15.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg15.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg15.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu16.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg16.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg16.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        //menu17.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg17.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg17.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu18.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg18.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg18.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu18.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20).isActive = true
    
    
    
    
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
