//
//  ImageModel.swift
//  UnsplashITPDemo
//
//  Created by Lee Bennett on 3/29/21.
//

import Foundation


struct Image : Decodable {
    let id: String
    let width: Int
    let height: Int
    let color: String
    let urls: ImageUrl
}

struct ImageUrl : Decodable {
    let raw: String
    let full: String
    let regular: String
    let small: String
    let thumb: String
}


class ImageModel{
    
    private let BASE_URL = "https://api.unsplash.com"
    
    private let ACCESS_TOKEN = "MzgsqdfHhZ2WN2tHyS_urwqPAgmUlqqKP67W1s_NTpQ"
    
    static let shared = ImageModel()
    
    func getRandomImage() {
        
        // Make an HTTP request to Unsplah to get back a random image
        
        if let url = URL(string: "\(BASE_URL)/photos/random"){
            var urlRequest = URLRequest(url: url)
            //  Set the authroization header with my access token
            urlRequest.setValue("Client-ID \(ACCESS_TOKEN)", forHTTPHeaderField: "Authorization")
            URLSession.shared.dataTask(with: urlRequest) { (data, response, err) in
                if let data = data{
                    // We have data!! But it's only 0s and 1s ='(
                    // We can convert 0s and 1s to Swift object
                    print("data \(data)")
                    
                    do{
                        let image = try JSONDecoder().decode(Image.self, from: data)
                        print("image \(image)")
                    } catch {
                        print("something went wrong with decoding \(err)")
                    }
                    
                }
            }.resume()
        }
    }
    
}
