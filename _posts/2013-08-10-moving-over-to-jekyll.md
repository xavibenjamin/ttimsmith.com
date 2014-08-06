---
layout: post
title: Moving Over to Jekyll
category: articles
custom_type: post
alias: /articles/moving-over-to-jekyll
---
Yes, you read that correctly. I’ve moved this blog over to Jekyll. I don’t know why I didn't do this sooner.

If you don't know about [Jekyll](http://jekyllrb.com/), it's a static site generator built with Ruby. I was really scared to move over, mostly dreading the work that would go into migrating all of my WordPress posts.  I was able to easily create post formats with the help of some code that my pal [Adam Clark](http://avclark.com) pointed me to.

Although it did take me about 8 total hours to migrate and design, I already feel it's worth it.  I've created an Alfred Workflow that allows me to easily create new posts, with the appropriate [front-matter](http://jekyllrb.com/docs/frontmatter/), and I'll be recording a screencast on how to do that in the next couple days. The feed should redirect, but if not, you can grab it [here]({{ site.url }}/feed.xml).

I know this isn't a huge thing, but I'm so excited about doing this. I'm even thinking about creating a Tim Likes to Teach course on it. If you'd like to see the source of the site, you can [see it on Github](https://github.com/ttimsmith/ttimsmith.com). Feel free to look at the code and submit issues if you see wonky stuff (It's totally possible. Data migrations aren't my thing).

### So Are You Anti-WordPress Now?
Not at all. I love WordPress. I've been working with WordPress for years. However, I work on this site a lot, and I found myself very frustrated with how WordPress handles a simple blog. The honest truth, WordPress is too much for just a blog these days.

Using a web editor had become tiresome for me. I like writing posts in Byword. Byword has WordPress publishing support, but no support for post formats, and the process of setting custom fields is not really well done. So in the end, I had to write the post in Byword, and then go to the web editor anyway to set values for the posts.

With Jekyll, I type `jekyll  [post-format] [title]` in Alfred and a Markdown file is generated and opened for me to begin work. It's perfect.  Also, the speed of this site has dramatically increased. It's a thing of beauty.

If you're considering switching to Jekyll, I really recommend it. It's not difficult to dive in, and if you're a fan of optimized workflows, I think you'll love how time efficient this process is. If you have any questions, let me know, and I'll try to answer them.
