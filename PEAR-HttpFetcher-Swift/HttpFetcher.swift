//
//  PEAR-HttpFetcher-Swift.swift
//  HttpFetcher-Swift
//
//  Created by hirokiumatani on 2015/11/03.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//
import UIKit

public class HttpFetcher: NSObject
{
    /**
     async http reqest
     */
    public func asyncFetch(
        urlString urlString:String ,
        success:(NSData) -> Void ,
        failed:(NSError) -> Void)
    {
        
        let url:NSURL = NSURL(string:urlString)!

        let request:NSURLRequest  = NSURLRequest(
            URL: url)

        NSURLConnection.sendAsynchronousRequest(
            request,
            queue: NSOperationQueue.mainQueue())
            {
                (res:NSURLResponse?,
                data:NSData?,
                error:NSError?) -> Void in
                
                if (error != nil)
                {
                    failed(error!)
                }
                else
                {
                    success(data!)
                }
            }
    }
}
