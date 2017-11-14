///Users/cyberjaya10itrain/Desktop/ICAD Pragaash/Day2/ToDoApp/ToDoItem.swift
//  DetailViewController.swift
//  ToDoApp
//
//  Created by Cyberjaya 10 iTrain on 14/11/2017.
//  Copyright © 2017 pragaash. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var myItem:ToDoItem?
    
    @IBOutlet var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.myLabel.text = self.myItem?.itemName
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
