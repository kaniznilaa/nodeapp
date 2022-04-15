const express = require('express');
const app = new express ();
const port = process.env.PORT || 3000;
app.get("/",(req,res)=>{
    res.send({
        msg:"Hello World!"
    })
    res.end();
})
app.listen(port,()=>{
    console.log("App is running");
})