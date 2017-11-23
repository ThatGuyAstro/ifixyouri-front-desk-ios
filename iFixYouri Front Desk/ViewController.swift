//
//  ViewController.swift
//  iFixYouri Front Desk
//
//  Created by Sam Elder on 11/9/17.
//  Copyright © 2017 Sam Elder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var options = ["Check in", "View device status", "Make a payment"]

    @IBOutlet weak var tableViewLanding: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableViewLanding.delegate = self
        tableViewLanding.dataSource = self
        
        initUi()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initUi() {
        
        self.navigationController?.navigationBar.backgroundColor = ui.mainClor
        self.navigationController?.navigationBar.barTintColor = ui.mainClor
        self.navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let sender = options[indexPath.row]
        
        print(sender)
        
        //Change to switch later
        if(sender == "Check in") {
            
            
            performSegue(withIdentifier: "idCheckIn", sender: sender)
            
            
        }
        
        if(sender == "View device status") {
            
            performSegue(withIdentifier: "idCheckStatus", sender: sender)
            
            
        }
        
        if(sender == "Make a payment") {
            
            
            //performSegue(withIdentifier: "idCheckIn", sender: sender)
            
            performSegue(withIdentifier: "idMakePayment", sender: sender)

            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableViewLanding.dequeueReusableCell(withIdentifier: "cellOption", for: indexPath) as? OptionCell {
            
            let myCell = options[indexPath.row]
            
            //cell.updateUI(_update: myCell)
            
            cell.updateUI(label: options[indexPath.row])
            
            
            
            return cell
            
        } else {
            
            print("Error cell")
            return UITableViewCell()
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.identifier == "idCheckIn" {
//            
//            if let destination = segue.destination as? CheckInViewController {
//                
//                //destination.selectedItem = Products[tableView.indexPathForSelectedRow!.row]
//                
//            }
//        }
        
        if segue.identifier == "idDeviceStatus" {
            
            if let destination = segue.destination as? DeviceStatusViewController {
                
                //destination.selectedItem = Products[tableView.indexPathForSelectedRow!.row]
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return options.count
        
    }
    
    
    
   

}



extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
