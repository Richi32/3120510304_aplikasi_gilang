import { Sequelize } from "sequelize";

const db = new Sequelize('yukimaga_db','userku','passku',{
    host: "49154-mariadb",
    port: 3306,    
    dialect: "mysql"
});

export default db;
