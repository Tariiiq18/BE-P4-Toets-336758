<?php

class Home extends BaseController
{
    public function index($id = NULL, $name = NULL)
    {

        $data = [
            'title' => 'Homepage',
            'id'    => $id,
            'name'  => $name
        ];

        $this->view('home/index', $data);
    }
}