//
//  ViewController.swift
//  Demo
//
//  Created by Kyriakos S. on 7/2/17.
//  Copyright © 2017 Kyriakos S. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    var lamp = ""
    var done = false
    
    override func viewDidAppear(_ animated: Bool) {
       
       // self.presentLoggedInScreen()
        
    }
    
    @IBAction func lampa(_ sender: Any) {
      loginuser()
    
        
        
    
    }
    
   
   //Login Function
    func loginuser(){
       
        if self.emailText.text != "" {
            if self.passwordText.text != ""{
                //place your url on the next following line
                var request = URLRequest(url: URL(string: "http://cir.di.ionio.gr/~p13stav/loginuseriOS.php")!)
                UserDefaults.standard.set(self.emailText.text, forKey: "emailvar")
                
                request.httpMethod = "POST"
                let postString = "Username=" + self.emailText.text! + "&Password=" + self.passwordText.text!
             
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
                      let  alert5 = UIAlertController(title: "Connection Error", message:"Lost connection to Server", preferredStyle: UIAlertControllerStyle.alert)
                        alert5.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                        self.present(alert5, animated: true, completion: nil)
                        print("response = \(String(describing: response))")
                        // check for http errors
                        //   print("statusCode should be 200, but is \(httpStatus.statusCode)")
                        print("response = \(String(describing: response))")
                        
                        
                    }
                    
                    let responseString = String(data: data, encoding: .utf8)

                    print("responseString = \(String(describing: responseString))")
                  
                    
                    
                    //print("responseString = \(String(describing: responseString))")
                    if (responseString?.contains("Logged In"))!{
                        self.lamp = "logged in"
                        //run loop until done = true sucessfull login
                        print(self.lamp)
                        self.done = true
                        
                    }else{
                        //run loop until done = true unsucessfull login
                        self.done = true
                    }
                    
                  
                   
                }
                task.resume()
            repeat {
                RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
            } while !done
                
                if self.lamp != "logged in"{
                    
                    let alert4 = UIAlertController(title: "Error", message: "Wrong Username or Password", preferredStyle: UIAlertControllerStyle.alert)
                    alert4.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert4, animated: true, completion: nil)
                    
                }
            }else{
                let alert3 = UIAlertController(title: "Error", message: "Please enter your Password", preferredStyle: UIAlertControllerStyle.alert)
                alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert3, animated: true, completion: nil)
                
            }
        checkforview()
        }else{
            
            let alert3 = UIAlertController(title: "Error", message: "Plese enter your Username", preferredStyle: UIAlertControllerStyle.alert)
            alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert3, animated: true, completion: nil)
        }
       
    }
    
    func checkforview(){
        if self.lamp == "logged in"{
            presentLoggedInScreen()
        }

    
    }
    //change screen if login was successful
    func presentLoggedInScreen(){
        
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loggedInVC:loggedInViewController = storyboard.instantiateViewController(withIdentifier: "loggedInViewController") as! loggedInViewController
        loggedInVC.email = emailText.text!
        self.present(loggedInVC, animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        
       self.emailText.keyboardType = UIKeyboardType.emailAddress
       self.emailText.delegate = self
        self.passwordText.delegate = self
        super.viewDidLoad()
        
        
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
        return (true)
        
    }
}

