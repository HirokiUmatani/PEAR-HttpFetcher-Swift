//
//  PEAR-HttpFetcher-Swift.swift
//  HttpFetcher-Swift
//
//  Created by hirokiumatani on 2015/11/03.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//
import UIKit

public class HttpFetcher: NSObject,NSURLSessionDelegate
{
    /**
     async http reqest GET
     */
    public func asyncFetchGET(
        urlString urlString:String ,
        success:(NSData) -> Void ,
        failed:(NSError) -> Void)
    {
        let config:NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session:NSURLSession = NSURLSession(configuration: config, delegate: self, delegateQueue: NSOperationQueue.mainQueue())
        let url:NSURL = NSURL(string: urlString)!
        let urlRequest:NSMutableURLRequest = NSMutableURLRequest(URL: url)
        urlRequest.HTTPMethod = "GET"
        urlRequest.timeoutInterval = 15
        let task = session.dataTaskWithRequest(urlRequest)
        {
            (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
            dispatch_async(dispatch_get_main_queue(),
            {
                if(error == nil)
                {
                    let httpResp:NSHTTPURLResponse = response as! NSHTTPURLResponse
                    if(httpResp.statusCode == 200)
                    {
                        success(data!)
                    }
                }
                else
                {
                    failed(error!)
                }
            })
            
        }
        task.resume()
    }
    
    /**
     sync http reqest GET
     */
    public func syncFetchGET(
        urlString urlString:String ,
        success:(NSData) -> Void ,
        failed:(NSError) -> Void)
    {
        let config:NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session:NSURLSession = NSURLSession(configuration: config, delegate: self, delegateQueue: NSOperationQueue.mainQueue())
        let url:NSURL = NSURL(string: urlString)!
        let urlRequest:NSMutableURLRequest = NSMutableURLRequest(URL: url)
        urlRequest.HTTPMethod = "GET"
        urlRequest.timeoutInterval = 15
        let task = session.dataTaskWithRequest(urlRequest)
            {
                (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
                
                if(error == nil)
                {
                    let httpResp:NSHTTPURLResponse = response as! NSHTTPURLResponse
                    if(httpResp.statusCode == 200)
                    {
                        success(data!)
                    }
                }
                else
                {
                    failed(error!)
                }
        
                
        }
        task.resume()
    }
    
    /**
     async http reqest POST
     */
    public func asyncFetchPOST(
        urlString urlString:String ,
        parameter param:NSData!,
        success:(NSData) -> Void ,
        failed:(NSError) -> Void)
    {
        let config:NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session:NSURLSession = NSURLSession(configuration: config, delegate: self, delegateQueue: NSOperationQueue.mainQueue())
        let url:NSURL = NSURL(string: urlString)!
        let urlRequest:NSMutableURLRequest = NSMutableURLRequest(URL: url)
        urlRequest.HTTPMethod = "POST"
        urlRequest.timeoutInterval = 15
        urlRequest.HTTPBody = param
        
        let task = session.dataTaskWithRequest(urlRequest)
            {
                (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
                dispatch_async(dispatch_get_main_queue(),
                    {
                        if(error == nil)
                        {
                            let httpResp:NSHTTPURLResponse = response as! NSHTTPURLResponse
                            if(httpResp.statusCode == 200)
                            {
                                success(data!)
                            }
                        }
                        else
                        {
                            failed(error!)
                        }
                })
                
                
        }
        task.resume()
    }
    
    /**
     sync http reqest POST
     */
    public func syncFetchPOST(
        urlString urlString:String ,
        parameter param:NSData!,
        success:(NSData) -> Void ,
        failed:(NSError) -> Void)
    {
        let config:NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session:NSURLSession = NSURLSession(configuration: config, delegate: self, delegateQueue: NSOperationQueue.mainQueue())
        let url:NSURL = NSURL(string: urlString)!
        let urlRequest:NSMutableURLRequest = NSMutableURLRequest(URL: url)
        urlRequest.HTTPMethod = "POST"
        urlRequest.timeoutInterval = 15
        urlRequest.HTTPBody = param
        
        let task = session.dataTaskWithRequest(urlRequest)
            {
                (data:NSData?, response:NSURLResponse?, error:NSError?) -> Void in
                
                if(error == nil)
                {
                    let httpResp:NSHTTPURLResponse = response as! NSHTTPURLResponse
                    if(httpResp.statusCode == 200)
                    {
                        success(data!)
                    }
                }
                else
                {
                    failed(error!)
                }
                
                
                
        }
        task.resume()
    }



}
