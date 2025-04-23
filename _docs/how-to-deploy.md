---
draft: false
title: 'How to Deploy'
---

*Warning: this is a work in progress, and the process isn't complete.*

## How to deploy 

These instructions only apply to the static Hugo website that powers the majority of the content on www.antif4.com and is served via an nginx instance runnin gon a VPS. 

### Step 1. Generate a deploy package

Deploy packages are stored in `./deploy` and are checked into the repo. To create a new deploy package run:

`npm run deploy`

### Step 2. Commit/Push repo to origin

From root of repo: 

`git add -a`
`git commit`
`git push`

### Step 3. Clone repo on www.antif4.com

*TBD* - this is currently manual

### Step 4. Deploy new package to www.antif4.com

*TBD*

## F.A.Q.

### Why are the deploys checked into the repo? 

For several reasons:

- This allows the repo itself to be used as a communication mechanism. The server just clones the repo and copies out of the deploy directory. No hugo install required. 
- We can use these copies, in the future, to allow users to easily review the history of the site. Heck, even allow web access to this file list would be suffient. Technically, the history of the website is available in this git repo, but that is too hard for our users to search though. It would practically be hidden. 
