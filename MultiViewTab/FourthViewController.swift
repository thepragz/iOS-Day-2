//
//  FourthViewController.swift
//  MultiViewTab
//
//  Created by Cyberjaya 10 iTrain on 14/11/2017.
//  Copyright © 2017 pragaash. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var myPicker: UIPickerView!
    
     var characters = ["MUZ", "Aniq","Kanesh","Frankwinn"]
    var meals = ["rojak","Nasi Kandar", "Cendol","Mee sotong","Nasi Padang"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //How many columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
        
    }
    
    //How many Rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return characters.count
        }else {
            return meals.count
        }
        

    }
    
    //What to be displayed
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return characters[row]
        }else {
            return meals[row]
        }
    }
    
    
    @IBAction func actionGetResult(_ sender: Any) {
        
        let firstColumnWhichRow = self.myPicker.selectedRow(inComponent: 0)
        
        let secondColumnWhichRow = self.myPicker.selectedRow(inComponent: 1)
    
    //Compare with the Array to get result.
        
        let selectResultFirstColumn = self.characters[firstColumnWhichRow]
        let selectResultSecondColumn = self.meals[secondColumnWhichRow]
        
        //alert box to show the selected results
        //combine the result for later display
        
        let myMessage = "Selected Character is \(selectResultFirstColumn) and  his favourite is \(selectResultSecondColumn)"
        
        //nothing here
        
        let myAlert = UIAlertController(title: "Selected Result", message: myMessage, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Okay lah!", style: .default, handler: nil)
        myAlert.addAction(okButton)
        
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
