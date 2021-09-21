const express = require('express');

const app = express();

app.get('/',(req,res) => {
  res.status(200).json({success:true,data:"Hellow !"});
});

app.all('*',(req,res)    => {
  res.status(404).json({success:false,data:"resource not found"});
});

app.listen(4000,()=>{
    console.log("Server listening on port : 4000");
});