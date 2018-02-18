//
//  UploadData.swift
//  Demo
//
//  Created by Kyriakos S. on 7/18/17.
//  Copyright © 2017 Kyriakos S. All rights reserved.
//

import UIKit




import CoreLocation





class UploadData: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate,UITextFieldDelegate,FusumaDelegate, CLLocationManagerDelegate {
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var testlabel: UILabel!
    var fetchedQuestions = [Question]()
    var question1an = String()
    var question2an = String()
    var question3an = String()
    var question4an = String()
    var question5an = String()
    var question6an = String()
    var takisgonias = String()
    
    var lamp = ""
    var done = false
    var done2 = false
    @IBOutlet weak var buttonimage2: UIButton!
    @IBOutlet weak var question1what: UILabel!
    @IBOutlet weak var question2what: UILabel!
    @IBOutlet weak var question4answer: UITextField!
    @IBOutlet weak var question3what: UILabel!
    @IBOutlet weak var question6answer: UITextField!
    @IBOutlet weak var question5answer: UITextField!
    @IBOutlet weak var question4what: UILabel!
    @IBOutlet weak var longtitudeloc: UILabel!
    @IBOutlet weak var latitudeloc: UILabel!
    @IBOutlet weak var question5what: UILabel!
    @IBOutlet weak var question6what: UILabel!
    
    var useremail  = String()
    let manager = CLLocationManager()
    
    @IBOutlet weak var buttonimage1: UIButton!
   
    
    var emailid = String()
    var emailidsep = String()
   // let userID : String = (Auth.auth().currentUser?.uid)!
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var imageimport: UIImageView!
    @IBOutlet weak var imageimport2: UIImageView!
    @IBOutlet weak var imageimport3: UIImageView!
    @IBOutlet weak var imageimport4: UIImageView!
    @IBOutlet weak var uploadtext2: UITextField!
    @IBOutlet weak var uploadText: UITextField!
    
    
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button23: UIButton!
    @IBOutlet weak var button34: UIButton!
    @IBOutlet weak var button45: UIButton!
    @IBOutlet weak var button56: UIButton!
    
    @IBOutlet weak var button12_2: UIButton!
    @IBOutlet weak var button23_2: UIButton!
    @IBOutlet weak var button34_2: UIButton!
    @IBOutlet weak var button45_2: UIButton!
    @IBOutlet weak var button56_2: UIButton!
    
    @IBOutlet weak var button12_3: UIButton!
    @IBOutlet weak var button23_3: UIButton!
    @IBOutlet weak var button34_3: UIButton!
    @IBOutlet weak var button45_3: UIButton!
    @IBOutlet weak var button56_3: UIButton!
    
    @IBOutlet weak var button12_4: UIButton!
    @IBOutlet weak var button23_4: UIButton!
    @IBOutlet weak var button34_4: UIButton!
    @IBOutlet weak var button45_4: UIButton!
    @IBOutlet weak var button56_4: UIButton!
    
    @IBOutlet weak var button12_5: UIButton!
    @IBOutlet weak var button23_5: UIButton!
    @IBOutlet weak var button34_5: UIButton!
    @IBOutlet weak var button45_5: UIButton!
    @IBOutlet weak var button56_5: UIButton!
    
    @IBOutlet weak var button12_6: UIButton!
    @IBOutlet weak var button23_6: UIButton!
    @IBOutlet weak var button34_6: UIButton!
    @IBOutlet weak var button45_6: UIButton!
    @IBOutlet weak var button56_6: UIButton!
    
    
  //you need to be able to change your color when a button is pressed
  //First Question
    @IBAction func button12pressed(_ sender: Any) {
        
        button12.backgroundColor = UIColor.green
        button23.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
    //    button56.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
       //tropos gia na ginei skiniko me api amma allaskoun erwtiseis 
        question1an = button12.currentTitle!
      
        print(question1an)
    }
    @IBAction func button23pressed(_ sender: Any) {
        button12.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23.backgroundColor = UIColor.green
        button34.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
     //   button56.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question1an = button23.currentTitle!
    }
    
