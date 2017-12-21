//
//  ThirdViewController.swift
//  PHUNC
//
//  Created by Mihir Alve on 6/25/17.
//  Copyright © 2017 PSIADA. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var resourceNames = ["MUN 101", "Crisis Strategy 101", "Directive Writing 101", "Parliamentary Procedure", "Parliamentary Procedure (In-Depth)", "Scheme of Events", "Passing and Defeating Motions"]
    
    var identities = ["mun", "crisis", "directive", "pp", "pp(i-d)", "scheme", "passing"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resourceNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourceCell", for: indexPath)
        
        cell.textLabel?.text = resourceNames[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        
        self.navigationController?.pushViewController(viewController!, animated: true)
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
