<?php

class Examinator extends BaseController
{
    private $examinatorModel;

    public function __construct()
    {
        $this->examinatorModel = $this->model('ExaminatorModel');
    }

    public function index()
    {
        $dat = $this->examinatorModel->getExamenInfo();

        $rows = '';
        foreach ($dat as $examinator) 
        {
            $rows .= "<tr>                        
                        <td>$examinator->Voornaam</td>                    
                        <td>$examinator->Datum</td>                    
                        <td>$examinator->Rijbewijscategorie</td>                    
                        <td>$examinator->RijSchool</td>                    
                        <td>$examinator->Stad</td>                    
                        <td>$examinator->Uitslag</td>                                                    
                      </tr>";
        }

        $data = [
            'rows'    => $rows
        ];

        $this->view('examinator/index', $data);
    }
}
