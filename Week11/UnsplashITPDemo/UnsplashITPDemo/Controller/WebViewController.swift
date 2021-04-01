//
//  WebViewController.swift
//  UnsplashITPDemo
//
//  Created by Lee Bennett on 3/31/21.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinner.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinner.stopAnimating()
    }
    
   // var url: String
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner.startAnimating()
        webView.navigationDelegate = self

        if let myURL = URL(string:"https://www.apple.com") {
            let myRequest = URLRequest(url: myURL)
            webView.load(myRequest)
        }
        
        webView.stopLoading()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
