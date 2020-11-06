// load Electron
var electron = require('electron');
var app = electron.app;
var BrowserWindow = electron.BrowserWindow;

// initialize mainWindow variables
var mainWindow = null;

// exit app if not MacOS(darwin)
// TODO: enable Windows
app.on('window-all-closed', function() {
  if(process.platform != 'darwin')
  app.quit();
});

// display and load index.html
// Close sequence
app.on('ready', function() {
  // 画面表示
  mainWindow = new BrowserWindow({width: 800, height: 600});
  mainWindow.loadURL('file://' + __dirname + '/index.html');

  mainWindow.on('closed', function() {
    mainWindow = null;
  });
});