//
//  ViewController.swift
//  ToDoApp
//
//  Created by Cyberjaya 10 iTrain on 14/11/2017.
//  Copyright © 2017 pragaash. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTable: UITableView!
    
    
    var itemArray:[ToDoItem] = []
    
    var myArrayOfString = ["Apple","Orange", "Watermelon"]
    var myArrayNumber:[Int] = [100,66,87,12]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let item1 = ToDoItem(name: "Eat", desc: "Eat untill i am full", place: "Restaurant")
        
        let item2 = ToDoItem(name: "Sleep", desc: "abcdef", place: "Home")
        
        
        //add value to array.
        
        self.itemArray.append(item1)
        self.itemArray.append(item2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemArray.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        //reuse
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        //index.Path.row means by getting current row value. Everything start from 0
        //cell.textLabel?.text = "Hello World! \(indexPath.row)"
        
        cell.textLabel?.text = self.itemArray[indexPath.row].itemName
        return cell
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        
        if segue.identifier == "detailsegue"{
        
        let selectedRow = self.myTable.indexPathForSelectedRow
        
        let destVc = segue.destination as! DetailViewController
        
        //Passing the selected slot of array to next view
        //myitem is the instance variable
         destVc.myItem = self.itemArray[selectedRow!.row] as ToDoItem
    }
    
    
    
    
    
    
    
}
    
    
    
    
    


