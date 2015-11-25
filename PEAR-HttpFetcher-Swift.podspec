Pod::Spec.new do |s|
   s.name     = 'PEAR-HttpFetcher-Swift'
   s.version  = '1.0.0'
   s.platform = :'ios', '8.0'
   s.license  = 'MIT'
   s.summary  = 'Http fetcher library of swift'
   s.homepage = 'https://github.com/HirokiUmatani/PEAR-HttpFetcher-Swift'
   s.author   = { "HirokiUmatani" => "info@pear.chat" }
   s.source   = { :git => 'https://github.com/HirokiUmatani/PEAR-HttpFetcher-Swift.git', :tag => s.version.to_s }
   s.source_files = 'PEAR-HttpFetcher-Swift/*.swift'
   s.requires_arc = true
end

