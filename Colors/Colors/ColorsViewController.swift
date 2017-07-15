//
//  ColorsViewController.swift
//  Colors
//
//  Created by Leo Kim on 7/12/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let colorArray = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    let bgColorArray = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colorArray.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let bgCell = bgColorArray[indexPath.row]
        
        cell.textLabel?.text = colorArray[indexPath.row]
        
//        setting the contentView's background color sets only the left and right margins
//        better to just set the cell's backgrounds color (.backgroundColor) which changes the whole thing.
//        cell.contentView.backgroundColor = bgCell
        
        cell.backgroundColor = bgCell
        
        return cell
    }

}
