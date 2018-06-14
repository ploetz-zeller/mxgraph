mxgraph
=======

mxGraph is a fully client side JavaScript diagramming library that uses SVG and HTML for rendering. [draw.io](https://www.draw.io) is an example that extends the functionality of this library. The [sources to draw.io](https://github.com/jgraph/draw.io) are also available.

Note this is the release repo. The development repo is on [Bitbucket](https://bitbucket.org/jgraph/mxgraph2). Submit PRs there.

If you want to build something like draw.io, [GraphEditor](https://jgraph.github.io/mxgraph/javascript/examples/grapheditor/www/index.html) is the best example to use as a base.

The npm build is [here](https://www.npmjs.com/package/mxgraph)

mxGraph supports IE 11, Chrome 43+, Firefox 45+, Safari 9.1.x, 10.1.x and 11.0.x, Opera 30+, Native Android browser 5.1.x+, the default browser in the current and previous major iOS versions (e.g. 11.x and 10.x) and Edge 31+.

mxGraph uses no third-party software, it requires no plugins and can be integrated in virtually any framework.

Getting Started
===============

In the root folder there is an index.html file that contains links to all resources. You can view the documentation online on the [Github pages branch](https://jgraph.github.io/mxgraph/). The key resources are the JavaScript user manual, the JavaScript examples and the JavaScript API specificiation.

Support
=======

There is a [mxgraph tag on Stack Overflow](http://stackoverflow.com/questions/tagged/mxgraph). Please ensure your questions adhere to the [SO guidelines](http://stackoverflow.com/help/on-topic), otherwise it will be closed.

License
=======

mxGraph is licensed under the Apache 2.0 license. We do not sell any other license, nor do we have an option for paid support.

History
=======

We created mxGraph in 2005 as a commercial project and it ran through to 2016 that way. Our USP was the support for non-SVG browsers, when that advantage expired we moved onto commercial activity around draw.io. mxGraph is pretty much feature complete, production tested in many large enterprises and stable for many years. We actively fix bugs and make minor improvements since it comprises the base of our draw.io stack.

Changes by Ploetz + Zeller GmbH
===============================

.jsbeautifyrc
- Added formatter configuration to ensure correct tab indentation and expanded braces styling formats

mxClient.js
- Change pointer-events for links, add all, remove none
- Set default fill for polylines
- Add epsilon comparison for edge smoothing

EditorUI.js
- Set menubar height to 0
- Deactivate menubar

Format.js
- Remove width for inner div in color button
- Set width for color button to 45px

Menus.js
- Use P+Z custom image upload dialog for Insert dropdown to toolbar
- Add Edit FreeText to context menu only when P+Z custom free text shapes are selected
- Add Edit Reference to context menu only when P+Z custom link shapes are selected 
- Add Add Image to context menu only when images are selected 

Sidebar.js
- Deactivated (uncommented) some palettes
- Don't use MSPointer events
- Specified toolbar offset to 150px
- Set correct toolbar offset and toolbar image offset

Toolbar.js
- Added Selection menu and layout menu to toolbar

grapheditor.txt and grapheditor_de.txt
- Added P+Z custom localizations