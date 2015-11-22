//
//  ViewController.swift
//  HttpFetcher-Swift
//
//  Created by hirokiumatani on 2015/11/03.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let fetcher:HttpFetcher = HttpFetcher()
        fetcher.asyncFetch(
            urlString: "http://pear.chat",
            success:
            {
                (data:NSData)
                -> Void in
            
            })
            {
                (error:NSError)
                -> Void in
            }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()

    }
}

