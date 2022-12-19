const http = require('http');
const date = require('./dateModule.js');
const hostname = '127.0.0.1';
const port = 3000;

const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

const cors = require('cors');
app.use(cors({
    origin: '*'
}));

//Database connection
var mysql = require('mysql2');
const { getCipherInfo } = require('crypto');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "root",
  database: "mydb"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});

app.use(express.json());

app.get('/hello', (req, res) => {
    res.send("The date and time are currently: " + date.myDateTime())
    })

    
    //Routes
app.get('/competence', async (req, res) => {
        try{
            const [rows, fields] = await con.promise().query("SELECT * FROM competence");
            res.send(rows);
        }
        catch(err){
            res.send(err);
        }
    })
    
app.get('/project', async (req, res) => {
        try{
            const [rows, fields] = await con.promise().query("SELECT * FROM project");
            res.send(rows);
        }
        catch(err){
            res.send(err);
        }
    })
    
app.get('/projtocomp', async (req, res) => {
        try{
            const [rows, fields] = await con.promise().query("SELECT * FROM projectstocompetence");
            res.send(rows);
        }
        catch(err){
            res.send(err);
        }
    })

    
//get project to competence by project id
app.get('/projtocomp/:id', async (req, res) => {
        try{
        const [rows, fields] = await con.promise().query("SELECT * FROM projectstocompetence WHERE idProject = " + req.params.id);
        let sql = "SELECT * FROM competence WHERE idCompetence IN (";
        rows.forEach(element => {
            sql += element.idCompetence + ", ";
        });
        sql = sql.slice(0, -2);
        sql += ") ORDER BY name ASC";
        const [rows2, fields2] = await con.promise().query(sql);
        res.send(rows2);
        }
        catch(err){
            res.send(err);
        }
    })

//get project to competence by competence id
app.get('/projtocomp/comp/:id', async (req, res) => {
        try{
            const [rows, fields] = await con.promise().query("SELECT * FROM projectstocompetence WHERE idCompetence = " + req.params.id);
            let sql = "SELECT * FROM project WHERE idProject IN (";
            rows.forEach(element => {
                sql += element.idProject + ", ";
            });
            sql = sql.slice(0, -2);
            sql += ") ORDER BY name ASC";
            const [rows2, fields2] = await con.promise().query(sql);
            res.send(rows2);
        }
        catch(err){
            res.send(err);
        }
    })

app.post('/projtocomp', async (req, res) => {

    let sql = "INSERT INTO projectsToCompetence (idProject, idCompetence) VALUES ";
    req.body.projID.forEach(element => {
        sql += "(" + element + ", " + req.body.compID + "), ";
    });
    sql = sql.slice(0, -2);

    try {
        await con.promise().query(sql);
        res.send("Success");
    }
    catch (err) {
        res.send(err.message);
    }
});

    module.exports = app;