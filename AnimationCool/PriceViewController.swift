//
//  PriceViewController.swift
//  AnimationCool
//
//  Created by Бекболат Куанышев on 07.04.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import UIKit

class PriceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var myTableView: UITableView!
    
    var titles = ["iPhone 5s", "MacBook Pro 13'", "iPhone 6", "Samsung G5"]
    var prices = ["130000$", "420000$", "160000$", "80000$"]
    
    var proccessor = ["A5", "Core i5", "A10", "A7"]
    var mpx = ["8mpx", "15mpx", "10mpx", "8mpx"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.titleLabel.text = titles[indexPath.row]
        cell.priceLabel.text = prices[indexPath.row]
        cell.proccessorLabel.text = proccessor[indexPath.row]
        cell.mpxLabel.text = mpx[indexPath.row]
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
