---
title: Dasloop API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - http
  - javascript

toc_footers:
  - <a href='https://github.com/lord/slate'>Documentation Powered by Slate</a>

includes:
  - projects
  - devices
  - workers
  - stats
  - users

search: true
---

# Introduction

Welcome to the Dasloop API!

# Authentication

We use firebase as our authentication service. To use our Api, you need to get the firebase access token and attach the access token to every API request to our server.

For more details, please visit <a href='https://firebase.google.com/docs/auth/web/password-auth?authuser=0]: https://firebase.google.com/docs/auth/web/password-auth?authuser=0'>Firebase Documentation</a>

```javascript

// node.js

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
    // Sign in successfully
  })
  .catch(function(error) {
    // Handle Errors here (Cannot Sign in)
    var errorCode = error.code;
    var errorMessage = error.message;
    // ...
});

// After login successfully
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

// jQuery
<!-- Import necessary libraries -->
<script src="https://www.gstatic.com/firebasejs/4.9.1/firebase.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.9.1/firebase-auth.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyCYofM8fX55YhbaHn6I-c5pymwJo8nBn_M",
    authDomain: "dasloop-25831.firebaseapp.com"
  };
  firebase.initializeApp(config);
  
  // Sign in with email and password
  firebase.auth().signInWithEmailAndPassword(email, password)
    .then(function(user) {
      // Sign in successfully
    })
    .catch(function(error) {
      // Handle Errors here (Cannot Sign in)
      var errorCode = error.code;
      var errorMessage = error.message;
      // ...
    });

  // After login successfully
  function everyRequest() {
    if (firebase.auth().currentUser) {
      user.getToken().then(function(token) {
        $.ajax({
          url: apiURL, // Change this according to your needs
          beforeSend: function(request) {
            request.setRequestHeader("Authorization", "Bearer " + authorizationToken);
          }
        })
        .done(function() {
          alert( "success" );
        })
        .fail(function() {
          alert( "error" );
        });
      });
    }
  }
</script>
