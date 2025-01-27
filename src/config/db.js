const { Sequelize } = require("sequelize");

const sequelize = new Sequelize("Libros", "sa", "galvis", {
  dialect: "mssql",
  host: "DESKTOP-TGDH9KM",
  dialectOptions: {
    options: {
      encrypt: true,
      trustServerCertificate: true,
    },
  },
});

module.exports = sequelize;