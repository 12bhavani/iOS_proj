//
//  ViewController.swift
//  product_TV
//
//  Created by Bhavani Kongari on 4/8/25.
//

import UIKit
class Product{
    var productName:String
    var productDesc:String
    
    init(productName: String, productDesc: String) {
        self.productName = productName
        self.productDesc = productDesc
    }
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prodArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create the cell
        let cell = tableViewOL.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)//indexPath is 0-4 indexes of array in this case
        
        //populate the cell
        cell.textLabel?.text = prodArray[indexPath.row].productName
        
        //return the cell
        return cell
    }
    
    @IBOutlet weak var tableViewOL: UITableView!
    
    var prodArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.dataSource = self
        tableViewOL.delegate = self
        
        
        let prod1 = Product(productName: "iPhone 13", productDesc: "This is iphone 13")
        let prod2 = Product(productName: "MacBook Pro", productDesc: "This is MacBook Pro")
        let prod3 = Product(productName: "AirPods Pro", productDesc: "This is AirPods Pro")
        let prod4 = Product(productName: "Apple watch", productDesc: "This is Apple watch")
        let prod5 = Product(productName: "Samsung", productDesc: "This is Samsung")
        
        prodArray.append(prod1)
        prodArray.append(prod2)
        prodArray.append(prod3)
        prodArray.append(prod4)
        prodArray.append(prod5)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ProductDetailSegue"{
            var destination = segue.destination as! ResultViewController
            destination.product = prodArray[(tableViewOL.indexPathForSelectedRow?.row)!]
            
        }
    }

}

