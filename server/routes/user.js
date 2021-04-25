const express = require("express");
const router = express.Router();
const userController = require("../controllers/userController");

router.get("", userController.view);
router.post("/find", userController.find);

router.get("/create", userController.create);
router.post("/store", userController.store);

router.get("/edit/:id", userController.edit);
router.put("/update", userController.update);

router.delete("/delete", userController.destroy);

module.exports = router;
