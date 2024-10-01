'use strict';

const api_key = 'c98f76e33b5ba3aa1df9122d189175ee';
const imageBaseURL = 'https://image.tmdb.org/t/p/';
const fetchDataFromServer = function (url, callback, optionalParam) {
  fetch(url)
    .then(response => response.json())
    .then(data => callback(data, optionalParam));
}

export { imageBaseURL, api_key, fetchDataFromServer };