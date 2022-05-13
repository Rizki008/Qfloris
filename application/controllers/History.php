<?php

defined('BASEPATH') or exit('No direct script access allowed');

class History extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_history');
        $this->load->model('m_chatting');
    }
    public function index()
    {
        $data = array(
            'title' => 'History Produk',
            'history' => $this->m_history->history(),
            'isi' => 'backend/history/v_history'
        );
        $this->load->view('backend/v_wrapper.php', $data, FALSE);
    }
}