    @IBAction func button34pressed(_ sender: Any) {
        button12.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34.backgroundColor = UIColor.green
        button45.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
      //  button56.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
       question1an = button34.currentTitle!

    }
    
    @IBAction func button45pressed(_ sender: Any) {
        button12.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45.backgroundColor = UIColor.green
     //   button56.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question1an = button45.currentTitle!
        
    }
    
    @IBAction func button566pressed(_ sender: Any) {
        button12.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56.backgroundColor = UIColor.green
        question1an = "56"

        
    }
  
//2nd Question
    @IBAction func button12_2pressed(_ sender: Any) {
        button12_2.backgroundColor = UIColor.green
        button23_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
     //   button56_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
       question2an = button12_2.currentTitle!
    }
    
    @IBAction func button23_2pressed(_ sender: Any) {
        button12_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_2.backgroundColor = UIColor.green
        button34_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
   //     button56_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
          question2an = button23_2.currentTitle!
    }
    
    @IBAction func button34_2pressed(_ sender: Any) {
        button12_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_2.backgroundColor = UIColor.green
        button45_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
   //     button56_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
         question2an = button34_2.currentTitle!
    }
    
    @IBAction func button45_2pressed(_ sender: Any) {
        button12_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_2.backgroundColor = UIColor.green
     //   button56_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
         question2an = button34_2.currentTitle!
    }
    
    @IBAction func button56_2pressed(_ sender: Any) {
        button12_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_2.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
    //    button56_2.backgroundColor = UIColor.green
         question2an = "56"
    }
    
    //third question
    
    @IBAction func button12_3pressed(_ sender: Any) {
        button12_3.backgroundColor = UIColor.green
        button23_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
   //     button56_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question3an = button12_3.currentTitle!

    }
    
    @IBAction func button23_3pressed(_ sender: Any) {
        button12_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_3.backgroundColor = UIColor.green
        button34_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
    //    button56_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
         question3an = button23_3.currentTitle!
    }
    
    @IBAction func button34_3pressed(_ sender: Any) {
        button12_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_3.backgroundColor = UIColor.green
        button45_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
    //    button56_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
         question3an = button34_3.currentTitle!
    }
    
    @IBAction func button45_3pressed(_ sender: Any) {
        button12_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_3.backgroundColor = UIColor.green
    //    button56_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question3an = button45_3.currentTitle!
    }
    
    @IBAction func button56_3pressed(_ sender: Any) {
        button12_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_3.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
   //     button56_3.backgroundColor = UIColor.green
        question3an = "56"
    }
 //4th question
    
    @IBAction func button12_4pressed(_ sender: Any) {
        button12_4.backgroundColor = UIColor.green
        button23_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question4an = "1-2"
    }
    
   
    @IBAction func button23_4pressed(_ sender: Any) {
        button12_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_4.backgroundColor = UIColor.green
        button34_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question4an = "2-3"
    }
    
    @IBAction func button34_4pressed(_ sender: Any) {
        button12_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_4.backgroundColor = UIColor.green
        button45_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question4an = "3-4"
    }
    
    @IBAction func button45_4pressed(_ sender: Any) {
        button12_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_4.backgroundColor = UIColor.green
        button56_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question4an = "4-5"
    }
    
    @IBAction func button56_4pressed(_ sender: Any) {
        button12_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_4.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_4.backgroundColor = UIColor.green
        question4an = "5-6"

    }
    
    //5th Question
    
    @IBAction func button12_5pressed(_ sender: Any) {
        button12_5.backgroundColor = UIColor.green
        button23_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question5an = "1-2"
        
    }
    
    @IBAction func button23_5pressed(_ sender: Any) {
        button12_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_5.backgroundColor = UIColor.green
        button34_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question5an = "2-3"
    }
    
    @IBAction func button34_5pressed(_ sender: Any) {
        button12_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_5.backgroundColor = UIColor.green
        button45_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question5an = "3-4"
    }
    
    @IBAction func button45_5pressed(_ sender: Any) {
        button12_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_5.backgroundColor = UIColor.green
        button56_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question5an = "4-5"
    }
    
    @IBAction func button56_5pressed(_ sender: Any) {
        button12_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_5.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_5.backgroundColor = UIColor.green
        question5an = "5-6"
    }
    
