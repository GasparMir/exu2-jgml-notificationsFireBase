importScripts('https://www.gstatic.com/firebasejs/9.6.10/firebase-app-compat.js');
importScripts('https://www.gstatic.com/firebasejs/9.6.10/firebase-messaging-compat.js');

firebase.initializeApp({
  apiKey: "AIzaSyDzQLHPfUJ6ucdPb0ak4YG-AeEkqrJnDbk",
  authDomain: "autenticacion-firebase-10b.firebaseapp.com",
  projectId: "autenticacion-firebase-10b",
  storageBucket: "autenticacion-firebase-10b.firebasestorage.app",
  messagingSenderId: "409648398649",
  appId: "1:409648398649:web:59f344c42f21ff2f7f28e8"

});

const messaging = firebase.messaging();
