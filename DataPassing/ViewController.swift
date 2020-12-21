//
//  ViewController.swift
//  DataPassing
//
//  Created by Vinayak Balaji Tuptewar on 27/11/20.
//

import UIKit
struct Json: Decodable
{
    var name:String
   // var alpha2Code:String
    var alpha2Code: String
//    var id: Int
//    var userId: Int
//    var title: String
//    var completed: Bool
    
    
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    var detail: [Json] = []
    
    @IBOutlet weak var tableVieww: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        
    
        tableVieww.delegate = self
        tableVieww.dataSource = self
        get()
        
        
        
    }
    
    
    func get ()
    {
        print("Get has been called")
        let urlString = URL(string: "https://restcountries.eu/rest/v2/all")
        
        URLSession.shared.dataTask(with: urlString!) { (data, response, error) in
            
            do{
                self.detail=try!JSONDecoder().decode([Json].self, from: data!)
                DispatchQueue.main.async {
                    self.tableVieww.reloadData()
                }
//                for item in self.detail{
//                    print("name:\(item.name),alpha2Code: \(item.alpha2Code)")
//                }
            } catch{
                print("Error occurred in Json while printing")
            }
            
        }.resume()
   
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.detail.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        
        
        //cell.label1?.text = self.detail[indexPath.row].name
        //cell.label2?.text = self.detail[indexPath.row].alpha2Code
    
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        104
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(self.detail[indexPath.row].name)
//    }
    
    
    
}  //eoc