    //6th Question
    @IBAction func button12_6pressed(_ sender: Any) {
        button12_6.backgroundColor = UIColor.green
        button23_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question6an = "12"
    }
    
    @IBAction func button23_6pressed(_ sender: Any) {
        button12_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_6.backgroundColor = UIColor.green
        button34_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question6an = "23"
    }
    
    @IBAction func button34_6pressed(_ sender: Any) {
        button12_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_6.backgroundColor = UIColor.green
        button45_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question6an = "34"
    }
    
    @IBAction func button45_6pressed(_ sender: Any) {
        button12_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_6.backgroundColor = UIColor.green
        button56_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        question6an = "45"
    }
    
    @IBAction func button56_6pressed(_ sender: Any) {
        button12_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button23_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button34_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button45_6.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.29)
        button56_6.backgroundColor = UIColor.green
        question6an = "56"
    }
    
    
    
    
    
   
    
    
    
    @IBAction func datasend(_ sender: Any) {
      
       data_request()
        
    }
    
    func getquestions(){
       
      // var alert2 = UIAlertController()
        // place your url for the json encode on the next line
        let url = URL(string: "http://cir.di.ionio.gr/~p13stav/jsonencode.php" )
        
        URLSession.shared.dataTask(with:url!, completionHandler: {(data, response, error) in
           
            guard let data = data, error == nil else {
              
                
                    let alert2 = UIAlertController(title: "Error", message: "Connection to Server Lost", preferredStyle: UIAlertControllerStyle.alert)
                    alert2.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert2, animated: true, completion: nil)
                    
            
                
                
                return }
            
            do {
                
              
                
                //  indicator.startAnimating()
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves) as! NSArray
                // let posts = json["results"] as? [[String: Any]] ?? []
                for eachedFetchedCountry in json {
                    let eachCountry = eachedFetchedCountry as! [String:Any]
                    
                    self.question1what.text = eachCountry["Question1"] as? String
                    self.question2what.text = eachCountry["Question2"] as? String
                    self.question3what.text = eachCountry["Question3"] as? String
                    self.question4what.text = eachCountry["Question4"] as? String
                    self.question5what.text = eachCountry["Question5"] as? String
                    self.question6what.text = eachCountry["Question6"] as? String
                    
                 //   self.button12.titleLabel?.text = eachCountry["Button1_1"] as? String
                    self.button12.setTitle(eachCountry["Button1_1"] as? String, for: .normal)
                    self.button23.setTitle(eachCountry["Button1_2"] as? String, for: .normal)
                    self.button34.setTitle(eachCountry["Button1_3"] as? String, for: .normal)
                    self.button45.setTitle(eachCountry["Button1_4"] as? String, for: .normal)
                    
                    self.button12_2.setTitle(eachCountry["Button2_1"] as? String, for: .normal)
                    self.button23_2.setTitle(eachCountry["Button2_2"] as? String, for: .normal)
                    self.button34_2.setTitle(eachCountry["Button2_3"] as? String, for: .normal)
                    self.button45_2.setTitle(eachCountry["Button2_4"] as? String, for: .normal)
                    
                    self.button12_3.setTitle(eachCountry["Button3_1"] as? String, for: .normal)
                    self.button23_3.setTitle(eachCountry["Button3_2"] as? String, for: .normal)
                    self.button34_3.setTitle(eachCountry["Button3_3"] as? String, for: .normal)
                    self.button45_3.setTitle(eachCountry["Button3_4"] as? String, for: .normal)
                    self.done2 = true
                    
                          
                  
                }
                
                //    print(posts)
                DispatchQueue.main.async() {
                  
                }
                
            } catch let error as NSError {
                print(error)
            }
            
        }).resume()
        repeat {
            RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
        } while !done2
      
    }
  
    
        
    
    
    
    //WORKING WITH IMAGE
    func data_request(){
        
        var alert = UIAlertController()
        var checkerror = false
       // var fapes = false
        let jpegCompressionQuality: CGFloat = 0.9 // Set this to whatever suits your purpose
        if let base64String = UIImageJPEGRepresentation(imageimport.image!, jpegCompressionQuality)?.base64EncodedString() {
            
            alert = UIAlertController(title: "Please wait", message: "Uploading your data", preferredStyle: UIAlertControllerStyle.alert)
            self.present(alert, animated: true, completion: nil)
            var request = URLRequest(url: URL(string: "http://cir.di.ionio.gr/~p13stav/postdataiOS.php")!)
            self.useremail = UserDefaults.standard.object(forKey: "emailvar") as! String
            
            request.httpMethod = "POST"
            let postString1 = "User=" + self.useremail + "&question_1=" + self.question1an + "&question_2=" + self.question2an + "&question_3=" + self.question3an + "&question_4=" + self.question4answer.text! + "&question_5=" + self.question5answer.text! + "&question_6=" + self.question6answer.text!
            
            let postString2 = "&latitude=" + latitudeloc.text! + "&longitude=" + longtitudeloc.text! + "&image_1=" + base64String
            
            let postString = postString1 + postString2
            
            request.httpBody = postString.data(using: .utf8)
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {                                                 // check for fundamental networking error
                    alert.dismiss(animated: true, completion: {
                        let alert2 = UIAlertController(title: "Network Error", message: "Connection to Server lost", preferredStyle: UIAlertControllerStyle.alert)
                        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                        self.present(alert2, animated: true, completion: nil)
                    })
                    
                    return
                }
                
                if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                        alert.dismiss(animated: true, completion: {
                        let alert3 = UIAlertController(title: "Network Error", message: "Connection to Server lost", preferredStyle: UIAlertControllerStyle.alert)
                        alert3.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                        self.present(alert3, animated: true, completion: nil)
                    })
                }
               
               
                
                let responseString = String(data: data, encoding: .utf8)
                print("responseString = \(String(describing: responseString))")
                if (responseString?.contains("New record created successfully"))!{
                    self.done = true
                    
                }else{
                    self.done = true
                   
                    checkerror = true
                    
                }
            
            }
            task.resume()
            repeat {
                RunLoop.current.run(until: Date(timeIntervalSinceNow: 0.1))
            } while !done
          
        }
        if checkerror == false{
            alert.dismiss(animated: true, completion: {
                let alert = UIAlertController(title: "Upload Complete", message: "Thanks for sending your data", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            })
                
        }else{
            alert.dismiss(animated: true, completion: {
                let alert4 = UIAlertController(title: "Error", message: "Something went full lightbulb", preferredStyle: UIAlertControllerStyle.alert)
                alert4.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert4, animated: true, completion: nil)
            })
            
        }
            
          
           
            
        
        
        
       
    }
    
    
