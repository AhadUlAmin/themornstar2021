      <!-- Navbar-->
      <header class="navbar navbar-expand-lg navbar-dark fixed-top" data-scroll-header>
        <div class="container">
          <!--a class="navbar-brand me-3 me-xl-4" href="car-finder-home.html">
        <img class="d-block" src="<?=ASSETS . THEME ?>img/logo/logo-light.svg" width="116" alt="Finder">
        </a-->
          <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button><a class="btn btn-link btn-light btn-sm d-none d-lg-block order-lg-3" href="#signin-modal" data-bs-toggle="modal"><i class="fi-user me-2"></i>Sign in</a>

          <div class="collapse navbar-collapse order-lg-2" id="navbarNav">
            <ul class="navbar-nav navbar-nav-scroll" style="max-height: 35rem;">
              <!-- Menu items-->
              <li class="nav-item active"><a class="nav-link" href="<?=ROOT ?>home">Home</a></li>
              <li class="nav-item "><a class="nav-link" href="<?=ROOT ?>home">Settings</a></li>
              <li class="nav-item "><a class="nav-link" href="<?=ROOT ?>home">Notifications</a></li>
              <li class="nav-item "><a class="nav-link" href="<?=ROOT ?>home">Chat</a></li>
              <li class="nav-item dropdown py-2 me-lg-2"><a 
              class="nav-link dropdown-toggle align-items-center border-end-lg border-light py-1 pe-lg-4"
               href="#" data-bs-toggle="dropdown" role="button" aria-expanded="false"><i class="fi-layers me-2"></i>Features</a>
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a class="dropdown-item" href=""><i class="fi-building fs-base me-2"></i>Group</a></li>
                  <li class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href=""><i class="fi-car fs-base me-2"></i>Series</a></li>
                  <li class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href=""><i class="fi-briefcase fs-base me-2"></i>Collections</a></li>
                  <li class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href=""><i class="fi-map-pin fs-base me-2"></i>Articles</a></li>
                  <li class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href=""><i class="fi-home fs-base me-2"></i>Polls</a></li>
                  <li><a class="dropdown-item" href=""><i class="fi-list fs-base me-2"></i>Products</a></li>
                  <li><a class="dropdown-item" href=""><i class="fi-file fs-base me-2"></i>Documentation</a></li>
                </ul>
              </li>

            </ul>
              <ul class="dropdown-menu dropdown-menu-dark">
           
              <li class="nav-item d-lg-none"><a class="nav-link" href="#signin-modal" data-bs-toggle="modal">
                <i class="fi-user me-2"></i>Sign in</a></li>
            </ul>
          </div>
        </div>
      </header>