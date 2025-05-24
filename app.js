const express = require('express')
const app = express()

app.get('/',(req,res)=>{
    res.send("Hello this is node js application")
})

app.listen("3000",()=>{
    console.log("listening at 3000")
})