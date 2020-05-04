//
//  ViewController.swift
//  Profio Homework #9
//
//  Created by Blake Profio on 4/28/20.
//  Copyright © 2020 Blake Profio. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBAction func openSite(_ sender: Any) {
        
        if let url = URL(string: "https://www.nps.gov/stli/index.htm") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    @IBOutlet var webView: WKWebView!
    @IBOutlet weak var pdfView: WKWebView!
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myURL = URL(string:"https://www.nps.gov/stli/index.htm")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        
        if let pdfURL = Bundle.main.url(forResource: "1940",withExtension: "pdf", subdirectory: nil, localization: nil) {
            do {
            let data = try Data(contentsOf: pdfURL)
                pdfView.load(data, mimeType: "application/pdf",characterEncodingName:"", baseURL: pdfURL.deletingLastPathComponent())
                view.addSubview(pdfView)
            }catch{}}
        }
        
        
    }




