## www.picoluna.com 's nginx setting in docker.

Just for referrer.

But you can modify the settings to adjust your project.

## Features

1. Full CORS support without evil if statement.
2. Pass client ip and client protocol behind load balance with X-Forwarded-For and X-Forwarded-Proto.
3. Basic safe settings.
4. Better performance settings.
5. Redirect from http to https.
6. Better static file cache settings.
7. html5 history api support with lua.(No need to manually add directory for support and avoid rewrite or internal redirect cycle error)
8. Support webp, but not ever tested.

## About webp solution

[Serve files with nginx conditionally](http://www.lazutkin.com/blog/2014/02/23/serve-files-with-nginx-conditionally/)

[Recipe: serve WebP with nginx conditionally](https://github.com/uhop/grunt-tight-sprite/wiki/Recipe:-serve-WebP-with-nginx-conditionally)

[WebP, content negotiation and CloudFront](https://www.friism.com/webp-content-negotiation-cloudfront/)

[Best Practices for Using the Vary Header](https://www.fastly.com/blog/best-practices-using-vary-header)
