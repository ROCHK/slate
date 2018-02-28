---
title: Dasloop API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  # - http
  # - javascript

toc_footers:
  - <a href='https://github.com/lord/slate'>Documentation Powered by Slate</a>

includes:
  - projects
  - devices
  - workers
  - stats
  # - users

search: true
---

# Introduction

Welcome to the Dasloop API!

# Authentication

> Authentication Example (Node.js)

```javascript
// Install the firebase library by `npm install firebase` before adding the following code. 

// import the request library
var request = require('request');

// Initialize Firebase
var config = {
  apiKey: "AIzaSyCYofM8fX55YhbaHn6I-c5pymwJo8nBn_M",
  authDomain: "dasloop-25831.firebaseapp.com"
};
firebase.initializeApp(config);

// Sign in with email and password
firebase.auth().signInWithEmailAndPassword(email, password)
  .then(function(user) {
    // Signed in successfully
  })
  .catch(function(error) {
    var errorCode = error.code;
    var errorMessage = error.message;
    // ...
});

// After successful sign in
function everyRequest() {
  const URL = 'BASE_URL/api_you_want_to_use';
  if (firebase.auth().currentUser) {
    user.getToken().then(function(token) {
      request({
        uri: URL,
        headers: {
          Authorization: 'Bearer ' + token
        }
      }, function(err, response, body) {
        // some response
      });
    });
  }
}
```

We use firebase as our authentication service. To use our API, you need to get the firebase access token and attach the access token to every API request to our server.

The base URL for our API is:

`https://api.dasloop.com`

All API requests must be made over HTTPS. Calls made over plain HTTP will fail. API requests without authentication will also fail.

For more details, please visit <a href='https://firebase.google.com/docs/auth/web/password-auth?authuser=0]: https://firebase.google.com/docs/auth/web/password-auth?authuser=0'>Firebase Documentation</a>
