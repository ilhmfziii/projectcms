<!-- /*
* Template Name: Property
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="author" content="Untree.co" />
    <link rel="shortcut icon" href="<?= base_url('assets/'); ?>logo.png" />

    <meta name="description" content="" />
    <meta name="keywords" content="bootstrap, bootstrap5" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>fonts/icomoon/style.css" />
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>fonts/flaticon/font/flaticon.css" />

    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>css/tiny-slider.css" />
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>css/aos.css" />
    <link rel="stylesheet" href="<?= base_url('assets/front/'); ?>css/style.css" />

    <title>
      Ilhm
    </title>

  </head>
  <body>
    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
          <span class="icofont-close js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <nav class="site-nav">
      <div class="container">
        <div class="menu-bg-wrap">
          <div class="site-navigation">
            <a href="" class="logo m-0 float-start"><?= $konfig->judul_website ?></a>

            <ul
              class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end"
            >
              <li class="active"><a href="<?= base_url() ?>">Home</a></li>
              <li><?php foreach($kategori as $kate){ ?>
                      <a href="<?= base_url('home/kategori/'.$kate['id_kategori']) ?>" class="nav-item nav-link">
                          <?= $kate['nama_kategori'] ?>
                      </a>
                    <?php } ?></li>
              <li><a
                    href="<?= base_url('auth') ?>"
                    class="btn btn-primary py-2 px-3"
                    style="background-color: #003333;"
                    ><b>Login</b></a
              ></li>
            </ul>

            <a
              href="#"
              class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
              data-toggle="collapse"
              data-target="#main-navbar"
            >
              <span></span>
            </a>
          </div>
        </div>
      </div>
    </nav>

    <div
      class="hero page-inner overlay"
      style="background-image: url('<?= base_url('assets/front/'); ?>images/bg_.jpg')"
    >
      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-9 text-center mt-5">
            <h1 class="heading" data-aos="fade-up"><?= $nama_kategori; ?></h1>

          </div>
        </div>
      </div>
    </div>

    <div class="section section-properties">
      <div class="container">
        <div class="row">
        <?php foreach($konten as $uu){ ?>
          <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
            <div class="property-item mb-30">
                <img src="<?= base_url('assets/upload/konten/'.$uu['foto']) ?>" alt="Image" class="img-fluid" />

              <div class="property-content">
                <div>
                  <span class="city d-block mb-3"><?= $uu['judul'] ?></span>
                  <div class="specs d-flex mb-4">
                    <span class="d-block d-flex align-items-center me-3">
                      <span class="icon-user me-2"></span>
                      <span class="caption"><?= $uu['nama'] ?></span>
                    </span>
                    <span class="d-block d-flex align-items-center">
                      <span class="icon-folder me-2"></span>
                      <span class="caption"><?= $uu['nama_kategori'] ?></span>
                    </span>
                  </div>

                  <a
                    href="<?= base_url('home/artikel/'.$uu['slug']) ?>"
                    class="btn btn-primary py-2 px-3"
                    >Baca Selengkapnya</a
                  >
                </div>
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>

    <div class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="widget">
              <h3><?= $konfig->judul_website ?></h3>
              <p><?= $konfig->profil_website; ?></p>
              <ul class="list-unstyled social">
                <li>
                  <a href="<?= $konfig->instagram; ?>"><span class="icon-instagram"></span></a>
                </li>
                <li>
                  <a href="<?= $konfig->facebook; ?>"><span class="icon-facebook"></span></a>
                </li>
              </ul>
            </div>
            <!-- /.widget -->
          </div>
          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <div class="widget">
              <h3>Contact Us</h3>
              <p><b>Alamat</b></p>
              <p><?= $konfig->alamat; ?></p>
              <p><b>Email</b></p>
              <p><?= $konfig->email; ?></p>
              <p><b>Phone</b></p>
              <p><?= $konfig->no_wa; ?></p>
            </div>
          </div>
          <!-- /.widget -->

          <!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <div class="widget">
              <h3>Quick Links</h3>
              <ul class="list-unstyled links">
                <a href="<?= base_url() ?>">Home</a>
                  <?php foreach($kategori as $kate){ ?>
                  <a class="list-unstyled links" href="<?= base_url('home/kategori/'.$kate['id_kategori']) ?>">
                      <?= $kate['nama_kategori'] ?>
                  </a>
                  <?php } ?>
              </ul>
            </div>
            <!-- /.widget -->
          </div>
          <!-- /.col-lg-4 -->
        </div>
        <!-- /.row -->

        <div class="row mt-5">
          <div class="col-12 text-center">
            <!-- 
              **==========
              NOTE: 
              Please don't remove this copyright link unless you buy the license here https://untree.co/license/  
              **==========
            -->

            <p>
              &copy;
              <a href="#"><?= $konfig->judul_website ?></a>
              . All Rights Reserved.
            </p>
          </div>
        </div>
      </div>
      <!-- /.container -->
    </div>
    <!-- /.site-footer -->

    <!-- Preloader -->
    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="visually-hidden">Loading...</span>
      </div>
    </div>

    <script src="<?= base_url('assets/front/'); ?>js/bootstrap.bundle.min.js"></script>
    <script src="<?= base_url('assets/front/'); ?>js/tiny-slider.js"></script>
    <script src="<?= base_url('assets/front/'); ?>js/aos.js"></script>
    <script src="<?= base_url('assets/front/'); ?>js/navbar.js"></script>
    <script src="<?= base_url('assets/front/'); ?>js/counter.js"></script>
    <script src="<?= base_url('assets/front/'); ?>js/custom.js"></script>
  </body>
</html>
