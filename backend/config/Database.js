import { Sequelize } from "sequelize";

const db = new Sequelize('yukimaga_db','userku','passku',{
    host: "maria-db-nya",
    port: 3306,    
    dialect: "mysql"
});

export default db;