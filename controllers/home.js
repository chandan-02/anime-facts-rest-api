
const home =  (req, res) => {
  
  res.status(200).json({ success: true, data: "Hellow !!!" })
}

module.exports = { home };