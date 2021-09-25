
const home =  (req, res) => {
  const data = `<div style="text-align:center"><h1>Anime facts</h1> <a href="https://chandan-02.github.io/anime-facts-rest-api/">Documentation</a></div`
  res.status(200).send(data)
}

module.exports = { home };