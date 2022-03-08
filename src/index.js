const express = require("express");
const app = express();

// Settings
app.set("port", process.env.PORT || 5000);

// Middlewares
app.use(express.json());

// Routes
app.get("/api/", (req, res) => {
  res.send("Hello World");
});

app.use("/api/users", require("./routes/users"));

// Server
app.listen(app.get("port"), () => {
  console.log("Servidor abierto en el puerto " + app.get("port"));
});
