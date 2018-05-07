//
//  ViewController.swift
//  Q5_Animals
//
//  Created by Prashant  Badrinath on 5/7/18.
//  Copyright © 2018 Prashant  Badrinath. All rights reserved.
//

import UIKit


var header = ["Domestic Animals", "Wild Animals"]
var animals = [["Cow", "Goat", "Buffalo"], ["Lion","Tiger","Monkey"]]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellidentifier")
        cell?.textLabel?.text = animals[indexPath.section][indexPath.row]
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sectionNumber = indexPath.section
        let sectionRow = IndexPath(index: indexPath.row)
        var rowNumber = 0
        
        
        for i in sectionRow{
            
            rowNumber = i
            
        }
        
        
        let setAlert = UIAlertController(title: "Animals", message: "The Current Section Number is \(sectionNumber) and The Current Row Number is \(rowNumber)", preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "Okay", style: .default)
        setAlert.addAction(actionAlert)
        present(setAlert, animated: true, completion: nil)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

