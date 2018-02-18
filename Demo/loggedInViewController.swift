//
//  loggedInViewController.swift
//  Demo
//
//  Created by Kyriakos S. on 7/2/17.
//  Copyright © 2017 Kyriakos S. All rights reserved.
//

import UIKit

class loggedInViewController: UIViewController {

 var email = String()
    
    @IBOutlet weak var emaillabel: UILabel!
    
    @IBAction func logOut(_ sender: Any) {
        
         presentLoggedOutScreen()
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if email == ""{
         let takeemail = UserDefaults.standard.object(forKey: "emailvar") as? String
            emaillabel.text = "Welcome, " + takeemail!
        }else{
            emaillabel.text = "Welcome, " + email
        }
       
        
       
        // Do any additional setup after loading the view.
    }

    
    @IBAction func uploadDatabutton(_ sender: Any) {
        
       // performSegue(withIdentifier: "uploadData", sender: self)
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func presentLoggedOutScreen(){
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedOutVC:ViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(loggedOutVC, animated: true, completion: nil)
        
        
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
