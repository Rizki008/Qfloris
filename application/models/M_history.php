<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_history extends CI_Model
{
    public function history()
    {
        $this->db->join('kategori', 'kategori.id_kategori = produk.id_kategori', 'left');
        return $this->db->get('produk')->result();
    }
}
