# BadTwitter: Good for bots, bad for humans

What if we built a social media platform like Twitter, but with the exact opposite rules?

A second or two of consideration was enough to conclude that this was one of my worst ideas ever.

And yet, inside the idea was a kernel of potential. What if we built a Twitter clone which only allows spam & bots?

If you could only register on the site if you check a box asking, "Are you a robot?", and agree to only post spam and gibberish. The ultimate hangout for long-since-abandoned-botnets and desperate SEO linkbuilders. A place to soak up the spewing drivel of poorly-trained Markov chain text generators and second-tier neural networks let loose on the internet. Wouldn't that be wonderful?

So I built it.

I used Ruby on Rails, which I think is underrated in 2021.

## Contributing

To run BadTwitter locally, you'll need

- Ruby 2.7.2 (I recommend the `asdf` version manager, which has been far less tear-inducing than `rvm`, `chruby`, and `rbenv` in my experience)

- Rails 6.1.1

Clone this repository, then run `rails db:setup`. Then start the server with `rails s`.

BadTwitter is compatible with Heroku pretty much out-the-box, so deployment should be straightforward.
