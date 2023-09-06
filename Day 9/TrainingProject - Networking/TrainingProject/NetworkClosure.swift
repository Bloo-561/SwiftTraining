//
//  NetworkClosure.swift
//  TrainingProject
//
//  Created by Consultant on 9/6/23.
//

import Foundation

class NetworkClosure {
    var countries: [Country]?
    
    func getCountry(completionHandler: @escaping ([Country]?, Error?)-> Void) {
        guard let url = URL(string: "https://gist.githubusercontent.com/peymano-wmt/32dcb892b06648910ddd40406e37fdab/raw/db25946fd77c5873b0303b858e861ce724e0dcd0/countries.json") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        let urlSession = URLSession(configuration: URLSessionConfiguration.default)
        
        let dataTask = urlSession.dataTask(with: urlRequest) {
            data, urlSession, error in
            
            guard let data = data, error == nil else {
                return completionHandler(nil,error)
            }
            
            let decoder = JSONDecoder()
            do {
                self.countries = try decoder.decode([Country].self, from: data)
                completionHandler(self.countries, nil)
            } catch {
                return completionHandler(nil, error)
            }
        }
        dataTask.resume()
    }
}
