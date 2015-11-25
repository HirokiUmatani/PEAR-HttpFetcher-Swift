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
        /* HTTP SYNC GET*/
        let syncfetcherG:HttpFetcher = HttpFetcher()
        syncfetcherG.syncFetchGET(
            urlString: "http://blog.pear.chat",
            success: { (data:NSData)
                -> Void in
                NSLog("HTTP SYNC GET \n%@", NSString(data:data, encoding:NSUTF8StringEncoding)!)
            })
            {
                (error:NSError)
                -> Void in
        }
        
        
        /* HTTP ASYNC GET*/
        let asyncfetcherG:HttpFetcher = HttpFetcher()
        asyncfetcherG.asyncFetchGET(
            urlString: "http://pear.chat",
            success:
            {
                (data:NSData)
                -> Void in
                NSLog("HTTP ASYNC GET \n%@",  NSString(data:data, encoding:NSUTF8StringEncoding)!)
            })
            {
                (error:NSError)
                -> Void in
        }
        
        /* HTTP SYNC POST*/
        let syncfetcherP:HttpFetcher = HttpFetcher()
        syncfetcherP.syncFetchPOST(
            urlString: "http://blog.pear.chat",
            parameter:nil,
            success:
            {
                (data:NSData)
                -> Void in
                NSLog("HTTP SYNC POST \n%@",  NSString(data:data, encoding:NSUTF8StringEncoding)!)
            })
            {
                (error:NSError)
                -> Void in
        }
        
        /* HTTP ASYNC POST*/
        let asyncfetcherP:HttpFetcher = HttpFetcher()
        asyncfetcherP.asyncFetchPOST(
            urlString: "http://pear.chat",
            parameter:nil,
            success:
            {
                (data:NSData)
                -> Void in
                NSLog("HTTP ASYNC POST \n%@",  NSString(data:data, encoding:NSUTF8StringEncoding)!)
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

