const pool = require('../db/db_config')

const v1_home = async (req, res) => {
    try {
        const data = await pool.query('SELECT * FROM animes ORDER BY anime_id ASC'); 
        res.status(200).json({ success: true, data: data.rows})
    } catch (error) {
        res.status(404).json({ success: false, data: "Something went wrong" })
    }
}

const v1_get_facts = async(req, res) => {
    const {anime_name} = req.params;
    try {
        let query = `SELECT * FROM ${anime_name} ORDER BY fact_id ASC`;
        let queryImg = `SELECT anime_img FROM animes WHERE anime_name='${anime_name}'`
        const data = await pool.query(query);
        const img = await pool.query(queryImg)
    
        res.status(200).json({ success: true,
            img:img.rows[0].anime_img,
            total_facts:data.rowCount,data: data.rows
        })

    } catch (error) {
        console.log(error)
        res.status(404).json({ success: false, data: "anime_name provided doesn't exists" })
    }
}

const v1_get_facts_by_id = async(req, res) => {
    const {anime_name,fact_id} = req.params;
    console.log(anime_name)
    try {
        let query = `SELECT * FROM ${anime_name} WHERE fact_id=${fact_id}`;
        const data = await pool.query(query);
        if(data.rowCount !== 0){
            res.status(200).json({ success: true, data: data.rows[0] })
            return
        }
        res.status(200).json({ success: false, data: "id out of range" })
    } catch (error) {
        console.log(error)
        res.status(404).json({ success: false, data: "anime_name provided doesn't exists" })
    }
}

module.exports = { v1_home, v1_get_facts, v1_get_facts_by_id };