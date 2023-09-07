//
//  NetworkProtocol.swift
//  TrainingProject
//
//  Created by Consultant on 9/6/23.
//

import Foundation

class NetworkProtocol {
    
    var delegate: NetworkAction?
    
    func getCountry() {
        guard let url = URL(string: "https://gist.githubusercontent.com/peymano-wmt/32dcb892b06648910ddd40406e37fdab/raw/db25946fd77c5873b0303b858e861ce724e0dcd0/countries.json") else {
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        
        let dataTask = urlSession.dataTask(with: urlRequest) {
            data, urlSession, error in
            
            guard let data = data else {
                self.delegate?.getData(countries: nil, error: error)
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let countries = try decoder.decode([Country].self, from: data)
                self.delegate?.getData(countries: countries, error: nil)
            } catch {
                self.delegate?.getData(countries: nil, error: error)
            }
        }
        dataTask.resume()
    }
}
