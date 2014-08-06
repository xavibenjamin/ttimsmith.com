---
layout: post
title: Jekyll Post Automaters
categories: links
custom_type: link
custom_url: https://github.com/ttimsmith/Jekyll-Post-Automaters
alias: /links/jekyll-post-automaters
hidden: true
---
Turns out, 'automaters' isn't a word. Anyway, this weekend, I [moved this blog to Jekyll]({{ site.url}}/articles/moving-over-to-jekyll/). I'm a sucker for making things easier, so I created some scripts and templates to automate the process of creating a new post. The original script was created by [Cody Krieger](http://blog.codykrieger.com/), but I made some simple modifications to make it all work with Alfred.

As an important note, the script **does not** add a date to the name of the file like Jekyll wants you to. The reason for that is, I work with a `_drafts` folder, and those files aren't supposed to have a date. I use a [great plugin by Jeffrey Sambells](http://jeffreysambells.com/2013/02/01/jekyll-draft-publishing-plugin) which puts a date on my files when they're ready to publish.  If you don't want it to work that way, you just replace the `filename` variable with `"#{Time.now.strftime('%Y-%m-%d')}-#{title.parameterize}.md"` and that will create a publish-ready file.

I'll be creating a screencast in the next couple days that will go step-by-step on setting all this up, but in the meantime, feel free to [@reply](https://twitter.com/ttimsmith) me on Twitter with any questions.
