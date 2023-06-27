const express = require('express');
const apiRouter = require('./repository/api.routes')
const path = require('path');

const app = express();
const port = 8888;


const {setAccessToken, getMyId , getMyEmail, getMyUserName, getUserPlaylists, getListOfCategories,
  getPlaylistsForCategory, getPlaylistTracks, getMyTopTracks, getMyTopArtists, getRecommendationsBasedOnSeeds} = require('./get_spotify_data')

var SpotifyWebApi = require('spotify-web-api-node');
const { callbackify } = require('util');
const scopes = [
    'ugc-image-upload',
    'user-read-playback-state',
    'user-modify-playback-state',
    'user-read-currently-playing',
    'streaming',
    'app-remote-control',
    'user-read-email',
    'user-read-private',
    'playlist-read-collaborative',
    'playlist-modify-public',
    'playlist-read-private',
    'playlist-modify-private',
    'user-library-modify',
    'user-library-read',
    'user-top-read',
    'user-read-playback-position',
    'user-read-recently-played',
    'user-follow-read',
    'user-follow-modify'
  ];
  const CLIENT_ID = '1292b424202c4e199fea7c20f3eceafb'
  const CLIENT_SECRET = '19278aed4fe140b3a1cafebbc3ad8e98'
  const REDIRECT_URI = 'http://localhost:8888/callback'
  
  var spotifyApi = new SpotifyWebApi({
    clientId: CLIENT_ID,
    clientSecret: CLIENT_SECRET,
    redirectUri: REDIRECT_URI
  });
  

// Serve static files from the "public" directory
app.use(express.static(path.join(__dirname, 'design')));

// Use api route for quest db
app.use('/api', apiRouter)

// Define a route to serve the HTML file
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'design', 'index.html'));
});
app.get('/account', (req, res) => {
    res.sendFile(path.join(__dirname, 'design', 'register.html'));
});
app.get('/analysis', (req, res) => {
    setAccessToken(req.query.access_token)
    userId = getMyId()
    getListOfCategories()
    getMyTopTracks()
    getMyTopArtists()
    getUserPlaylists(userId)
    res.status(200).sendFile(path.join(__dirname, 'design', 'analysis.html'));
});

app.get('/quest', (req, res) => {
    res.sendFile(path.join(__dirname, 'design', 'quest.html'));
});


// for login spotify user
app.get('/login', (req, res) => {
    res.redirect(spotifyApi.createAuthorizeURL(scopes));
  });
  
  app.get('/callback', (req, res) => {
    const error = req.query.error;
    const code = req.query.code;
    const state = req.query.state;

  
    if (error) {
      console.error('Callback Error:', error);
      res.send(`Callback Error: ${error}`);
      return;
    }
  
    spotifyApi
      .authorizationCodeGrant(code)
      .then(data => {
        const access_token = data.body['access_token'];
        const refresh_token = data.body['refresh_token'];
        const expires_in = data.body['expires_in'];
  
        spotifyApi.setAccessToken(access_token);
        spotifyApi.setRefreshToken(refresh_token);
        console.log('access_token:', access_token);
        console.log('refresh_token:', refresh_token);
  
        console.log(
          `Sucessfully retreived access token. Expires in ${expires_in} s.`
        );
        res.redirect(301,`/analysis?access_token=${access_token}`)
          setInterval(async () => {
          const data = await spotifyApi.refreshAccessToken();
          const access_token = data.body['access_token'];
  
          console.log('The access token has been refreshed!');
          console.log('access_token:', access_token);

          spotifyApi.setAccessToken(access_token);
        }, expires_in / 2 * 1000);
      })
      .catch(error => {
        console.error('Error getting Tokens:', error);
        res.send(`Error getting Tokens: ${error}`);
      });
  });


// Start the server
app.listen(port, () => {
    console.log(`Server started on port ${port}`);
});
