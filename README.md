
# antif4.com website

This is the website for www.antif4.com. 

Technically, it is a hugo site, with a custom theme (antif4) using webtui css. 

## Getting Started

1. Install hugo and node
2. Clone repo
3. npm i
4. npm run build

At this point, the website will exist in ./public/

## Development Server
To run a development server to view content locally, run: 

`npm run server`

As you make changes, the server will rebuild them. So no need to restart the server after every change. An editor on one side and web browser in the other is a really nice way to edit/build pages. 

## New Content

For now, posts are the only content and are very default. To create a new post, run:

`hugo new content posts/my-post-name.md`

A new post will be created in ./content/posts according to the name you pass. 

However, this is pure Hugo at this point. So for any questions about new content, formatting, templates, etc. [See Hugo Documentation](https://gohugo.io/documentation/).

## FAQ

**Why is npm involved?**
For styling, we are using the [WebTUI](https://webtui.ironclad.sh) CSS library and associated color themes. WebTUI is published as an npm package. So, we have an npm package wrapping our Hugo site. Currently, the only role of the npm package is to manage the npm packages that the Hugo site depends on. 

`update_css.sh` is the shell script which is responsible for copying from `node_modules` to the antif4 theme's css directory under `assets`. The `npm run ...` commands are used to ensure that the Hugo css is in sync with the npm packages. 
