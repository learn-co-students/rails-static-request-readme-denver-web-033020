
# Routing 

## Types of Routing 
There are two types of web routing: 
1. Static Routes (e.g. "about.html", "contact.html")
  * renders a view that does not change.
  * typically does _not_ recieve parameters 
2. Dynamic Routes
  * pages that accept parameters 
  * will render differently depending on the content of the parameters 

## The Routing Process
### What is Routing 
A high level, when you routing in a Rails application, the process is as follows:
1. A URL is entered into the browser; this is the HTTP request 
2. That URL is sent to the server wher the application's router interprets the request and sends a messag to the controller method. 
3. The controller communicates with the view file mapped to the controller method.
4. The server returns that HTTP response, which contains the page that can be viewed in the browser. 

### How Routing in Rails works
Remember: Everything in Rails works _by convention_, so for an about page to render properly, the following is required: 

1. A Route in the `config/routes.rb` folder that defines `/someText` maps to `controller_x#method_a`. In other words; the configuration says at `www.example.com/about`, that should map to a conroller called `StaticController` (which should inherit from `ApplicationController`). This would look like so: 
```rb 
# /config/routes.rb 
get 'about', to: 'static#about'

# /app/controllers/static_controller.rb 
class StaticController < ApplicationController
end
```
Breaking this down: 
* `get` specifies the HTTP communication protocol to be used. 
* `about` specifies the path following the end of the domain declaration 
* `static#about` specifies the controller, followed by `#` and which _action_ (think method) should be called on that controller. 

# Rendering 
## What is rendering?
When arriving at an HTML page, that page must be **rendered* or displayed. 

## Types 
There are two types of rendering:
1. Implicit Rendering - Rails lets you dictate which view file you want to have the controller _action_ mapped to. 
2. Implicit Rendering - Rails follows a standard convention that automatically looks for a view the same file name as the controller action. 

In Rails, when you want to `render` a page, you use the `rendor` method and supply the page name that you would like to `render`, which would look like this:
```rb
class StaticController < ApplicationController
  def about
    render "some_page"
  end
end
```