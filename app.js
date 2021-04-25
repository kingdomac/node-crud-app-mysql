const express = require("express");
const exphbs = require("express-handlebars");
//const bodyParser = require("body-parser");
const methodOverride = require("method-override");
const session = require("express-session");
const flash = require("connect-flash");
require("dotenv").config();

const app = express();
const port = process.env.PORT || 5000;

//--------Parsing middleware------------//

// Parse application/x-www-form-urlendcoded
app.use(express.urlencoded({ extended: false }));

// Change methods for _method put and delete
app.use(
  methodOverride(function (req, res) {
    if (req.body && typeof req.body === "object" && "_method" in req.body) {
      // look in urlencoded POST bodies and delete it
      var method = req.body._method;
      delete req.body._method;
      return method;
    }
  })
);

// Parse application/json
app.use(express.json());

const hbs = exphbs.create({
  helpers: {},
  extname: ".hbs",
});

// Template Engine
app.engine("hbs", hbs.engine);
app.set("view engine", "hbs");

// Static Files
app.use(express.static("public"));

app.use(
  session({
    secret: "secret",
    cookie: { maxAge: 6000 },
    resave: false,
    saveUninitialized: false,
  })
);
app.use(flash());

const userRoutes = require("./server/routes/user");
app.use("/users", userRoutes);

app.listen(port, () => {
  console.log(`the server is running on port ${port}...`);
});
