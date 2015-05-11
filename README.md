# Yolobar

[Hellobar](http://www.hellobar.com)-style notifications for Rails

## Installation

Add this line to your application's Gemfile:

    gem 'yolobar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yolobar

Now import the Javascript to the manifest section of your `application.js` file.

```javascript
  //= require jquery.bar.custom
  //= require helpers
```

Import the CSS, add to the manifest section of `application.css`

```
require yolobar
```
 
or if you're dealing with a SASS file :)
 
```scss
@import "yolobar";
```


## Usage

Now you've got some view helpers
```rails

<%= yolobar_alerts %>

<%= yolobar_notice %>

<%= yolobar_error %>

<%= yolobars %>

```

> `yolobars` includes all three notifications, 


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
