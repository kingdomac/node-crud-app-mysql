const express = require("express");
const User = require("../models/User.js");
const { formatErrors } = require("../lib/form");
const Joi = require("joi");
const { exist } = require("joi");

//Schema Validation
const schema = Joi.object({
  first_name: Joi.string()
    .alphanum()
    .min(3)
    .max(60)
    .required()
    .label("first name"),
  last_name: Joi.string()
    .alphanum()
    .min(3)
    .max(60)
    .required()
    .label("last name"),
  email: Joi.string()
    .email({
      minDomainSegments: 2,
      tlds: { allow: ["com", "net"] },
    })
    .required()
    .label("email address"),
  phone: Joi.string().required().label("phone number"),
  comments: Joi.string(),
}).options({ abortEarly: false, allowUnknown: true });

// View users
exports.view = (req, res) => {
  const userObj = new User();
  const usersPromise = userObj.getUsers();
  usersPromise
    .then((users) => {
      //console.log(users);
      res.render("users/view", { users, success: req.flash("success") });
    })
    .catch((error) => {
      req.flash("error", "Something wents wrong!");
      res.render("users/view", { users, error: req.flash("error") });
    });
};

exports.find = (req, res) => {
  let kewyord = req.body.search;

  const userObj = new User();
  const usersPromise = userObj.search(kewyord);
  usersPromise
    .then((users) => {
      res.render("users/view", { users, kewyord });
    })
    .catch((error) => {
      req.flash("error", "Something wents wrong!");
      res.render("users/view", { users, error: req.flash("error") });
    });
};

exports.create = (req, res) => {
  res.render("users/create", {
    error: req.flash("error"),
    errors: req.flash("errors"),
  });
};

exports.store = (req, res) => {
  const body = req.body;

  const validationErrors = schema.validate(body);
  // Validation
  if (validationErrors.error) {
    const errorsArray = formatErrors(validationErrors);
    req.flash("errors", errorsArray);
    return res.redirect("/users/create");
  }

  const userObj = new User();
  const insertPromise = userObj.insert(body);

  insertPromise
    .then((result) => {
      if (result.insertId) {
        req.flash("success", "Operation successfully done");
        return res.redirect("/users");
      }
    })
    .catch((error) => {
      req.flash("error", "Operation failed");
      return res.redirect("/users/create");
    });
};

exports.edit = (req, res) => {
  const id = Number(req.params.id);
  const userObj = new User();
  const userPromise = userObj.getUser(id);
  userPromise
    .then((user) => {
      res.render("users/edit", {
        error: req.flash("error"),
        errors: req.flash("errors"),
        user: user[0],
        test: "test",
      });
    })
    .catch((error) => {
      req.flash("error", "Operation failed");
      res.render("users/create", {
        error: req.flash("error"),
        errors: req.flash("errors"),
      });
    });
};

exports.update = (req, res) => {
  const id = Number(req.body.id);
  const body = req.body;

  const validationErrors = schema.validate(body);
  // Validation

  if (validationErrors.error) {
    const errorsArray = formatErrors(validationErrors);
    req.flash("errors", errorsArray);
    return res.redirect(`/users/edit/${id}`);
  }

  const userObj = new User();
  const updatePromise = userObj.update(id, body);
  updatePromise
    .then((result) => {
      req.flash("success", "Operation successfully done");
      res.redirect("/users");
    })
    .catch((error) => {
      req.flash("error", "Operation failed");
      res.redirect(`/users/edit/${id}`);
    });
  return;
};

exports.destroy = (req, res) => {
  const id = Number(req.body.id);
  const userObj = new User();
  const deleteUserPromise = userObj.delete(id);
  deleteUserPromise
    .then((result) => {
      req.flash("success", "Operation successfully done");
      res.redirect("/users");
    })
    .catch((error) => {
      req.flash("error", "Operation failed");
      res.redirect(`/users`);
    });
};
