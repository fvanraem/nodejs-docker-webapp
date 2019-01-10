## Websocket test application

This is a really basic websocket test application for deployment on Openshift.

Navigating to \<yourroute\>/testpage using a browser which
supports websockets and the [URL](https://url.spec.whatwg.org/) API, will
load a page which connects back to the same deployment and sends a test
string to the websocket service.

Alternatively you can directly connect to the service using your own
websocket client, specifying
a websocket "echo-protocol" subprotocol, and send any message to be echoed.

