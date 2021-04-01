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

// Synchonous
let x = 1 + 1
let y = 2

// Asynchonous


class ImageModel{
    
    private let BASE_URL = "https://api.unsplash.com"
    
    private let ACCESS_TOKEN = "7lTssHXtuhTjrF9BLcXhpvHei_Cnh5hORB__1nHxEf8"
    
    static let shared = ImageModel()
    
    func getRandomImage(onSuccess: @escaping (Image) -> Void)  {
        
        // Make an HTTP request to Unsplah to get back a random image
        if let url = URL(string: "\(BASE_URL)/photos/random"){
            var urlRequest = URLRequest(url: url)
            //  Set the authroization header with my access token
            urlRequest.setValue("Client-ID \(ACCESS_TOKEN)", forHTTPHeaderField: "Authorization")
            
            // Step 2
            URLSession.shared.dataTask(with: urlRequest) { (data, response, err) in
                
                // Step 5
                if let data = data{
                    // We have data!! But it's only 0s and 1s ='(
                    // We can convert 0s and 1s to Swift object
                    print("data \(data)")
                    
                    do{
                        let image = try JSONDecoder().decode(Image.self, from: data)
                        print("image \(image)")
                        
                        // Step 6
                        onSuccess(image)
                        
                    } catch {
                        print("something went wrong with decoding \(err)")
                    }
                    
                }
            }.resume()
            
            // Step 3
            // code after resume() gets executed immediately
        }
    }
    
}
