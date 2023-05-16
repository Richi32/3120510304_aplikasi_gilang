import { Sequelize } from "sequelize";

const db = new Sequelize('yukimaga_db','root','richism32',{
    host: "db",
    dialect: "mysql"
});

export default db;
