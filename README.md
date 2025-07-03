# Apollo-ImprovedCustomApi
[![Build and release](https://github.com/alhale2196/Apollo-HaleCustomApi/actions/workflows/buildapp.yml/badge.svg)](https://github.com/alhale2196/Apollo-HaleCustomApi/actions/workflows/buildapp.yml)

Apollo for Reddit with in-app configurable API keys, multi-account support and several fixes and improvements. Tested on version 1.15.11.

## Features
- Use Apollo for Reddit with your own Reddit and Imgur API keys
- Supports multiple Reddit accounts
- Working Imgur integration (view, delete, and upload single images and multi-image albums) 
- Handle x.com links as Twitter links so that they can be opened in the Twitter app
- Suppress unwanted messages on app startup (wallpaper popup, in-app announcements, etc)
- Support /s/ share links (reddit.com/r/subreddit/s/xxxxxx) natively
- Support media share links (reddit.com/media?url=) natively
- **Fully working** "New Comments Highlightifier" Ultra feature
- Use generic user agent for requests to Reddit
- FLEX debugging
- Support custom external sources for random and trending subreddits
- Working v.redd.it video downloads

## Known issues
- Apollo Ultra features may cause app to crash 
- Imgur multi-image upload
    - Uploads usually fail on the first attempt but subsequent retries should succeed
- Share URLs in private messages and long-tapping them still open in the in-app browser

## Sideloadly
Recommended configuration:
- **Use automatic bundle ID**: *unchecked*
    - Enter a custom one (e.g. com.foo.Apollo)
- **Signing Mode**: Apple ID Sideload
- **Inject dylibs/frameworks**: *checked*
    - Add the .deb file using **+dylib/deb/bundle**
    - **Cydia Substrate**: *checked*
    - **Substitute**: *unchecked*
    - **Sideload Spoofer**: *unchecked*

## Build
### Requirements
- [Theos](https://github.com/theos/theos)

1. `git clone https://github.com/alhale2196/Apollo-HaleCustomApi`
2. `cd Apollo-HaleCustomApi`
3. `git submodule update --init --recursive`
4. `make package` or `make package THEOS_PACKAGE_SCHEME=rootless` for rootless variant

## Credits
- [Apollo-CustomApiCredentials](https://github.com/EthanArbuckle/Apollo-CustomApiCredentials) by [@EthanArbuckle](https://github.com/EthanArbuckle)
- [ApolloAPI](https://github.com/ryannair05/ApolloAPI) by [@ryannair05](https://github.com/ryannair05)
- [ApolloPatcher](https://github.com/ichitaso/ApolloPatcher) by [@ichitaso](https://github.com/ichitaso)
- [GitHub Copilot](https://github.com/features/copilot)