<?php

class ExaminatorModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }
    
    public function getExaminatoren()
    {
        $sql = "SELECT * from examenperexaminator
        inner join examinator on examenperexaminator.Id = 
        examinator.Id inner join examen on examenperexaminator.Id = examen.Id; order by examen.Datum";

        $this->db->query($sql);

        return $this->db->resultSet();
    }    
}