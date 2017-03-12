---
title: Tim Likes to Teach
subtitle: Tim Likes to Teach was a personal project to teach design and frontend development. I built a website with WordPress to publish courses and handle membership.
date: 2013-03-11 18:44
hero: /uploads/2013/03/timlikestoteach-full.png
color: 383438
role: Design, Frontend Development, WordPress Development
type: Website
---
In 2013, I built a site called Tim Likes to Teach. The purpose of this personal project was to teach design and frontend development in a down-to-earth way.

I loved the idea, but there were a few major problems:

1. Courses needed to have a one to many relationship with videos
2. Parts of the site needed to be different depending on whether a person was logged in and had a membership
3. It all had to work whether the person logged in had a membership or only purchased a single course

I made this all with WordPress and I learned several things along the way.

## Publishing Courses

As I look back on this project, this is the part I overcomplicated the most. I knew courses needed to have a one to many relationship with videos. In other words, one course would have assigned to it many individual videos. Doing this in a non-hack way isn't the easiest. If I were to do it again, I'd have a separate category for each course, and then assign each video to that category.

<blockquote class="content__pullquote">
<p>With the saturated market of web apps and tutorials out there, it’s so convenient to just sit back and watch a web professional work and talk about their favorite tools and why they rely on them.</p>
<small><strong>Karl Noelle</strong>, Customer</small>
</blockquote>

In practice, I created a custom post type for courses and course videos. Then, using the [Posts 2 Posts plugin](https://wordpress.org/plugins/posts-to-posts/), I connected videos to their correct course. I then displayed all the individual videos connected to the course when a user was logged in and had purchased it. If the person wasn't logged in, the page displayed marketing information to get people to purchase.

I used the [Advanced Custom Fields](https://www.advancedcustomfields.com/) plugin to add other important information to both courses and videos. Information like the difficulty level, course length, and price were all easy to add and helped potential customers decide whether the course was right for them.

## Membership

When I originally launched Tim Likes to Teach, I sold the first course individually. I sold it for $8 which I learned later was too cheap. Even with that pricing, I made more than $200 in the first few weeks. When I published the second course, I launched a subscription so people would have access to all the courses.

<blockquote class="content__pullquote">
<p>I think it’s a crazy service to the industry and our community that you’re willing to explain how to do things and how you personally work. …it’s an invaluable resource for me to learn the best practices that actually work for someone who does it every day.</p>
<small><strong>Kyle Roderick</strong>, Customer</small>
</blockquote>

I chose to use [Memberful](https://memberful.com/) for the entire membership system. Memberful is a great web app that is secure and offers a WordPress plugin. Together with this plugin, I could easily show or hide content based on subscription status. Like this:

```php
<?php
  $product_name = get_field('integration_slug');
  if ( has_memberful_subscription ( '27-tim-likes-to-teach-subscription' ) || has_memberful_product ( $product_name ) ) : ?>
```

The Memberful plugin took care of creating WordPress accounts for each person who purchased as well as all the payment information. It truly was an ideal setup.

## Conclusion

I had so much fun creating this. It taught me some valuable lessons about data relationships, and designing for a few different scenarios. I also had the privilege of helping people learn more about development.

You can look at all [the code I wrote for this project on GitHub](https://github.com/smithtimmytim/Tim-Likes-to-Teach). If you'd like to see some of my more recent videos, [you can find them on my YouTube channel](https://www.youtube.com/channel/UC1IRnf7JYYUkWqPO8wx_QNQ).
