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
    let stackView = UIStackView()
    let stackViewC = UIStackView()
    let stackViewB = UIStackView()
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func indexChanged(_ sender: Any) {
        
        
        switch segmentedControl.selectedSegmentIndex {
            
        case 0:
            loadRestaurants()
        
        case 1:
            loadCoffee()
        
        case 2:
            loadBars()
        
        default:
            break
            
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadRestaurants()
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRestaurants(){
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height:
            1), animated: false)
        
        stackView.removeFromSuperview()
        stackViewC.removeFromSuperview()
        stackViewB.removeFromSuperview()
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        let menuImg1 = UIImageView()
        
        menuImg1.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/india_pavillion.jpeg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg1.contentMode = .scaleAspectFill
        menuImg1.translatesAutoresizingMaskIntoConstraints = false
        menuImg1.clipsToBounds = true
        
        let menu1 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu1.text = "India Pavilion (Indian) 222 E Calder Way"
        //        menu1.textAlignment = .center
        menu1.isEditable = false
        menu1.isScrollEnabled = false
        
        
        let menuLink1 = NSMutableAttributedString(string: menu1.text)
        menuLink1.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/ffQeJwYN2tH2", range: NSMakeRange(0, menu1.text.count))
        
        menu1.attributedText = menuLink1
        menu1.dataDetectorTypes = .link
        
        
        
        let menuImg2 = UIImageView()
        
        menuImg2.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/pita_cabana.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        
        menuImg2.contentMode = .scaleAspectFill
        menuImg2.translatesAutoresizingMaskIntoConstraints = false
        menuImg2.clipsToBounds = true
        
        
        let menu2 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu2.text = "Pita Cabana (Middle Eastern) 334 E Calder Way"
        //        menu2.textAlignment = .center
        menu2.isEditable = false
        menu2.isScrollEnabled = false
        
        let menuLink2 = NSMutableAttributedString(string: menu2.text)
        menuLink2.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/AjWY4baa3Tz", range: NSMakeRange(0, menu2.text.count))
        
        menu2.attributedText = menuLink2
        menu2.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg3 = UIImageView()
        
        menuImg3.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/yallah.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg3.contentMode = .scaleAspectFill
        menuImg3.translatesAutoresizingMaskIntoConstraints = false
        menuImg3.clipsToBounds = true
        
        let menu3 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu3.text = "Yallah Taco (Mexican) 217 McAllister Alley"
        //        menu3.textAlignment = .center
        menu3.isEditable = false
        menu3.isScrollEnabled = false
        
        let menuLink3 = NSMutableAttributedString(string: menu3.text)
        menuLink3.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/yaVAn26TgAQ2", range: NSMakeRange(0, menu3.text.count))
        
        menu3.attributedText = menuLink3
        menu3.dataDetectorTypes = .link
        
        
        
        let menuImg4 = UIImageView()
        
        menuImg4.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/cozy_thai.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg4.contentMode = .scaleAspectFill
        menuImg4.translatesAutoresizingMaskIntoConstraints = false
        menuImg4.clipsToBounds = true
        
        let menu4 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu4.text = "Cozy Thai (Thai) 232 S. Allen Street"
        //        menu4.textAlignment = .center
        menu4.isEditable = false
        menu4.isScrollEnabled = false
        
        let menuLink4 = NSMutableAttributedString(string: menu4.text)
        menuLink4.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/jgdCBbGensD2", range: NSMakeRange(0, menu4.text.count))
        
        menu4.attributedText = menuLink4
        menu4.dataDetectorTypes = .link
        
        
        let menuImg20 = UIImageView()
        
        menuImg20.sd_setImage(with: URL(string: "https://phunc.psiada.org/wp-content/uploads/2018/10/snap.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg20.contentMode = .scaleAspectFill
        menuImg20.translatesAutoresizingMaskIntoConstraints = false
        menuImg20.clipsToBounds = true
        
        let menu20 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu20.text = "Snap Pizza (Pizza) 132 W. College Ave"
        //        menu4.textAlignment = .center
        menu20.isEditable = false
        menu20.isScrollEnabled = false
        
        let menuLink20 = NSMutableAttributedString(string: menu20.text)
        menuLink20.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/VG4RM5JQ3Ft", range: NSMakeRange(0, menu20.text.count))
        
        menu20.attributedText = menuLink20
        menu20.dataDetectorTypes = .link
        
        
        
        
        let menuImg5 = UIImageView()
        
        menuImg5.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/irvings.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg5.contentMode = .scaleAspectFill
        menuImg5.translatesAutoresizingMaskIntoConstraints = false
        menuImg5.clipsToBounds = true
        
        let menu5 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu5.text = "Irving’s Bagels (Bagels, Sandwiches) 110 E College Ave"
        //        menu5.textAlignment = .center
        menu5.isEditable = false
        menu5.isScrollEnabled = false
        
        let menuLink5 = NSMutableAttributedString(string: menu5.text)
        menuLink5.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/VSgmQsSmMiG2", range: NSMakeRange(0, menu5.text.count))
        
        menu5.attributedText = menuLink5
        menu5.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg6 = UIImageView()
        
        menuImg6.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/fiddlehead.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg6.contentMode = .scaleAspectFill
        menuImg6.translatesAutoresizingMaskIntoConstraints = false
        menuImg6.clipsToBounds = true
        
        let menu6 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu6.text = "Fiddlehead (Salads) 134 W College Ave"
        //        menu6.textAlignment = .center
        menu6.isEditable = false
        menu6.isScrollEnabled = false
        
        let menuLink6 = NSMutableAttributedString(string: menu6.text)
        menuLink6.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/n4e5QDVfMir", range: NSMakeRange(0, menu6.text.count))
        
        menu6.attributedText = menuLink6
        menu6.dataDetectorTypes = .link
        
        
        
        
        
        
        
        let menuImg7 = UIImageView()
        
        menuImg7.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/bagel_crust.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg7.contentMode = .scaleAspectFill
        menuImg7.translatesAutoresizingMaskIntoConstraints = false
        menuImg7.clipsToBounds = true
        
        let menu7 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu7.text = "Bagel Crust (Bagels, Sandwiches) 332 E Calder Way"
        //        menu7.textAlignment = .center
        menu7.isEditable = false
        menu7.isScrollEnabled = false
        
        let menuLink7 = NSMutableAttributedString(string: menu7.text)
        menuLink7.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/zuCgvtysfuJ2", range: NSMakeRange(0, menu7.text.count))
        
        menu7.attributedText = menuLink7
        menu7.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg8 = UIImageView()
        
        menuImg8.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/little_szechuan.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg8.contentMode = .scaleAspectFill
        menuImg8.translatesAutoresizingMaskIntoConstraints = false
        menuImg8.clipsToBounds = true
        
        let menu8 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu8.text = "Little Szechuan (Chinese) 228 W College Ave"
        //        menu8.textAlignment = .center
        menu8.isEditable = false
        menu8.isScrollEnabled = false
        
        let menuLink8 = NSMutableAttributedString(string: menu8.text)
        menuLink8.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/fsmPxsKVVYu", range: NSMakeRange(0, menu8.text.count))
        
        menu8.attributedText = menuLink8
        menu8.dataDetectorTypes = .link
        
        
        
        
        let menuImg9 = UIImageView()
        
        menuImg9.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/corner_room.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg9.contentMode = .scaleAspectFill
        menuImg9.translatesAutoresizingMaskIntoConstraints = false
        menuImg9.clipsToBounds = true
        
        let menu9 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu9.text = "The Corner Room (American) 100 W. College Avenue"
        //        menu9.textAlignment = .center
        menu9.isEditable = false
        menu9.isScrollEnabled = false
        
        let menuLink9 = NSMutableAttributedString(string: menu9.text)
        menuLink9.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/dfig5Bd6PVy", range: NSMakeRange(0, menu9.text.count))
        
        menu9.attributedText = menuLink9
        menu9.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg10 = UIImageView()
        
        menuImg10.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/chipotle.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg10.contentMode = .scaleAspectFill
        menuImg10.translatesAutoresizingMaskIntoConstraints = false
        menuImg10.clipsToBounds = true
        
        let menu10 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu10.text = "Chipotle (Mexican) 116 Heister Street"
        //        menu10.textAlignment = .center
        menu10.isEditable = false
        menu10.isScrollEnabled = false
        
        let menuLink10 = NSMutableAttributedString(string: menu10.text)
        menuLink10.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/Autkdsh663v", range: NSMakeRange(0, menu10.text.count))
        
        menu10.attributedText = menuLink10
        menu10.dataDetectorTypes = .link
        
        
        
        
        
        
        
        let menuImg11 = UIImageView()
        
        menuImg11.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/pho11.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        
        menuImg11.contentMode = .scaleAspectFill
        menuImg11.translatesAutoresizingMaskIntoConstraints = false
        menuImg11.clipsToBounds = true
        
        let menu11 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu11.text = "Pho 11 (Vietnamese) 146 N Atherton St"
        //        menu11.textAlignment = .center
        menu11.isEditable = false
        menu11.isScrollEnabled = false
        
        let menuLink11 = NSMutableAttributedString(string: menu11.text)
        menuLink11.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/n7uhDseURqp", range: NSMakeRange(0, menu11.text.count))
        
        menu11.attributedText = menuLink11
        menu11.dataDetectorTypes = .link
        
        
        
        let menuImg12 = UIImageView()
        
        menuImg12.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/deli.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg12.contentMode = .scaleAspectFill
        menuImg12.translatesAutoresizingMaskIntoConstraints = false
        menuImg12.clipsToBounds = true
        
        
        let menu12 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu12.text = "The Deli (Pizza, Sandwiches) 113 Heister Street"
        //        menu12.textAlignment = .center
        menu12.isEditable = false
        menu12.isScrollEnabled = false
        
        let menuLink12 = NSMutableAttributedString(string: menu12.text)
        menuLink12.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/zHJP8viPUgA2", range: NSMakeRange(0, menu12.text.count))
        
        menu12.attributedText = menuLink12
        menu12.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg13 = UIImageView()
        
        menuImg13.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/big_bowl.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg13.contentMode = .scaleAspectFill
        menuImg13.translatesAutoresizingMaskIntoConstraints = false
        menuImg13.clipsToBounds = true
        
        let menu13 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu13.text = "Big Bowl Noodle House (Chinese) 418 E College Ave **Cash Only**"
        //        menu13.textAlignment = .center
        menu13.isEditable = false
        menu13.isScrollEnabled = false
        
        let menuLink13 = NSMutableAttributedString(string: menu13.text)
        menuLink13.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/Nzw9SiPaX8k", range: NSMakeRange(0, menu13.text.count))
        
        menu13.attributedText = menuLink13
        menu13.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg14 = UIImageView()
        
        menuImg14.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/babys.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg14.contentMode = .scaleAspectFill
        menuImg14.translatesAutoresizingMaskIntoConstraints = false
        menuImg14.clipsToBounds = true
        
        let menu14 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu14.text = "Baby’s Burgers & Shakes (Diner) 131 S Garner St"
        //        menu14.textAlignment = .center
        menu14.isEditable = false
        menu14.isScrollEnabled = false
        
        let menuLink14 = NSMutableAttributedString(string: menu14.text)
        menuLink14.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/79LaYxjZ2QN2", range: NSMakeRange(0, menu14.text.count))
        
        menu14.attributedText = menuLink14
        menu14.dataDetectorTypes = .link
        
        
        
        
        let menuImg15 = UIImageView()
        
        menuImg15.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/green_bowl.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg15.contentMode = .scaleAspectFill
        menuImg15.translatesAutoresizingMaskIntoConstraints = false
        menuImg15.clipsToBounds = true
        
        let menu15 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu15.text = "Green Bowl (Asian Fusion, Chinese, Salads) 131 W. Beaver Avenue"
        //        menu15.textAlignment = .center
        menu15.isEditable = false
        menu15.isScrollEnabled = false
        
        let menuLink15 = NSMutableAttributedString(string: menu15.text)
        menuLink15.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/qGZTgz2SSh92", range: NSMakeRange(0, menu15.text.count))
        
        menu15.attributedText = menuLink15
        menu15.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg16 = UIImageView()
        
        menuImg16.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/underground.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg16.contentMode = .scaleAspectFill
        menuImg16.translatesAutoresizingMaskIntoConstraints = false
        menuImg16.clipsToBounds = true
        
        let menu16 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu16.text = "Underground Burgers & Crepes (Burgers, Crepes) 218 E Calder Way"
        //        menu16.textAlignment = .center
        menu16.isEditable = false
        menu16.isScrollEnabled = false
        
        let menuLink16 = NSMutableAttributedString(string: menu16.text)
        menuLink16.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/jsuYHUjKTm22", range: NSMakeRange(0, menu16.text.count))
        
        menu16.attributedText = menuLink16
        menu16.dataDetectorTypes = .link
        
        
        let menuImg17 = UIImageView()
        
        menuImg17.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/galanga.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg17.contentMode = .scaleAspectFill
        menuImg17.translatesAutoresizingMaskIntoConstraints = false
        menuImg17.clipsToBounds = true
        
        let menu17 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu17.text = "Galanga (Thai) 454 E. College Avenue"
        //        menu17.textAlignment = .center
        menu17.isEditable = false
        menu17.isScrollEnabled = false
        
        let menuLink17 = NSMutableAttributedString(string: menu17.text)
        menuLink17.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/Pm9Vadd1NXy", range: NSMakeRange(0, menu17.text.count))
        
        menu17.attributedText = menuLink17
        menu17.dataDetectorTypes = .link
        
        
        
        let menuImg18 = UIImageView()
        
        menuImg18.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2017/11/tavern.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg18.contentMode = .scaleAspectFill
        menuImg18.translatesAutoresizingMaskIntoConstraints = false
        menuImg18.clipsToBounds = true
        
        let menu18 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu18.text = "The Tavern (American) 220 E. College Avenue"
        //        menu18.textAlignment = .center
        menu18.isEditable = false
        menu18.isScrollEnabled = false
        
        let menuLink18 = NSMutableAttributedString(string: menu18.text)
        menuLink18.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/GH8iS3KZwQo", range: NSMakeRange(0, menu18.text.count))
        
        menu18.attributedText = menuLink18
        menu18.dataDetectorTypes = .link
        
        let menuImg21 = UIImageView()
        
        menuImg21.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/panera-bread.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg21.contentMode = .scaleAspectFill
        menuImg21.translatesAutoresizingMaskIntoConstraints = false
        menuImg21.clipsToBounds = true
        
        let menu21 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu21.text = "Panera Bread (Sandwiches, Salads) 148 S Allen St"
        //        menu21.textAlignment = .center
        menu21.isEditable = false
        menu21.isScrollEnabled = false
        
        let menuLink21 = NSMutableAttributedString(string: menu21.text)
        menuLink21.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/Wg3YQ9JeU772", range: NSMakeRange(0, menu21.text.count))
        
        menu21.attributedText = menuLink21
        menu21.dataDetectorTypes = .link
        
        let menuImg22 = UIImageView()
        
        menuImg22.sd_setImage(with: URL(string: "https://phunc.psiada.org/wp-content/uploads/2019/03/qdoba.jpeg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg22.contentMode = .scaleAspectFill
        menuImg22.translatesAutoresizingMaskIntoConstraints = false
        menuImg22.clipsToBounds = true
        
        let menu22 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu22.text = "Qdoba (Mexican) 208 W College Ave"
        //        menu22.textAlignment = .center
        menu22.isEditable = false
        menu22.isScrollEnabled = false
        
        let menuLink22 = NSMutableAttributedString(string: menu22.text)
        menuLink22.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/YV3HGY3WRSU2", range: NSMakeRange(0, menu22.text.count))
        
        menu22.attributedText = menuLink22
        menu22.dataDetectorTypes = .link
        
        
        let menu19 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu19.text = ""
        menu19.textAlignment = .center
        menu19.isEditable = false
        menu19.isScrollEnabled = false
        
        
        
        
        
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 15
        stackView.distribution = .fill
        
        
//        stackView.addArrangedSubview(restaurantHeader)
        
        stackView.addArrangedSubview(menuImg1)
        stackView.addArrangedSubview(menu1)
        
        stackView.addArrangedSubview(menuImg2)
        stackView.addArrangedSubview(menu2)
        
        stackView.addArrangedSubview(menuImg3)
        stackView.addArrangedSubview(menu3)
        
        stackView.addArrangedSubview(menuImg4)
        stackView.addArrangedSubview(menu4)
        
        stackView.addArrangedSubview(menuImg20)
        stackView.addArrangedSubview(menu20)
        
        stackView.addArrangedSubview(menuImg5)
        stackView.addArrangedSubview(menu5)
        
        stackView.addArrangedSubview(menuImg6)
        stackView.addArrangedSubview(menu6)
        
        stackView.addArrangedSubview(menuImg7)
        stackView.addArrangedSubview(menu7)
        
        stackView.addArrangedSubview(menuImg8)
        stackView.addArrangedSubview(menu8)
        
        stackView.addArrangedSubview(menuImg21)
        stackView.addArrangedSubview(menu21)
        
        stackView.addArrangedSubview(menuImg22)
        stackView.addArrangedSubview(menu22)
        
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
        
        menu1.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg1.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu2.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg2.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu3.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg3.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg3.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu4.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg4.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg4.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu20.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg20.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg20.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu5.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg5.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg5.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu6.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg6.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg6.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        menu7.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg7.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg7.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu8.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg8.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg8.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu21.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg21.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg21.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu22.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg22.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg22.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu9.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg9.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg9.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu10.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg10.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg10.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu11.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg11.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg11.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu12.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg12.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg12.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu13.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg13.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg13.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu14.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg14.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg14.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        menu15.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg15.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg15.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu16.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg16.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg16.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        menu17.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg17.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg17.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu18.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg18.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg18.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        //menu18.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20).isActive = true
        
        menu1.textAlignment = .center
        menu2.textAlignment = .center
        menu3.textAlignment = .center
        menu4.textAlignment = .center
        menu20.textAlignment = .center
        menu5.textAlignment = .center
        menu6.textAlignment = .center
        menu7.textAlignment = .center
        menu8.textAlignment = .center
        menu21.textAlignment = .center
        menu22.textAlignment = .center
        menu9.textAlignment = .center
        menu10.textAlignment = .center
        menu11.textAlignment = .center
        menu12.textAlignment = .center
        menu13.textAlignment = .center
        menu14.textAlignment = .center
        menu15.textAlignment = .center
        menu16.textAlignment = .center
        menu17.textAlignment = .center
        menu18.textAlignment = .center
        
        
        
    }
    
    func loadCoffee() {
        stackView.removeFromSuperview()
        stackViewC.removeFromSuperview()
        stackViewB.removeFromSuperview()
        
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height:
            1), animated: false)
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        let menuImg0 = UIImageView()
        menuImg0.sd_setImage(with: URL(string: "https://phunc.psiada.org/wp-content/uploads/2019/03/saxbys.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg0.contentMode = .scaleAspectFill
        menuImg0.translatesAutoresizingMaskIntoConstraints = false
        menuImg0.clipsToBounds = true
        
        let menu0 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu0.text = "Saxby's Business Building"
        menu0.isEditable = false
        menu0.isScrollEnabled = false
        
        let menuLink0 = NSMutableAttributedString(string: menu0.text)
        menuLink0.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/8VC7BdXv3GG2", range: NSMakeRange(0, menu0.text.count))
        
        menu0.attributedText = menuLink0
        menu0.dataDetectorTypes = .link
        
        
        let menuImg1 = UIImageView()
        
        menuImg1.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/penn-state-creamery.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg1.contentMode = .scaleAspectFill
        menuImg1.translatesAutoresizingMaskIntoConstraints = false
        menuImg1.clipsToBounds = true
        
        let menu1 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu1.text = "Penn State Creamery Food Science Building"
        //        menu1.textAlignment = .center
        menu1.isEditable = false
        menu1.isScrollEnabled = false
        
        let menuLink1 = NSMutableAttributedString(string: menu1.text)
        menuLink1.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/xiKUQJo3QnQ2", range: NSMakeRange(0, menu1.text.count))
        
        menu1.attributedText = menuLink1
        menu1.dataDetectorTypes = .link
        
        
        let menuImg2 = UIImageView()
        
        menuImg2.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/starbucks.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg2.contentMode = .scaleAspectFill
        menuImg2.translatesAutoresizingMaskIntoConstraints = false
        menuImg2.clipsToBounds = true
        
        let menu2 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu2.text = "Starbucks Paterno Library"
        //        menu2.textAlignment = .center
        menu2.isEditable = false
        menu2.isScrollEnabled = false
        
        let menuLink2 = NSMutableAttributedString(string: menu2.text)
        menuLink2.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/Evnn2kD9HJU2", range: NSMakeRange(0, menu2.text.count))
        
        menu2.attributedText = menuLink2
        menu2.dataDetectorTypes = .link
        
        
        let menu2b = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu2b.text = "Starbucks HUB"
        //        menu2b.textAlignment = .center
        menu2b.isEditable = false
        menu2b.isScrollEnabled = false
        
        let menuLink2b = NSMutableAttributedString(string: menu2b.text)
        menuLink2b.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/z6CDyDQsQTF2", range: NSMakeRange(0, menu2b.text.count))
        
        menu2b.attributedText = menuLink2b
        menu2b.dataDetectorTypes = .link
        
        let menu2c = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu2c.text = "Starbucks 232 W College Ave"
        //        menu2.textAlignment = .center
        menu2c.isEditable = false
        menu2c.isScrollEnabled = false
        
        let menuLink2c = NSMutableAttributedString(string: menu2c.text)
        menuLink2c.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/eGJTMaSmp3T2", range: NSMakeRange(0, menu2c.text.count))
        
        menu2c.attributedText = menuLink2c
        menu2c.dataDetectorTypes = .link
        
        
        let menuImg3 = UIImageView()
        
        menuImg3.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/Au-Bon-Pain-Coffee.png"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        
        menuImg3.contentMode = .scaleAspectFill
        menuImg3.translatesAutoresizingMaskIntoConstraints = false
        menuImg3.clipsToBounds = true
        
        
        let menu3 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu3.text = "Au Bon Pain Kern Building"
        //        menu3.textAlignment = .center
        menu3.isEditable = false
        menu3.isScrollEnabled = false
        
        let menuLink3 = NSMutableAttributedString(string: menu3.text)
        menuLink3.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/cJLe7DhjNHu", range: NSMakeRange(0, menu3.text.count))
        
        menu3.attributedText = menuLink3
        menu3.dataDetectorTypes = .link
        
        let menu3b = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu3b.text = "Au Bon Pain Information Sciences and Technology (Westgate) Building"
        //        menu3.textAlignment = .center
        menu3b.isEditable = false
        menu3b.isScrollEnabled = false
        
        let menuLink3b = NSMutableAttributedString(string: menu3b.text)
        menuLink3b.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/uvzLAFDDEWq", range: NSMakeRange(0, menu3b.text.count))
        
        menu3b.attributedText = menuLink3b
        menu3b.dataDetectorTypes = .link

        
        
        let menuImg4 = UIImageView()
        
        menuImg4.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/Dukin-donuts-donut.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg4.contentMode = .scaleAspectFill
        menuImg4.translatesAutoresizingMaskIntoConstraints = false
        menuImg4.clipsToBounds = true
        
        let menu4 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu4.text = "Dunkin Donuts 200 W College Ave"
        //        menu4.textAlignment = .center
        menu4.isEditable = false
        menu4.isScrollEnabled = false
        
        let menuLink4 = NSMutableAttributedString(string: menu4.text)
        menuLink4.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/WVVBSx95Zek", range: NSMakeRange(0, menu4.text.count))
        
        menu4.attributedText = menuLink4
        menu4.dataDetectorTypes = .link
        
        
        let menuImg5 = UIImageView()
        
        menuImg5.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/irvings_bagels.jpeg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg5.contentMode = .scaleAspectFill
        menuImg5.translatesAutoresizingMaskIntoConstraints = false
        menuImg5.clipsToBounds = true
        
        let menu5 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu5.text = "Irving’s Bagels 110 E College Ave"
        //        menu5.textAlignment = .center
        menu5.isEditable = false
        menu5.isScrollEnabled = false
        
        let menuLink5 = NSMutableAttributedString(string: menu5.text)
        menuLink5.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/RHzwpDGCE7S2", range: NSMakeRange(0, menu5.text.count))
        
        menu5.attributedText = menuLink5
        menu5.dataDetectorTypes = .link
        
        
        let menuImg6 = UIImageView()
        
        menuImg6.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/saints-cafe.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg6.contentMode = .scaleAspectFill
        menuImg6.translatesAutoresizingMaskIntoConstraints = false
        menuImg6.clipsToBounds = true
        
        let menu6 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu6.text = "Saint’s Cafe 123 W Beaver Ave"
        //        menu6.textAlignment = .center
        menu6.isEditable = false
        menu6.isScrollEnabled = false
        
        let menuLink6 = NSMutableAttributedString(string: menu6.text)
        menuLink6.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/XnnntWPmTQm", range: NSMakeRange(0, menu6.text.count))
        
        menu6.attributedText = menuLink6
        menu6.dataDetectorTypes = .link
    
        
        let menuImg7 = UIImageView()
        
        menuImg7.sd_setImage(with: URL(string: "https://phunc.psiada.org/wp-content/uploads/2018/10/duckdonutsFB.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg7.contentMode = .scaleAspectFill
        menuImg7.translatesAutoresizingMaskIntoConstraints = false
        menuImg7.clipsToBounds = true
        
        let menu7 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu7.text = "Duck Donuts 125 S Fraser St"
        //        menu7.textAlignment = .center
        menu7.isEditable = false
        menu7.isScrollEnabled = false
        
        let menuLink7 = NSMutableAttributedString(string: menu7.text)
        menuLink7.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/8LegtvWLsg12", range: NSMakeRange(0, menu7.text.count))
        
        menu7.attributedText = menuLink7
        menu7.dataDetectorTypes = .link
        
        
        
        let menuImg8 = UIImageView()
        
        menuImg8.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/panera-bread.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg8.contentMode = .scaleAspectFill
        menuImg8.translatesAutoresizingMaskIntoConstraints = false
        menuImg8.clipsToBounds = true
        
        let menu8 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu8.text = "Panera Bread 148 S Allen St"
        //        menu8.textAlignment = .center
        menu8.isEditable = false
        menu8.isScrollEnabled = false
        
        let menuLink8 = NSMutableAttributedString(string: menu8.text)
        menuLink8.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/Wg3YQ9JeU772", range: NSMakeRange(0, menu8.text.count))
        
        menu8.attributedText = menuLink8
        menu8.dataDetectorTypes = .link
   
        
        let menuImg9 = UIImageView()
        
        menuImg9.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/websters.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        
        menuImg9.contentMode = .scaleAspectFill
        menuImg9.translatesAutoresizingMaskIntoConstraints = false
        menuImg9.clipsToBounds = true
        
        let menu9 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu9.text = "Webster’s Bookstore Cafe 133 E Beaver Ave"
        //        menu9.textAlignment = .center
        menu9.isEditable = false
        menu9.isScrollEnabled = false
        
        let menuLink9 = NSMutableAttributedString(string: menu9.text)
        menuLink9.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/wNjCUdNPxAm", range: NSMakeRange(0, menu9.text.count))
        
        menu9.attributedText = menuLink9
        menu9.dataDetectorTypes = .link
        
        let menuImg10 = UIImageView()
        
        menuImg10.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/sowers-harvest-cafe.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg10.contentMode = .scaleAspectFill
        menuImg10.translatesAutoresizingMaskIntoConstraints = false
        menuImg10.clipsToBounds = true
        
        let menu10 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu10.text = "Sowers Harvest Café 421 E Beaver Ave"
        //        menu10.textAlignment = .center
        menu10.isEditable = false
        menu10.isScrollEnabled = false
        
        let menuLink10 = NSMutableAttributedString(string: menu10.text)
        menuLink10.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/GLiDpFxjeMs", range: NSMakeRange(0, menu10.text.count))
        
        menu10.attributedText = menuLink10
        menu10.dataDetectorTypes = .link
        
        let menuImg11 = UIImageView()
        menuImg11.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/abba-java.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg11.contentMode = .scaleAspectFill
        menuImg11.translatesAutoresizingMaskIntoConstraints = false
        menuImg11.clipsToBounds = true
        
        let menu11 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu11.text = "Abba Java Coffee House 299 Locust Ln"
        //        menu11.textAlignment = .center
        menu11.isEditable = false
        menu11.isScrollEnabled = false
        
        
        let menuLink11 = NSMutableAttributedString(string: menu11.text)
        menuLink11.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/YeJapfc12aJ42", range: NSMakeRange(0, menu11.text.count))
        
        menu11.attributedText = menuLink11
        menu11.dataDetectorTypes = .link
        
        let menuImg12 = UIImageView()
        
        menuImg12.sd_setImage(with: URL(string: "http://phunc.psiada.org/wp-content/uploads/2018/03/CheeseShoppe.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg12.contentMode = .scaleAspectFill
        menuImg12.translatesAutoresizingMaskIntoConstraints = false
        menuImg12.clipsToBounds = true
        
        let menu12 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu12.text = "Cheese Shoppe 234 E Calder Way"
        //        menu12.textAlignment = .center
        menu12.isEditable = false
        menu12.isScrollEnabled = false
        
        let menuLink12 = NSMutableAttributedString(string: menu12.text)
        menuLink12.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/ZBcQyXTnPFN2", range: NSMakeRange(0, menu12.text.count))
        
        menu12.attributedText = menuLink12
        menu12.dataDetectorTypes = .link
        
        
        let menu19 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu19.text = ""
        menu19.textAlignment = .center
        menu19.isEditable = false
        menu19.isScrollEnabled = false
        
        
        
        
        stackViewC.translatesAutoresizingMaskIntoConstraints = false
        stackViewC.axis = .vertical
        stackViewC.alignment = .center
        stackViewC.spacing = 15
        stackViewC.distribution = .fill
        
        stackViewC.addArrangedSubview(menuImg0)
        stackViewC.addArrangedSubview(menu0)

        stackViewC.addArrangedSubview(menuImg1)
        stackViewC.addArrangedSubview(menu1)
        
        stackViewC.addArrangedSubview(menuImg2)
        stackViewC.addArrangedSubview(menu2)
        stackViewC.addArrangedSubview(menu2b)
        stackViewC.addArrangedSubview(menu2c)

        
        stackViewC.addArrangedSubview(menuImg3)
        stackViewC.addArrangedSubview(menu3)
        stackViewC.addArrangedSubview(menu3b)
        
        stackViewC.addArrangedSubview(menuImg4)
        stackViewC.addArrangedSubview(menu4)
        
        stackViewC.addArrangedSubview(menuImg5)
        stackViewC.addArrangedSubview(menu5)
        
        stackViewC.addArrangedSubview(menuImg6)
        stackViewC.addArrangedSubview(menu6)
        
        stackViewC.addArrangedSubview(menuImg7)
        stackViewC.addArrangedSubview(menu7)
        
        stackViewC.addArrangedSubview(menuImg8)
        stackViewC.addArrangedSubview(menu8)
        
        stackViewC.addArrangedSubview(menuImg9)
        stackViewC.addArrangedSubview(menu9)
        
        stackViewC.addArrangedSubview(menuImg10)
        stackViewC.addArrangedSubview(menu10)
        
        stackViewC.addArrangedSubview(menuImg11)
        stackViewC.addArrangedSubview(menu11)
        
        stackViewC.addArrangedSubview(menuImg12)
        stackViewC.addArrangedSubview(menu12)
        
        stackViewC.addArrangedSubview(menu19)
        
        scrollView.addSubview(stackViewC)
        
        stackViewC.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 8).isActive = true
        stackViewC.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 8).isActive = true
        stackViewC.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 16).isActive = true
        stackViewC.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 8).isActive = true
        
        menu0.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg0.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg0.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu0.textAlignment = .center
        
        menu1.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg1.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu1.textAlignment = .center
        
        menu2.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menu2b.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menu2c.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg2.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu2.textAlignment = .center
        menu2b.textAlignment = .center
        menu2c.textAlignment = .center

        
        menu3.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menu3b.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg3.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg3.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu3.textAlignment = .center
        menu3b.textAlignment = .center

        
        menu4.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg4.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg4.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu4.textAlignment = .center
        
        menu5.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg5.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg5.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu5.textAlignment = .center
        
        menu6.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg6.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg6.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu6.textAlignment = .center
        
        menu7.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg7.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg7.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu7.textAlignment = .center
        
        menu8.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg8.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg8.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu8.textAlignment = .center
        
        menu9.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg9.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg9.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu9.textAlignment = .center
        
        menu10.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg10.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg10.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu10.textAlignment = .center
        
        menu11.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg11.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg11.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu11.textAlignment = .center
        
        menu12.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg12.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg12.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu12.textAlignment = .center
        
    }
    
    func loadBars() {
        stackView.removeFromSuperview()
        stackViewC.removeFromSuperview()
        stackViewB.removeFromSuperview()
        
        scrollView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height:
            1), animated: false)
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        let menuImg1 = UIImageView()
        menuImg1.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/zenos.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg1.contentMode = .scaleAspectFill
        menuImg1.translatesAutoresizingMaskIntoConstraints = false
        menuImg1.clipsToBounds = true
        
        let menu1 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu1.text = "Zeno's Pub 100 W College Ave"
        //        menu1.textAlignment = .center
        menu1.isEditable = false
        menu1.isScrollEnabled = false
        
        
        let menuLink1 = NSMutableAttributedString(string: menu1.text)
        menuLink1.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/S1noXdzb1PD2", range: NSMakeRange(0, menu1.text.count))
        
        menu1.attributedText = menuLink1
        menu1.dataDetectorTypes = .link
        
        
        let menuImg2 = UIImageView()
        
        menuImg2.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/gaff.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        
        menuImg2.contentMode = .scaleAspectFill
        menuImg2.translatesAutoresizingMaskIntoConstraints = false
        menuImg2.clipsToBounds = true
        
        
        let menu2 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu2.text = "The Shandygaff 212 E College Ave"
        //        menu2.textAlignment = .center
        menu2.isEditable = false
        menu2.isScrollEnabled = false
        
        let menuLink2 = NSMutableAttributedString(string: menu2.text)
        menuLink2.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/cCwYYFLm6So", range: NSMakeRange(0, menu2.text.count))
        
        menu2.attributedText = menuLink2
        menu2.dataDetectorTypes = .link
        
        let menuImg3 = UIImageView()
        
        menuImg3.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/phyrst.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg3.contentMode = .scaleAspectFill
        menuImg3.translatesAutoresizingMaskIntoConstraints = false
        menuImg3.clipsToBounds = true
        
        let menu3 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu3.text = "Phyrst 111 E Beaver Ave"
        //        menu3.textAlignment = .center
        menu3.isEditable = false
        menu3.isScrollEnabled = false
        
        let menuLink3 = NSMutableAttributedString(string: menu3.text)
        menuLink3.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/9JYP8VdSqoJ2", range: NSMakeRange(0, menu3.text.count))
        
        menu3.attributedText = menuLink3
        menu3.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg4 = UIImageView()
        
        menuImg4.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/champs.png"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg4.contentMode = .scaleAspectFill
        menuImg4.translatesAutoresizingMaskIntoConstraints = false
        menuImg4.clipsToBounds = true
        
        let menu4 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu4.text = "Champs Downtown 139 S Allen St"
        //        menu4.textAlignment = .center
        menu4.isEditable = false
        menu4.isScrollEnabled = false
        
        let menuLink4 = NSMutableAttributedString(string: menu4.text)
        menuLink4.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/MKg1Qg1XLku", range: NSMakeRange(0, menu4.text.count))
        
        menu4.attributedText = menuLink4
        menu4.dataDetectorTypes = .link
        
        
        
        
        let menuImg5 = UIImageView()
        
        menuImg5.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/cafe.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg5.contentMode = .scaleAspectFill
        menuImg5.translatesAutoresizingMaskIntoConstraints = false
        menuImg5.clipsToBounds = true
        
        let menu5 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu5.text = "Cafe 210 West 210 West College Ave"
        //        menu5.textAlignment = .center
        menu5.isEditable = false
        menu5.isScrollEnabled = false
        
        let menuLink5 = NSMutableAttributedString(string: menu5.text)
        menuLink5.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/z9ZB6rMtvjp", range: NSMakeRange(0, menu5.text.count))
        
        menu5.attributedText = menuLink5
        menu5.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg6 = UIImageView()
        
        menuImg6.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/liberty.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg6.contentMode = .scaleAspectFill
        menuImg6.translatesAutoresizingMaskIntoConstraints = false
        menuImg6.clipsToBounds = true
        
        let menu6 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu6.text = "Liberty Craft House 346 E College Ave"
        //        menu6.textAlignment = .center
        menu6.isEditable = false
        menu6.isScrollEnabled = false
        
        let menuLink6 = NSMutableAttributedString(string: menu6.text)
        menuLink6.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/CymquCKZ8Vq", range: NSMakeRange(0, menu6.text.count))
        
        menu6.attributedText = menuLink6
        menu6.dataDetectorTypes = .link
        
        
        
        
        
        
        
        let menuImg7 = UIImageView()
        
        menuImg7.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/saloon.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg7.contentMode = .scaleAspectFill
        menuImg7.translatesAutoresizingMaskIntoConstraints = false
        menuImg7.clipsToBounds = true
        
        let menu7 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu7.text = "The Saloon 101 Heister St"
        //        menu7.textAlignment = .center
        menu7.isEditable = false
        menu7.isScrollEnabled = false
        
        let menuLink7 = NSMutableAttributedString(string: menu7.text)
        menuLink7.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/dSMZT1gFpVx", range: NSMakeRange(0, menu7.text.count))
        
        menu7.attributedText = menuLink7
        menu7.dataDetectorTypes = .link
        
        
        
        
        
        
        let menuImg8 = UIImageView()
        
        menuImg8.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/madmex.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg8.contentMode = .scaleAspectFill
        menuImg8.translatesAutoresizingMaskIntoConstraints = false
        menuImg8.clipsToBounds = true
        
        let menu8 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu8.text = "Mad Mex 240 S Pugh St"
        //        menu8.textAlignment = .center
        menu8.isEditable = false
        menu8.isScrollEnabled = false
        
        let menuLink8 = NSMutableAttributedString(string: menu8.text)
        menuLink8.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/fSWoD53fqL22", range: NSMakeRange(0, menu8.text.count))
        
        menu8.attributedText = menuLink8
        menu8.dataDetectorTypes = .link
        
        
        
        
        let menuImg9 = UIImageView()
        
        menuImg9.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/localwhiskey.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg9.contentMode = .scaleAspectFill
        menuImg9.translatesAutoresizingMaskIntoConstraints = false
        menuImg9.clipsToBounds = true
        
        let menu9 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu9.text = "Local Whiskey 107 E Beaver Ave"
        //        menu9.textAlignment = .center
        menu9.isEditable = false
        menu9.isScrollEnabled = false
        
        let menuLink9 = NSMutableAttributedString(string: menu9.text)
        menuLink9.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/atYbHXMaMUC2", range: NSMakeRange(0, menu9.text.count))
        
        menu9.attributedText = menuLink9
        menu9.dataDetectorTypes = .link
        
        
        
        
        
        let menuImg10 = UIImageView()
        
        menuImg10.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/inferno.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        menuImg10.contentMode = .scaleAspectFill
        menuImg10.translatesAutoresizingMaskIntoConstraints = false
        menuImg10.clipsToBounds = true
        
        let menu10 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu10.text = "Inferno 340 E College Ave"
        //        menu10.textAlignment = .center
        menu10.isEditable = false
        menu10.isScrollEnabled = false
        
        let menuLink10 = NSMutableAttributedString(string: menu10.text)
        menuLink10.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/bvo4B7t9fEt", range: NSMakeRange(0, menu10.text.count))
        
        menu10.attributedText = menuLink10
        menu10.dataDetectorTypes = .link
        
        
        
        
        
        
        
        let menuImg11 = UIImageView()
        
        menuImg11.sd_setImage(with: URL(string: "http://punc.psiada.org/wp-content/uploads/2018/03/indigo.jpg"), placeholderImage: #imageLiteral(resourceName: "placeholder"))
        
        menuImg11.contentMode = .scaleAspectFill
        menuImg11.translatesAutoresizingMaskIntoConstraints = false
        menuImg11.clipsToBounds = true
        
        let menu11 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu11.text = "The Basement Nightspot 112 W College Ave"
        //        menu11.textAlignment = .center
        menu11.isEditable = false
        menu11.isScrollEnabled = false
        
        let menuLink11 = NSMutableAttributedString(string: menu11.text)
        menuLink11.addAttribute(NSAttributedString.Key.link, value: "https://goo.gl/maps/7TbozFeydpT2", range: NSMakeRange(0, menu11.text.count))
        
        menu11.attributedText = menuLink11
        menu11.dataDetectorTypes = .link
        
        let menu19 = UITextView(frame: CGRect(x: 10, y: 10, width: 10, height: 40))
        menu19.text = ""
        menu19.textAlignment = .center
        menu19.isEditable = false
        menu19.isScrollEnabled = false
        
        
        
        stackViewB.translatesAutoresizingMaskIntoConstraints = false
        stackViewB.axis = .vertical
        stackViewB.alignment = .center
        stackViewB.spacing = 15
        stackViewB.distribution = .fill
        
        
        stackViewB.addArrangedSubview(menuImg1)
        stackViewB.addArrangedSubview(menu1)
        
        stackViewB.addArrangedSubview(menuImg2)
        stackViewB.addArrangedSubview(menu2)
        
        stackViewB.addArrangedSubview(menuImg3)
        stackViewB.addArrangedSubview(menu3)
        
        stackViewB.addArrangedSubview(menuImg4)
        stackViewB.addArrangedSubview(menu4)
        
        stackViewB.addArrangedSubview(menuImg5)
        stackViewB.addArrangedSubview(menu5)
        
        stackViewB.addArrangedSubview(menuImg6)
        stackViewB.addArrangedSubview(menu6)
        
        stackViewB.addArrangedSubview(menuImg7)
        stackViewB.addArrangedSubview(menu7)
        
        stackViewB.addArrangedSubview(menuImg8)
        stackViewB.addArrangedSubview(menu8)
        
        stackViewB.addArrangedSubview(menuImg9)
        stackViewB.addArrangedSubview(menu9)
        
        stackViewB.addArrangedSubview(menuImg10)
        stackViewB.addArrangedSubview(menu10)
        
        stackViewB.addArrangedSubview(menuImg11)
        stackViewB.addArrangedSubview(menu11)
        
        stackViewB.addArrangedSubview(menu19)
        
        scrollView.addSubview(stackViewB)
        
        stackViewB.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 8).isActive = true
        stackViewB.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 8).isActive = true
        stackViewB.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 16).isActive = true
        stackViewB.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 8).isActive = true
        
        menu1.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg1.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu1.textAlignment = .center
        
        menu2.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg2.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        menu2.textAlignment = .center
        
        menu3.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg3.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg3.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu4.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg4.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg4.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        menu5.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg5.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg5.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu6.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg6.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg6.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        menu7.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg7.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg7.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu8.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg8.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg8.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu9.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg9.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg9.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu10.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg10.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg10.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        menu11.widthAnchor.constraint(equalToConstant: screenWidth - 24).isActive = true
        menuImg11.widthAnchor.constraint(equalToConstant: screenWidth - 16).isActive = true
        menuImg11.heightAnchor.constraint(equalToConstant: 200).isActive = true

        
        
        menu3.textAlignment = .center
        menu4.textAlignment = .center
        menu5.textAlignment = .center
        menu6.textAlignment = .center
        menu7.textAlignment = .center
        menu8.textAlignment = .center
        menu9.textAlignment = .center
        menu10.textAlignment = .center
        menu11.textAlignment = .center
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
