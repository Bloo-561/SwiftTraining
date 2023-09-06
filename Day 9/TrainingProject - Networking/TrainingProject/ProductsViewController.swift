//
//  ProductsViewController.swift
//  TrainingProject
//
//  Created by Consultant on 9/1/23.
//

import UIKit

class ProductsViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var responseJSON: ProductsData?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        readLocalFile()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return responseJSON?.products.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as? ProductsTableViewCell
        
        let product = responseJSON?.products[indexPath.row].title
        let description = responseJSON?.products[indexPath.row].description
        let price = String(responseJSON?.products[indexPath.row].price ?? 0)
        let rating = String(responseJSON?.products[indexPath.row].rating ?? 0)
        let brand = responseJSON?.products[indexPath.row].brand
        let category = responseJSON?.products[indexPath.row].category
        let thumbnail = responseJSON?.products[indexPath.row].thumbnail ?? ""
        
        tableCell?.product.text = product
        tableCell?.descript.text = description
        tableCell?.price.text = "$ \(price)"
        tableCell?.rating.text = rating
        tableCell?.brand.text = brand
        tableCell?.category.text = category
        tableCell?.thumbnail.image = getUIImage(url: thumbnail)
        
        return tableCell ?? UITableViewCell()
    }
    
    
    @MainActor
    func getUIImage(url: String) -> UIImage {
        var image: UIImage?
        if let url = URL(string: url) {
            
            let imageData: Data?
            do {
                imageData = try Data(contentsOf: url)
                if let data = imageData {
                    image = UIImage(data: data)
                    return image ?? UIImage()
                }
            } catch {
                print(error)
            }
        }
        return image ?? UIImage()
    }
    
    func readLocalFile() {
        guard let url = Bundle.main.url(forResource: "Products", withExtension: "json") else { return }
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            responseJSON = try decoder.decode(ProductsData.self, from: data)
            
        } catch {
            print("error")
        }
        
    }
    
}


