const express = require('express')
const app = express()
const Chain = require('./chain_2')
const bodyParser = require('body-parser')
const bitcoin = new Chain()
app.use(bodyParser.json())

app.get('/', function (req, res) {
  res.sendFile(__dirname + '/index.html')
})

app.get('/blocks', function (req, res) {
  res.sendFile(__dirname + '/blocks.html')
})

app.get('/transactions', function (req, res) {
  res.sendFile(__dirname + '/transactions.html')
})

app.get('/bitcoin', function (req, res) {
  res.send(bitcoin)
})

app.get('/transaction', function (req, res) {
  const { amount, sender, receiver } = req.query
  bitcoin.createNewTransaction(amount, sender, receiver)
  res.send(bitcoin)
})

app.get('/mine', function (req, res) {
  res.sendFile(__dirname + '/mine.html')
})

app.get('/startMining', function (req, res) {
  res.json(bitcoin.createNewBlock())
})

app.listen(20000)
