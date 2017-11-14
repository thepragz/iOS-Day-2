//
//  ThirdViewController.swift
//  MultiViewTab
//
//  Created by Cyberjaya 10 iTrain on 14/11/2017.
//  Copyright © 2017 pragaash. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var myDatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
    
    @IBAction func actionGetDate(_ sender: Any) {
        
        
        //Setting up date format
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
        
        
        //convert date to string.Datat type conversionconver
        
        let selectedDate = dateFormatter.string(from: self.myDatePicker.date)
        
        //Display the message as Alert BoxAlert
        
        let myAlert = UIAlertController(title: "Selected Date ", message: selectedDate, preferredStyle: .alert)
        
        
        //Create Okay Button for alert box
        
        let okButton = UIAlertAction(title: "Okay", style: .default, handler: nil)
        
        myAlert.addAction(okButton) // Add the button the alert box
        
        //show the alert box
        present(myAlert, animated: true, completion: nil)

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



