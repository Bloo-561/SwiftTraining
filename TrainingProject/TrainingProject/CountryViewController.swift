//
//  CountryViewController.swift
//  TrainingProject
//
//  Created by Consultant on 9/5/23.
//

import UIKit

class CountryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var countries : [Country]?

    override func viewDidLoad() {
        super.viewDidLoad()
        getCountry()
        tableView.dataSource = self
        tableView.delegate = self
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
        
        cell?.country.text = "Region: \(region) | \(code) \(name)"
        cell?.capital.text = "Country Capital: \(capital)"
        cell?.language.text = "Country National Language: \(language)"
        cell?.currency.text = "Country Currency: \(currencySymbol ?? "") \(currency)"
        
        return cell ?? UITableViewCell()
    }
    
    func getCountry() {
        
        guard let url = URL(string: "https://gist.githubusercontent.com/peymano-wmt/32dcb892b06648910ddd40406e37fdab/raw/db25946fd77c5873b0303b858e861ce724e0dcd0/countries.json") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
                
                let dataTask = urlSession.dataTask(with: urlRequest) { data, urlResponse, error in
                    
                    guard let data = data else { return }
                    
                    let decoder = JSONDecoder()
                    do {
                        self.countries = try decoder.decode([Country].self, from: data)
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }

                    } catch {
                        print(error)
                    }
                }
                dataTask.resume()
    }
}
