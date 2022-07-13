<?php
$jumlah = $this->m_dashboard->hitungJumlahAsset();
// $tampil_chat = $this->m_chatting->chatting_tampil();
?>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
<<<<<<< HEAD
                    <a href="<?= base_url('Pemilik') ?>" class="nav-link">Home</a>
=======
                    <a href="<?= base_url('admin') ?>" class="nav-link">Home</a>
>>>>>>> f3588e506f06790baa718e84a4a54268c6d06ad3
                </li>
            </ul>

            <!-- SEARCH FORM -->
            <form class="form-inline ml-3">
                <div class="input-group input-group-sm">
                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-navbar" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
        </nav>
        <!-- /.navbar -->