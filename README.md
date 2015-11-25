### PEAR-HttpFetcher-Swift [![GitHub license](https://img.shields.io/badge/LICENSE-MIT%20LICENSE-blue.svg)](https://github.com/HirokiUmatani/PEAR-HttpFetcher-Swift/LICENSE) [![CocoaPods](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://cocoapods.org/pods/PEAR-HttpFetcher-Swift) [![CocoaPods](https://img.shields.io/cocoapods/v/PEAR-HttpFetcher-Swift.svg)](https://cocoapods.org/pods/PEAR-HttpFetcher-Swift)  

====
### Overview
This library is Http request for ios.

### Description
This support is syncronous request and asynchronous request.  
and request method get and post.

### Installation
<code>
pod 'PEAR-HttpFetcher-Swift'
</code>

### Usage
<code>
/* HTTP SYNC GET*/
        let fetcher:HttpFetcher = HttpFetcher()
        fetcher.syncFetchGET(
            urlString: "http://pear.chat",
            success:
            {
                (data:NSData)
                -> Void in
                NSLog("HTTP SYNC GET \n%@",  NSString(data:data, encoding:NSUTF8StringEncoding)!);
            })
            {
                (error:NSError)
                -> Void in
            }
        
        /* HTTP ASYNC GET*/
        fetcher.asyncFetchGET(
            urlString: "http://pear.chat",
            success:
            {
                (data:NSData)
                -> Void in
                NSLog("HTTP ASYNC GET \n%@",  NSString(data:data, encoding:NSUTF8StringEncoding)!);
            })
            {
                (error:NSError)
                -> Void in
        }
        
        /* HTTP SYNC POST*/
        fetcher.syncFetchPOST(
            urlString: "http://pear.chat",
            parameter:nil,
            success:
            {
                (data:NSData)
                -> Void in
                NSLog("HTTP SYNC POST \n%@",  NSString(data:data, encoding:NSUTF8StringEncoding)!);
            })
            {
                (error:NSError)
                -> Void in
        }
        
        /* HTTP ASYNC POST*/
        
        fetcher.asyncFetchPOST(
            urlString: "http://pear.chat",
            parameter:nil,
            success:
            {
                (data:NSData)
                -> Void in
                NSLog("HTTP ASYNC POST \n%@",  NSString(data:data, encoding:NSUTF8StringEncoding)!);
            })
            {
                (error:NSError)
                -> Void in
        }
</code>

### Document
[document library](http://cocoadocs.org/docsets/PEAR-HttpFetcher-Swift)

### Licence
[MIT](https://github.com/HirokiUmatani/PEAR-HttpFetcher-Swift/blob/master/LICENSE)

### Author
[Hiroki Umatani](https://github.com/HirokiUmatani)
