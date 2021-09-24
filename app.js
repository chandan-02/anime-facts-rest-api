const express = require('express');
const cors = require('cors');
const morgan = require('morgan')

//Routes
const home_route = require('./routers/home');
const v1_route = require('./routers/api_v1');

const app = express();

//middlewares
app.use(cors());
app.use(morgan('tiny'))
app.use(express.json());


app.use('/',home_route);
app.use('/api/v1',v1_route)

app.all('*',(req,res)    => {
  res.status(404).json({success:false,data:"resource not found"});
});

const PORT = process.env.PORT || 4000;

app.listen(PORT,()=>{
    console.log(`Server started on PORT : ${PORT}`);
});