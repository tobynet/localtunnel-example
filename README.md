# An example of [localtunnel](https://github.com/defunctzombie/localtunnel)

The `localtunnel` is ...

> localtunnel exposes your localhost to the world for easy testing and sharing! No need to mess with DNS or deploy just to have others test out your changes.  

via [defunctzombie/localtunnel](https://github.com/defunctzombie/localtunnel)

## Requirements

* [Vagrant](http://www.vagrantup.com/) 1.4 or lator
    * [vagrant-serverspec plugin](https://github.com/jvoorhis/vagrant-serverspec)
* [VirtualBox](https://www.virtualbox.org/) 4.3.x or lator
* [Ruby](https://www.ruby-lang.org/) 1.9 or lator

## Instllations and getting started

```bash
~/tmp$ vagrant plugin install vagrant-serverspec
~/tmp$ git clone https://github.com/toooooooby/localtunnel-example.git && cd localtunnel-example
~/tmp/localtunnel-example$ bundle install
~/tmp/localtunnel-example$ vagrant up
  :
~/tmp/localtunnel-example$ rake test_tunnel
vagrant ssh -c "lt --port 80"
your url is: https://xxxxxxxxx.localtunnel.me
~/tmp/localtunnel-example$ # open https://xxxxxxxxx.localtunnel.me
(Stop to CTRL-C)
```

![](https://gist.githubusercontent.com/toooooooby/9172769/raw/8785412c4bf33e50cbae7569fa728d41d3a749ba/localtunnel-preview.jpg)


