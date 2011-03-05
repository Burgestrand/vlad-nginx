# Nginx for Vlad

See [Vlad the Deployer](rubyhitsquad.com/Vlad_the_Deployer.html)

## Description

Vlad plugin for Nginx support.

## Installation

    gem install vlad-git

## Usage

See Vlad's [Getting Started](hitsquad.rubyforge.org/vlad/doco/getting_started_txt.html) documentation.

In your Rakefile, load Vlad with the :web => :nginx

    begin
      require 'vlad'
      Vlad.load :app => :unicorn, :scm => :git, :web => :nginx
    rescue LoadError
      #do nothing
    end

In config/deploy.rb optionally add:

    set :nginx_use_sudo, true # this will prompt for your sudo password

## Contributors

* [Kim Burgestrand](https://github.com/Burgestrand)
* [Matt Smith](https://github.com/matthewcalebsmith)

## License
Copyright (c) 2010 Kim Burgestrand <http://github.com/Burgestrand>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
