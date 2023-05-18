import { Sequelize } from "sequelize";

const db = new Sequelize('yukimaga_db','root','richism32',{
    host: "db",
    port: 3306,    
    dialect: "mysql"
});

export default db;
