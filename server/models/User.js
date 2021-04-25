const { exist } = require("joi");
const { pool, executeQuery } = require("../controllers/dbController");

class User {
  async getUsers() {
    const query = "SELECT * FROM user WHERE status != ? ORDER BY id DESC";
    const filedsValue = ["removed"];
    const queryResult = await executeQuery(query, filedsValue);
    if (!queryResult) return false;
    return queryResult;
  }

  async search(keyword) {
    const query =
      "SELECT * FROM user WHERE status != ? AND ( first_name LIKE ? OR last_name like ? ) ORDER BY id DESC";
    const filedsValue = ["removed", `%${keyword}%`, `%${keyword}%`];
    const queryResult = await executeQuery(query, filedsValue);
    if (!queryResult) return false;
    return queryResult;
  }

  async getUser(id) {
    const query = "SELECT * FROM user WHERE id = ?";
    const filedsValue = [id];
    const queryResult = await executeQuery(query, filedsValue);
    if (!queryResult) return false;
    return queryResult;
  }
  async insert(bodyObject) {
    let query = "INSERT INTO user SET ";
    const arrayOfKeys = Object.keys(bodyObject);

    // Building the query
    arrayOfKeys.map((row, index) => {
      query += `${row}  = ?`;
      if (index !== arrayOfKeys.length - 1) query += ", ";
    });

    const fieldsValue = Object.values(bodyObject);

    const queryResult = await executeQuery(query, fieldsValue);
    if (!queryResult) return false;
    return queryResult;
  }

  async update(id, bodyObject) {
    let query = "UPDATE user SET ";

    // Remove the id from the form body post
    delete bodyObject.id;

    const arrayOfKeys = Object.keys(bodyObject);

    // Building the query
    arrayOfKeys.map((row, index) => {
      query += `${row}  = ?`;
      if (index !== arrayOfKeys.length - 1) query += ", ";
    });
    query += ` WHERE id = ${id}`;

    const fieldsValue = Object.values(bodyObject);
    const queryResult = await executeQuery(query, fieldsValue);
    if (!queryResult) return false;
    return queryResult;
  }

  async delete(id) {
    const query = "DELETE FROM user WHERE id = ?";
    const queryResult = await executeQuery(query, [id]);
    if (!queryResult) return false;
    return queryResult;
  }
}

module.exports = User;
