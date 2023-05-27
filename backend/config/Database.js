import { Sequelize } from "sequelize";

const db = new Sequelize('yukimaga_db','root','richism32',{
    host: "db",
    port: 49154,    
    dialect: "mysql"
});

export default db;
