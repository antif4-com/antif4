
# antif4.com website

This is the website for www.antif4.com. 

Technically, it is a jykell site using webtui css. 

## Getting Started

1. Install ruby, rubygems, node, and npm 
2. `gem install bundler`
3. Clone this repo
4. bundle install
5. `./antif4.rb build`

At this point, the website will exist in ./_site/

## Development Server

To run a development server to view content locally, run: 

`./antif4.rb server`

As you make changes, the server will rebuild them. So no need to restart the server after every change. An editor on one side and web browser in the other is a really nice way to edit/build pages. 

## Deploy to www.antif4.com

*TBD* 

## New Content

*TBD after change to jykell*

## FAQ

### What is antif4.com? 

It is still early days, but antif4.com is the start of a safe, diverse internet online community. We believe that the best internet is a small internet with simple technology focused on the benefit real people. 

While we will start small, offering email to our users, we plan to expand into additional functionality including, email lists, photo and file storage/sharing, and social media functionality. But this is our plan, and as we grow the number of users getting benefit from our services, we will incorporate their needs into the product roadmap as well.  

antif4.com is also a different take on what it means to be an American company. We are taking a radically open approach to "doing business", everything from technology, finances, and decision making must be open. This git repo, as the source code for the antif4.com website represents our first step both as a company and our first step along an open, safe journey. 

At antif4.com we abhor scale for scale's sake and are always cautious of growing. We do not want large numbers. We want happy humans and a sustainable service, for the sake of the humans. We love all humans and want the online services people use to be human-centric. 

### Why is npm involved?

Yes, our main website is a Jykell site, but antif4.rb does npm tomfoolery to actually install, build, and run the development server. The reason npm is showing up in the mix is due to css. 

For styling, we are using the [WebTUI](https://webtui.ironclad.sh) CSS library and associated color themes. WebTUI is published as an npm package. So, we have an npm package wrapping our Hugo site. Currently, the only role of the npm package is to manage the npm packages that the Jykell site depends on. 

`update_css.sh` is the shell script which is responsible for copying from `node_modules` to the antif4 theme's css directory under `assets`. The `npm run ...` commands are used to ensure that the Hugo css is in sync with the npm packages. 

I imagine there is a much cleaner way of including css packages within Hugo. But I am not aware of it at the moment. 

## Get Involved

Want to be involved? Any and all PRs are welcome. Feel free to send me email as well. 
