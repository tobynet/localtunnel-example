# An examle of [localtunnel](https://github.com/defunctzombie/localtunnel)

## Requirements

* Vagrant
* VirtualBox
* Ruby 1.9 or below

## Instllations and getting started

```bash
$ git clone https://github.com/toooooooby/localtunnel-examle.git && cd localtunnel-examle
$ bundle install
$ vagrant up
  :
$ rake test_tunnel
vagrant ssh -c "lt --port 80"
your url is: https://xxxxxxxxx.localtunnel.me
$ # open https://xxxxxxxxx.localtunnel.me
(Stop to CTRL-C)
```

![](https://gist.githubusercontent.com/toooooooby/9172769/raw/8785412c4bf33e50cbae7569fa728d41d3a749ba/localtunnel-preview.jpg)


