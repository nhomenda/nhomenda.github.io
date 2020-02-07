---
layout: post
title: "GitHub Pages Code Snippets"
date: 2020-02-07
---
<div class="blurb">
<p>Snippet 1: <code>index.html</code></p>
<pre class="prettyprint pre-scrollable"><code>&lt;!DOCTYPE html&gt;
&lt;html&gt;
	&lt;head&gt;
		&lt;title&gt;NAME, Web Developer&lt;/title&gt;
	&lt;/head&gt;
	&lt;body&gt;
		&lt;nav&gt;
    		&lt;ul&gt;
        		&lt;li&gt;&lt;a href="/"&gt;Home&lt;/a&gt;&lt;/li&gt;
	        	&lt;li&gt;&lt;a href="/about"&gt;About&lt;/a&gt;&lt;/li&gt;
        		&lt;li&gt;&lt;a href="/cv"&gt;CV&lt;/a&gt;&lt;/li&gt;
        		&lt;li&gt;&lt;a href="/blog"&gt;Blog&lt;/a&gt;&lt;/li&gt;
    		&lt;/ul&gt;
		&lt;/nav&gt;
		&lt;div class="container"&gt;
    		&lt;div class="blurb"&gt;
        		&lt;h1&gt;Hi there, I'm NAME!&lt;/h1&gt;
				&lt;p&gt;Here's a blurb about me and my site!&lt;/p&gt;
    		&lt;/div&gt;&lt;!-- /.blurb --&gt;
		&lt;/div&gt;&lt;!-- /.container --&gt;
		&lt;footer&gt;
    		&lt;ul&gt;
        		&lt;li&gt;&lt;a href="mailto:your-email@gmail.com"&gt;email&lt;/a&gt;&lt;/li&gt;
        		&lt;li&gt;&lt;a href="https://github.com/NAME"&gt;github.com/NAME&lt;/a&gt;&lt;/li&gt;
			&lt;/ul&gt;
		&lt;/footer&gt;
	&lt;/body&gt;
&lt;/html&gt;</code></pre>

<p>Snippet 2: <code>css/main.css</code></p>
<pre class="prettyprint pre-scrollable">
body &lbrace;
    margin: 60px auto;
    width: 70%;
&rbrace;
nav ul, footer ul &lbrace;
    font-family:'Helvetica', 'Arial', 'Sans-Serif';
    padding: 0px;
    list-style: none;
    font-weight: bold;
&rbrace;
nav ul li, footer ul li &lbrace;
    display: inline;
    margin-right: 20px;
&rbrace;
a &lbrace;
    text-decoration: none;
    color: #999;
&rbrace;
a:hover &lbrace;
    text-decoration: underline;
&rbrace;
h1 &lbrace;
    font-size: 3em;
    font-family:'Helvetica', 'Arial', 'Sans-Serif';
&rbrace;
p &lbrace;
    font-size: 1.5em;
    line-height: 1.4em;
    color: #333;
&rbrace;
footer &lbrace;
    border-top: 1px solid #d5d5d5;
    font-size: .8em;
&rbrace;

ul.posts &lbrace; 
    margin: 20px auto 40px; 
    font-size: 1.5em;
&rbrace;

ul.posts li &lbrace;
    list-style: none;
&rbrace;
</pre>

<p>Snippet 3: <code>_layouts/default.html</code></p>
<pre class="prettyprint pre-scrollable"><code>&lt;!DOCTYPE html&gt;
	&lt;html&gt;
		&lt;head&gt;
			&lt;title&gt;&lbrace;&lbrace; page.title &rbrace;&rbrace;&lt;/title&gt;
			&lt;!-- link to main stylesheet --&gt;
			&lt;link rel="stylesheet" type="text/css" href="/css/main.css"&gt;
		&lt;/head&gt;
		&lt;body&gt;
			&lt;nav&gt;
	    		&lt;ul&gt;
	        		&lt;li&gt;&lt;a href="/"&gt;Home&lt;/a&gt;&lt;/li&gt;
		        	&lt;li&gt;&lt;a href="/about"&gt;About&lt;/a&gt;&lt;/li&gt;
	        		&lt;li&gt;&lt;a href="/cv"&gt;CV&lt;/a&gt;&lt;/li&gt;
	        		&lt;li&gt;&lt;a href="/blog"&gt;Blog&lt;/a&gt;&lt;/li&gt;
	    		&lt;/ul&gt;
			&lt;/nav&gt;
			&lt;div class="container"&gt;
			
			&lbrace;&lbrace; content &rbrace;&rbrace;
			
			&lt;/div&gt;&lt;!-- /.container --&gt;
			&lt;footer&gt;
	    		&lt;ul&gt;
	        		&lt;li&gt;&lt;a href="mailto:your-email@gmail.com"&gt;email&lt;/a&gt;&lt;/li&gt;
	        		&lt;li&gt;&lt;a href="https://github.com/NAME"&gt;github.com/NAME&lt;/a&gt;&lt;/li&gt;
				&lt;/ul&gt;
			&lt;/footer&gt;
		&lt;/body&gt;
	&lt;/html&gt;</code></pre>
	<p>Snippet 4: New <code>index.html</code></p>
	<pre class="prettyprint pre-scrollable"><code>---
