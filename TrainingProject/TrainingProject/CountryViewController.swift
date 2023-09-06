//
//  CountryViewController.swift
//  TrainingProject
//
//  Created by Consultant on 9/5/23.
//

import UIKit

protocol NetworkAction {
    func getData(countries: [Country]?, error: Error?)
}

class CountryViewController: UIViewController, UITableViewDataSource, NetworkAction {
     
    @IBOutlet weak var tableView: UITableView!
    
    var countries : [Country]?
    let networkProtocol = NetworkProtocol()
    let networkClosure = NetworkClosure()

    override func viewDidLoad() {
        super.viewDidLoad()
        networkClosure.getCountry { countries, error in
            self.countries = countries
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
        tableView.dataSource = self
        networkProtocol.getCountry()
    }
    
    func getData(countries: [Country]?, error: Error?) {
        
        self.countries = countries
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryTableViewCell", for: indexPath) as? CountryTableViewCell
        
        guard let countries else {
            return UITableViewCell()
        }
        
        let name = countries[indexPath.row].name
        let code = countries[indexPath.row].code
        let capital = countries[indexPath.row].capital
        let language = countries[indexPath.row].language.name
        let region = countries[indexPath.row].region
        let currency = countries[indexPath.row].currency.name
        let currencySymbol = countries[indexPath.row].currency.symbol
        
        cell?.region.text = "\(region) | \(code)"
        cell?.country.text = "\(name)"
        cell?.capital.text = "Country Capital: \(capital)"
        cell?.language.text = "Country National Language: \(language)"
        cell?.currency.text = "Country Currency: \(currencySymbol ?? "") \(currency)"
        
        return cell ?? UITableViewCell()
    }
}
