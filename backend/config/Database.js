import { Sequelize } from "sequelize";

const db = new Sequelize('yukimaga_db','userku','passku',{
    host: "db-49154",
    port: 3306,    
    dialect: "mysql"
});

export default db;