//fusuma image selector
    @IBAction func showimage(_ sender: Any) {
        let fusuma = FusumaViewController()
        
        fusuma.delegate = self 
        fusuma.cropHeightRatio = 0.6
        fusuma.defaultMode     = .library
        fusuma.allowMultipleSelection = true
        fusumaSavesImage = true
        
        self.present(fusuma, animated: true, completion: nil)
        
    }
    func fusumaImageSelected(_ image: UIImage, source: FusumaMode) {
        
        switch source {
            
        case .camera:
            
            print("Image captured from Camera")
            
        case .library:
            
            print("Image selected from Camera Roll")
            
        default:
            
            print("Image selected")
        }
        
        imageimport.image = image
    }
    
    func fusumaMultipleImageSelected(_ images: [UIImage], source: FusumaMode) {
        
        //  print("Number of selection images: \(images.count)")
        
        
        let i = images.count
        if (i==1){
            self.imageimport.image = images[0]
            self.imageimport2.image = nil
            self.imageimport3.image = nil
            self.imageimport4.image = nil

        
        }else if (i==2){
            self.imageimport.image = images[0]
            self.imageimport2.image = images[1]
            self.imageimport3.image = nil
            self.imageimport4.image = nil
 
        
        }else if (i==3){
        
            self.imageimport.image = images[0]
            self.imageimport2.image = images[1]
            self.imageimport3.image = images[2]
            self.imageimport4.image = nil
        
        }else if (i==4){
            self.imageimport.image = images[0]
            self.imageimport2.image = images[1]
            self.imageimport3.image = images[2]
            self.imageimport4.image = images[3]

        
        }else{
            let alert2 = UIAlertController(title: "Error", message: "Please select 4 images or less", preferredStyle: UIAlertControllerStyle.alert)
            alert2.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert2, animated: true, completion: nil)
            self.imageimport.image = nil
            self.imageimport2.image = nil
            self.imageimport3.image = nil
            self.imageimport4.image = nil

            
        }
        
               
        
        
    }
    
    func fusumaImageSelected(_ image: UIImage, source: FusumaMode, metaData: ImageMetadata) {
        
        print("Image mediatype: \(metaData.mediaType)")
        print("Source image size: \(metaData.pixelWidth)x\(metaData.pixelHeight)")
        print("Creation date: \(String(describing: metaData.creationDate))")
        print("Modification date: \(String(describing: metaData.modificationDate))")
        print("Video duration: \(metaData.duration)")
        print("Is favourite: \(metaData.isFavourite)")
        print("Is hidden: \(metaData.isHidden)")
        print("Location: \(String(describing: metaData.location))")
    }
    
    func fusumaVideoCompleted(withFileURL fileURL: URL) {
        
        print("video completed and output to file: \(fileURL)")
     //   self.fileUrlLabel.text = "file output to: \(fileURL.absoluteString)"
    }
    
    func fusumaDismissedWithImage(_ image: UIImage, source: FusumaMode) {
        
        switch source {
            
        case .camera:
            
            print("Called just after dismissed FusumaViewController using Camera")
            
        case .library:
            
            print("Called just after dismissed FusumaViewController using Camera Roll")
            
        default:
            
            print("Called just after dismissed FusumaViewController")
        }
    }
    
    func fusumaCameraRollUnauthorized() {
        
        print("Camera roll unauthorized")
        
        let alert = UIAlertController(title: "Access Requested",
                                      message: "Saving image needs to access your photo album",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Settings", style: .default) { (action) -> Void in
            
            if URL(string:UIApplicationOpenSettingsURLString) != nil {
                
              //  UIApplication.shared.openURL(url)
            }
        })
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
            
        })
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func fusumaClosed() {
        
        print("Called when the FusumaViewController disappeared")
    }
    
    func fusumaWillClosed() {
        
        print("Called when the close button is pressed")
    }

    
   /*
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info [UIImagePickerControllerOriginalImage] as? UIImage
        {
            imageimport.image = image
        }
        else{
            //error
        }
        self.dismiss(animated: true, completion: nil)
        
    }
 */
    
    @IBAction func showimage2(_ sender: Any) {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        image.allowsEditing = true
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info [UIImagePickerControllerOriginalImage] as? UIImage
        {
            imageimport.image = image
        }
        else{
            //error
        }
        if let image2 = info [UIImagePickerControllerOriginalImage] as? UIImage
        {
            imageimport2.image = image2
        }
        else{
            //error
        }
        
        
        
        self.dismiss(animated: true, completion: nil)
        
    }


    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
       print(location.coordinate.latitude)
        
        
        latitudeloc.text = "\(location.coordinate.latitude)"
        longtitudeloc.text = "\(location.coordinate.longitude)"
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.button12.titleLabel?.text = "LAMPA"
     //   self.uploadtext2.delegate = self
        
        emailid = (UserDefaults.standard.object(forKey: "emailvar") as? String)!
      // latitudeloc.text = "dasdsadasa"
        getquestions()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
       
    }
    override func viewDidAppear(_ animated: Bool) {
        
        
    }
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        uploadtext2.resignFirstResponder()
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
//class  to accept your questions for the server.
class Question{
        var question1 : String
        var question2 : String
        var question3 : String
        var question4 : String
        var question5 : String
        var question6 : String
        
        
    init(Question1 : String , Question2 : String, Question3 : String, Question4 : String, Question5 : String, Question6 : String) {
        self.question1 = Question1
        self.question2 = Question2
        self.question3 = Question3
        self.question4 = Question4
        self.question5 = Question5
        self.question6 = Question6
        
            
        }

}
}
