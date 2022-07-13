<section id="home-section" class="hero">
    <?php foreach ($best_deal_product_transaksi as $key => $value) { ?>
        <div class="home-slider owl-carousel">
            <div class="slider-item" style="background-image: url(<?= base_url('assets/gambar/' . $value->gambar) ?>);">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">
                        <div class="col-md-12 ftco-animate text-center">
                            <h1 class="mb-2">Selamat datang di Qflorist</h1>
                            <h2 class="subheading mb-4">&amp; Temukan Buket Terbaikmu Disini</h2>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>
</section>
<section class="ftco-section">
    <div class="container">
        <div class="row no-gutters ftco-services">
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-shipped"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Pengiriman</h3>
                        <span>Pengiriman Ke Berbagai Daerah</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-diet"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Selelau Segar</h3>
                        <span>Paket produk dengan baik</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-award"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Kualitas Unggul</h3>
                        <span>Produk Berkualitas</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services mb-md-0 mb-4">
                    <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                        <span class="flaticon-customer-service"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Punya Pertanyaan?</h3>
                        <span>+62 813-1350-0038</span>
                        <span>Qflorist@gmail.com</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center ftco-animate">
                <span class="subheading">Produk Terbaru</span>
                <h2 class="mb-4">Toko Qflorist</h2>
                <p>Belanja Buket dan kado Di Toko Qflorist</p>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <?php if (count($produk) > 0) : ?>
                <?php foreach ($produk as $value) :
                ?>
                    <div class="col-md-6 col-lg-3 ftco-animate">
                        <?php
                        echo form_open('belanja/add');
                        echo form_hidden('id', $value->id_produk);
                        echo form_hidden('qty', 1);
                        echo form_hidden('price', $value->harga - $value->diskon);
                        echo form_hidden('name', $value->nama_produk);
                        echo form_hidden('redirect_page', str_replace('index.php/', '', current_url()));
                        ?>
                        <div class="product">
                            <a href="<?= base_url('belanja/add/' . $value->id_produk); ?>" class="img-prod">
                                <img class="img-fluid" src="<?= base_url('assets/gambar/' . $value->gambar); ?>" alt="<?= $value->nama_produk; ?>">
                                <?php if ($value->diskon > 0) : ?>
                                    <span class="status"><?= count_percent_discount($value->diskon, $value->harga, 0);  ?>%</span>
                                <?php endif; ?>
                                <div class="overlay"></div>
                            </a>
                            <div class="text py-3 pb-4 px-3 text-center">
                                <h3><a href="<?= base_url('belanja/add/' . $value->id_produk); ?>"><?= $value->nama_produk; ?></a></h3>
                                <div class="d-flex">
                                    <div class="pricing">
                                        <p class="price">
                                            <?php if ($value->diskon > 0) : ?>
                                                <span class="mr-2 price-dc">Rp. <?= format_rupiah($value->harga, 0); ?></span><span class="price-sale">Rp. <?= format_rupiah($value->harga - $value->diskon, 0); ?></span>
                                            <?php else : ?>
                                                <span class="mr-2"><span class="price-sale">Rp. <?= format_rupiah($value->harga - $value->diskon, 0); ?></span>
                                                <?php endif; ?>
                                        </p>
                                    </div>
                                </div>
                                <div class="bottom-area d-flex px-3">
                                    <div class="m-auto d-flex">
                                        <a href="<?= base_url('home/detail_produk/' . $value->id_produk) ?>" class="buy-now d-flex justify-content-center align-items-center text-center">
                                            <span><i class="ion-ios-menu"></i></span>
                                        </a>
                                        <button type="submit" class="btn btn-primary mx-1" data-name="<?= $value->nama_produk; ?>" data-price="<?= ($value->diskon > 0) ? ($value->harga - $value->diskon) : $value->harga ?>" data-id="<?= $value->id_produk; ?>">
                                            <span><i class="ion-ios-cart"></i></span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php echo
                        form_close();
                        ?>
                    </div>
                <?php endforeach; ?>
            <?php else : ?>
            <?php endif; ?>
        </div>
    </div>
</section>
<section class="ftco-section testimony-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <h2 class="mb-4">PROMO BULAN JULI</h2>
                <span class="subheading">Produk Dengan Harga Termurah</span>
            </div>
        </div>
        <div class="row ftco-animate">
            <div class="col-md-12">
                <div class="carousel-testimony owl-carousel">
                    <?php foreach ($diskon as $key => $value) { ?>
                        <div class="item">
                            <div class="testimony-wrap p-4 pb-5">

                                <?php
                                echo form_open('belanja/add');
                                echo form_hidden('id', $value->id_produk);
                                echo form_hidden('qty', 1);
                                echo form_hidden('price', $value->harga - $value->diskon);
                                echo form_hidden('name', $value->nama_produk);
                                echo form_hidden('redirect_page', str_replace('index.php/', '', current_url()));
                                ?>

                                <div class="user-img mb-5" style="background-image: url(<?= base_url('assets/gambar/' . $value->gambar) ?>);">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"><span class="status"><?= count_percent_discount($value->diskon, $value->harga, 0);  ?>%</span></i>
                                    </span>
                                </div>

                                <div class="text text-center line">
                                    <p class="mb-5"><span class="price-sale"><?= format_rupiah($value->harga - $value->diskon, 0); ?></span></p>
                                    <p class="name"><?= $value->nama_produk ?></p>
                                    <span class="position"><?= $value->deskripsi ?></span>
                                </div>

                                <div class="bottom-area d-flex px-3">
                                    <div class="m-auto d-flex">
                                        <a href="<?= base_url('home/detail_produk/' . $value->id_produk) ?>" class="btn btn-primary mx-1">
                                            <span><i class="ion-ios-menu"></i></span>
                                        </a>
                                        <button type="submit" class="btn btn-primary mx-1" data-name="<?= $value->nama_produk; ?>" data-price="<?= ($value->diskon > 0) ? ($value->harga - $value->diskon) : $value->harga ?>" data-id="<?= $value->id_produk; ?>">
                                            <span><i class="ion-ios-cart"></i></span>
                                        </button>
                                    </div>
                                </div>

                                <?php echo
                                form_close();
                                ?>

                            </div>
                        </div>

                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- SweetAlert2 -->
<script src="<?= base_url() ?>template/plugins/sweetalert2/sweetalert2.min.js"></script>

<script type="text/javascript">
    $(function() {
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000
        });

        $('.swalDefaultSuccess').click(function() {
            Toast.fire({
                icon: 'success',
                title: 'Produk Berhasil Ditambahkan ke Keranjang.'
            })
        });
    });
</script>