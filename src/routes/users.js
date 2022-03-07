const express = require("express");
const router = express.Router();
const connection = require("../database");

router.get("/", (req, res) => {
  connection.query("SELECT * FROM users", (err, rows, fields) => {
    if (err) {
      res.status(500).send({
        message: "Error al obtener los usuarios" + err,
      });
    } else {
      res.json(rows);
    }
  });
});

module.exports = router;
