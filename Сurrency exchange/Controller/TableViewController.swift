//
//  ViewController.swift
//  Сurrency exchange
//
//  Created by Сергей Мартынов on 12.05.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    var exchangeModel = ExchangeDataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exchangeModel.loadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return exchangeModel.exchangeData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(exchangeModel.exchangeData[indexPath.row].Nominal) \(exchangeModel.exchangeData[indexPath.row].Name) \(exchangeModel.exchangeData[indexPath.row].Value) руб."
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
    }
}

