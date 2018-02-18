//
//  Reports.swift
//  Demo
//
//  Created by Kyriakos S. on 7/2/17.
//  Copyright © 2017 Kyriakos S. All rights reserved.
//

import UIKit

class Reports: UIViewController, UITableViewDataSource {
    var takis = String()
    var fetchedCountry = [Country]()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchText: UITextField!
    
 override func viewDidLoad() {
        
        
      //  self.tableView.reloadData()
        
        tableView.dataSource = self
         let url = URL(string: "http://cir.di.ionio.gr/~p13stav/publicanswerios.php" )
        
        URLSession.shared.dataTask(with:url!, completionHandler: {(data, response, error) in
            guard let data = data, error == nil else { return }
            
            do {
              //  fetching users' answers from the json script
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves) as! NSArray
              
                for eachedFetchedCountry in json {
                    let eachCountry = eachedFetchedCountry as! [String:Any]
                    
                    let country = eachCountry["answer_1"] as! String
                    let capital = eachCountry["answer_2"] as! String
                    let trackid = eachCountry["answer_3"]    as! String
                   
                    let imageurl = eachCountry["image_posted"]    as! String
                    
                  
                    let userid = eachCountry["user_name"] as! String
                    let answer4 = eachCountry["answer_4"] as! String
                    let answer5 = eachCountry["answer_5"] as! String
                    let answer6 = eachCountry["answer_6"] as! String
                    let latitude = eachCountry["latitude_posted"] as! String
                    let longitude = eachCountry["longitude_posted"] as! String
                    
                    self.fetchedCountry.append(Country(country: country, captial: capital, trackId : trackid, imageUrl : imageurl, userID : userid, answer4: answer4, answer5: answer5, answer6: answer6, latitude: latitude, longitude: longitude))
                 
                    
                }
                
                //    print(posts)
                DispatchQueue.main.async() {
                    self.tableView.reloadData()
                }
               
            } catch let error as NSError {
                print(error)
            }
        }).resume()
        

        
        
        super.viewDidLoad()
       
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchedCountry.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ReportsTableViewCell
        //creating the table
        cell.trackTitle.text = fetchedCountry[indexPath.row].capital
        cell.artistName.text = fetchedCountry[indexPath.row].contry
        cell.trackId.text = fetchedCountry[indexPath.row].trackid
        cell.useridnt.text = fetchedCountry[indexPath.row].userid
        cell.answer4.text = fetchedCountry[indexPath.row].answer4
        cell.answer5.text = fetchedCountry[indexPath.row].answer5
        cell.answer6.text = fetchedCountry[indexPath.row].answer6
        cell.latitude.text = fetchedCountry[indexPath.row].latitude
        cell.longitude.text = fetchedCountry[indexPath.row].longitude
 
        var testurlimage = fetchedCountry[indexPath.row].imageurl
        //let result = String(str.characters.dropLast(2))
         let stripped = String(testurlimage.characters.dropFirst(2))
       
        
 //working with the url to accept the selected image for each user
 let imageUrlString1 = "http://cir.di.ionio.gr/~p13stav/" + stripped  //dummy url
        print (imageUrlString1)
        let imageUrlString = imageUrlString1
        let imageUrl:URL = URL(string: imageUrlString)!
       
        
        // imageload
        DispatchQueue.global(qos: .userInitiated).async {
            
            let imageData:NSData = NSData(contentsOf: imageUrl)!
            
            // 
            DispatchQueue.main.async {
                let image = UIImage(data: imageData as Data)
             
                cell.firimage.image = image
            }
        }
     
        
        
        
        return cell

    }
  
 
   
 
}
//class to accept users' answers  from the server
class Country{
    var contry : String
    var capital : String
    var trackid : String
    var imageurl : String
    var userid : String
    var answer4 : String
    var answer5 : String
    var answer6 : String
    var latitude : String
    var longitude : String
  
    
    init(country : String , captial : String, trackId : String, imageUrl : String, userID : String, answer4: String, answer5: String , answer6: String , latitude: String , longitude: String) {
        self.contry = country
        self.capital = captial
        self.trackid = trackId
        self.imageurl = imageUrl
        self.userid = userID
        self.answer4 = answer4
        self.answer5 = answer5
        self.answer6 = answer6
        self.latitude = latitude
        self.longitude = longitude
     
    }
    
}


   
