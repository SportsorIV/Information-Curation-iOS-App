//
//  AccountCreate.swift
//  Demo
//
//  Created by Kyriakos S. on 7/3/17.
//  Copyright © 2017 Kyriakos S. All rights reserved.
//

import UIKit



class AccountCreate: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordText1: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    func presentLoggedInScreen(){
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInVC:loggedInViewController = storyboard.instantiateViewController(withIdentifier: "loggedInViewController") as! loggedInViewController
        self.present(loggedInVC, animated: true, completion: nil)
        loggedInVC.email = emailText.text!
        
    }

    
    
    
    
    func createAcc(){
       var created = false
       var done = false
        //check your texrfields first
        if emailText.text == "" {
            let alert3 = UIAlertController(title: "Error", message: "Please enter a Username", preferredStyle: UIAlertControllerStyle.alert)
            alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert3, animated: true, completion: nil)
            return
            
        }
        
        if passwordText.text == "" {
            let alert3 = UIAlertController(title: "Error", message: "Please enter a Password", preferredStyle: UIAlertControllerStyle.alert)
            alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert3, animated: true, completion: nil)
            return
            
        }
        
        if passwordText1.text == "" {
            let alert3 = UIAlertController(title: "Error", message: "Please enter a Password", preferredStyle: UIAlertControllerStyle.alert)
            alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert3, animated: true, completion: nil)
            return
            
        }
        
        if passwordText.text != passwordText1.text{
            let alert3 = UIAlertController(title: "Error", message: "Passwords don't match", preferredStyle: UIAlertControllerStyle.alert)
            alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert3, animated: true, completion: nil)
            return
            
        }
        if passwordText.text!.count < 8 {
            let alert3 = UIAlertController(title: "Error", message: "Password must be at least 8 characters long", preferredStyle: UIAlertControllerStyle.alert)
            alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert3, animated: true, completion: nil)
            return
            
            
        }
        
          
        
        
            //place your on the next line
            var request = URLRequest(url: URL(string: "http://cir.di.ionio.gr/~p13stav/createuseriOS.php")!)
        
            UserDefaults.standard.set(self.emailText.text, forKey: "emailvar")
        
            request.httpMethod = "POST"
            let postString = "Username=" + self.emailText.text! + "&Password=" + self.passwordText.text!
            
            //to image url apo to firebase exei "&token..."
            //sportsor&lastname=fapas&email=byebye@email.com"
            
            
            request.httpBody = postString.data(using: .utf8)
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    let alert3 = UIAlertController(title: "Network Error", message: "Lost connection to Server", preferredStyle: UIAlertControllerStyle.alert)
                    alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert3, animated: true, completion: nil)

                    // check for fundamental networking error
                    //  print("error=\(String(describing: error))")
                    return
                }
                
                if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
                  let alert3 = UIAlertController(title: "Connection Error", message: (String(describing: response)), preferredStyle: UIAlertControllerStyle.alert)
                    alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert3, animated: true, completion: nil)
                    
                    
                    // check for http errors
                    //   print("statusCode should be 200, but is \(httpStatus.statusCode)")
                    print("response = \(String(describing: response))")
                    
                    
                }
                
                let responseString = String(data: data, encoding: .utf8)
                print("responseString = \(String(describing: responseString))")
                if (responseString?.contains("User Created"))!{
                   done = true
                   created = true
                    
                }else{
                    done = true
                   
                   let alert = UIAlertController(title: "Connection Error", message: (String(describing: response)), preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    
                    
                }
            }
            task.resume()
                repeat {
                    RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
                } while !done
            
            
            
            if created == true {
                
                let alert2 = UIAlertController(title: "User Created", message: "Thank you for creating your account", preferredStyle: UIAlertControllerStyle.alert)
                alert2.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(UIAlertControler) -> Void in
                    self.presentLoggedInScreen()
                    
                }))
                self.present(alert2, animated: true, completion: nil)
                    }
            
      
       
        
    }
    
    
    @IBAction func createAccount(_ sender: Any) {
       
                createAcc()
       
    }

    
    override func viewDidLoad() {
        errorLabel.text = ""
        self.emailText.keyboardType = UIKeyboardType.emailAddress
        self.emailText.delegate = self
        self.passwordText.delegate = self
        self.passwordText1.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailText.resignFirstResponder()
        passwordText.resignFirstResponder()
        passwordText1.resignFirstResponder()
        return (true)
        
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
