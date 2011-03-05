# NGiNX recipe for [Vlad the Deployer](https://github.com/seattlerb/vlad)

## Install

    gem install vlad-nginx

## Usage

    Vlad.load :app => :unicorn, :scm => :git, :web => :nginx

## Configuration

You specify the path to the NGiNX command by setting `:web_command`:

    set :web_command, "/path/to/nginx"

## Need sudo?

As I am writing this, both Vlads’ built-in apache recipe and vlad-nginx use `run` to run the remote commands. This means you need to do some trickery in order to have run your command under `sudo`:

    Vlad.load :web => :nginx

    set :run_as_sudo, [sudo_cmd, sudo_flags].flatten.compact.join(' ')
    set :web_command, "#{run_as_sudo} /path/to/nginx"

## Contributions

- [Matt Smith](https://github.com/matthewcalebsmith)

  Reminding me about the importance of READMEs, and bringing up the [issue with `sudo`](https://github.com/Burgestrand/vlad-nginx/issues#issue/1)