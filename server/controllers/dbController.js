const mysql = require("mysql");

// create aconnection pool
const pool = mysql.createPool({
  connectionLimits: 100,
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

const executeQuery = async (query, fieldsValue) => {
  try {
    const result = await new Promise((resolve, reject) => {
      pool.getConnection((error, connection) => {
        if (error) throw error;

        connection.query(query, fieldsValue, (error, result) => {
          connection.release();
          if (error) reject(error);
          //console.log(result);
          resolve(result);
        });
      });
    });
    return result;
  } catch (error) {
    return false;
  }
};
module.exports = { pool, executeQuery };