layout: default
title: "NAME, Web Developer"
---
&lt;div class="blurb"&gt;
	&lt;h1&gt;Hi there, I'm NAME!&lt;/h1&gt;
	&lt;p&gt;Here's a blurb about me and my site!&lt;/p&gt;
&lt;/div&gt;&lt;!-- /.blurb --&gt;</code></pre>
	
	<p>Snippet 5: <code>_layouts/post.html</code></p>
	<pre class="prettyprint pre-scrollable"><code>---
layout: default
---
&lt;h1&gt;&lbrace;&lbrace; page.title &rbrace;&rbrace;&lt;/h1&gt;
&lt;p class="meta"&gt;&lbrace;&lbrace; page.date | date_to_string &rbrace;&rbrace;&lt;/p&gt;

&lt;div class="post"&gt;
  &lbrace;&lbrace; content &rbrace;&rbrace;
&lt;/div&gt;</code></pre>
	
	<p>Snippet 6: <code>_posts/2019-02-22-my-site-launched.md</code></p>
	<pre class="prettyprint pre-scrollable"><code>---
layout: post
title: "NAME, Web Developer, launches site"
date: 2019-02-22
---

Here is my GitHub Pages website! It's powered by &lbrack;Jekyll&rbrack;&lpar;http://jekyllrb.com&rpar; and I can use Markdown to author my posts. It actually is a lot easier than I thought it was going to be.</code></pre>
	<p>Snippet 7: <code>blog/index.html</code></p>
	<pre class="prettyprint pre-scrollable"><code>---
layout: default
title: "NAME's Blog"
---
	&lt;h1&gt;&lbrace;&lbrace; page.title &rbrace;&rbrace;&lt;/h1&gt;
	&lt;ul class="posts"&gt;

	  &lbrace;&percnt; for post in site.posts &percnt;&rbrace;
	    &lt;li&gt;&lt;span&gt;&lbrace;&lbrace; post.date | date_to_string &rbrace;&rbrace;&lt;/span&gt; &raquo; &lt;a href="&lbrace;&lbrace; post.url &rbrace;&rbrace;" title="&lbrace;&lbrace; post.title &rbrace;&rbrace;">&lbrace;&lbrace; post.title &rbrace;&rbrace;&lt;/a&gt;&lt;/li&gt;
	  &lbrace;&percnt; endfor &percnt;&rbrace;
	&lt;/ul&gt;</code></pre>
	
	<p>Snippet 8: <code>blog/atom.xml</code></p>
	<pre class="prettyprint pre-scrollable"><code>---
layout: feed
---
&lt;?xml version="1.0" encoding="utf-8"?&gt;
&lt;feed xmlns="http://www.w3.org/2005/Atom"&gt;

	&lt;title&gt;NAME's Blog&lt;/title&gt;
	&lt;link href="http://NAME.github.io/blog/atom.xml" rel="self"/&gt;
	&lt;link href="http://NAME.github.io/blog"/&gt;
	&lt;updated&gt;&lbrace;&lbrace; site.time | date_to_xmlschema &rbrace;&rbrace;&lt;/updated&gt;
	&lt;id&gt;http://NAME.github.io/blog&lt;/id&gt;
	&lt;author&gt;
		&lt;name&gt;NAME&lt;/name&gt;
		&lt;email&gt;your-email@gmail.com&lt;/email&gt;
	&lt;/author&gt;

	&lbrace;&percnt; for post in site.posts &percnt;&rbrace;
		&lt;entry&gt;
			&lt;title&gt;&lbrace;&lbrace; post.title &rbrace;&rbrace;&lt;/title&gt;
			&lt;link href="http://NAME.github.io&lbrace;&lbrace; post.url &rbrace;&rbrace;"/&gt;
			&lt;updated&gt;&lbrace;&lbrace; post.date | date_to_xmlschema &rbrace;&rbrace;&lt;/updated&gt;
			&lt;id&gt;http://NAME.github.io&lbrace;&lbrace; post.id &rbrace;&rbrace;&lt;/id&gt;
			&lt;content type="html"&gt;&lbrace;&lbrace; post.content | xml_escape &rbrace;&rbrace;&lt;/content&gt;
		&lt;/entry&gt;
	&lbrace;&percnt; endfor &percnt;&rbrace;

&lt;/feed&gt;</code></pre>
<p><a href="https://guides.github.com">A helpful resource on all things GitHub</a></p>
</div><!-- /.blurb -->
