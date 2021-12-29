<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<body style="padding-top: 72px;">
    <header class="header">
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
        <div class="container-fluid">
          <div class="d-flex align-items-center"><a class="navbar-brand py-1" href="index.html"><img src="img/logo.svg" alt="Directory logo"></a>
            <form class="form-inline d-none d-sm-flex" action="#" id="search">
              <div class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3"> 
                <label class="label-absolute" for="search_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="search_search" placeholder="Search" aria-label="Search" type="search">
              </div>
            </form>
          </div>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <form class="form-inline mt-4 mb-2 d-sm-none" action="#" id="searchcollapsed">
              <div class="input-label-absolute input-label-absolute-left w-100">
                <label class="label-absolute" for="searchcollapsed_search"><i class="fa fa-search"></i><span class="sr-only">What are you looking for?</span></label>
                <input class="form-control form-control-sm border-0 shadow-0 bg-gray-200" id="searchcollapsed_search" placeholder="Search" aria-label="Search" type="search">
              </div>
            </form>
            <ul class="navbar-nav ms-auto">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="homeDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Home</a>
                <div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink"><a class="dropdown-item" href="index.html">Rooms</a><a class="dropdown-item" href="index-2.html">Restaurants</a><a class="dropdown-item" href="index-3.html">Travel</a><a class="dropdown-item" href="index-4.html">Real Estate <span class="badge badge-info-light ms-1 mt-n1">New</span></a></div>
              </li>
              <!-- Megamenu-->
              <li class="nav-item dropdown position-static"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Template</a>
                <div class="dropdown-menu megamenu py-lg-0">
                  <div class="row">
                    <div class="col-lg-9">
                      <div class="row p-3 pe-lg-0 ps-lg-5 pt-lg-5">
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Homepage</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index.html">Rooms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-2.html">Restaurants   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-3.html">Travel   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="index-4.html">Real estate <span class="badge badge-info-light ms-1">New</span>   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Restaurants</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category.html">Category - Map on the top   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2.html">Category - Map on the right   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3.html">Category - no map   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail.html">Restaurant detail   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Rooms</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-rooms.html">Category - Map on the top   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-2-rooms.html">Category - Map on the right   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="category-3-rooms.html">Category - no map   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="detail-rooms.html">Room detail   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Blog</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="blog.html">Blog   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="post.html">Post   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Pages</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="compare.html">Comparison   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="team.html">Team   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="contact.html">Contact   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Pages</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="pricing.html">Pricing   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="text.html">Text page   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="faq.html">F.A.Q.s   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="coming-soon.html">Coming soon   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="404.html">404 page   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base.html">Knowledge Base  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="knowledge-base-topic.html">Knowledge Base  &mdash; Topic<span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="terms.html">Terms & Conditions  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                          </ul>
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">Host</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-add-0.html">Add new listing - 6 pages   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-list.html">Bookings &mdash; list view   </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3">
                          <!-- Megamenu list-->
                          <h6 class="text-uppercase">User</h6>
                          <ul class="megamenu-list list-unstyled">
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-profile.html">Profile   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-account.html">Account   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-personal.html">Personal info - forms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-security.html">Password & security - forms   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="login.html">Sign in   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="signup.html">Sign up   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-1.html">Booking process - 4 pages   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-grid.html">Bookings &mdash; grid view   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-booking-detail.html">Booking detail   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-invoice.html">Invoice  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages.html">Messages <span class="badge badge-info-light ms-1">New</span>   </a></li>
                            <li class="megamenu-list-item"><a class="megamenu-list-link" href="user-messages-detail.html">Message Detail  <span class="badge badge-info-light ms-1">New</span>   </a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="row megamenu-services d-none d-lg-flex ps-lg-5">
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#destination-map-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Best rentals</h6>
                              <p class="mb-0 text-muted text-sm">Find the perfect place</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#money-box-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Earn points</h6>
                              <p class="mb-0 text-muted text-sm">And get great rewards</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#customer-support-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">020-800-456-747</h6>
                              <p class="mb-0 text-muted text-sm">24/7 Available Support</p>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="megamenu-services-item">
                            <svg class="svg-icon megamenu-services-icon">
                              <use xlink:href="#secure-payment-1"> </use>
                            </svg>
                            <div>
                              <h6 class="text-uppercase">Secure Payment</h6>
                              <p class="mb-0 text-muted text-sm">Secure Payment</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 d-none d-lg-block position-relative"><img class="bg-image" src="img/photo/photo-1521170665346-3f21e2291d8b.jpg" alt=""></div>
                  </div>
                </div>
              </li>
              <!-- /Megamenu end-->
              <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle " id="docsDropdownMenuLink" href="index.html" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Docs</a>
                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
                  <h6 class="dropdown-header fw-normal">Documentation</h6><a class="dropdown-item" href="docs/docs-introduction.html">Introduction </a><a class="dropdown-item" href="docs/docs-directory-structure.html">Directory structure </a><a class="dropdown-item" href="docs/docs-gulp.html">Gulp </a><a class="dropdown-item" href="docs/docs-customizing-css.html">Customizing CSS </a><a class="dropdown-item" href="docs/docs-credits.html">Credits </a><a class="dropdown-item" href="docs/docs-changelog.html">Changelog </a>
                  <div class="dropdown-divider"></div>
                  <h6 class="dropdown-header fw-normal">Components</h6><a class="dropdown-item" href="docs/components-bootstrap.html">Bootstrap </a><a class="dropdown-item" href="docs/components-directory.html">Theme </a>
                </div>
              </li>
              <li class="nav-item"><a class="nav-link" href="login.html">Sign in</a></li>
              <li class="nav-item"><a class="nav-link" href="signup.html">Sign up</a></li>
              <li class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a class="btn btn-primary" href="user-add-0.html">Add a listing</a></li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- /Navbar -->
    </header>
    <!-- Hero Section-->
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
      <div class="container overlay-content">
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
          <div class="text-white mb-4 mb-lg-0">
            <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">Eat &amp; Drink</div>
            <h1 class="text-shadow verified">Fifteen Restaurant & Bar</h1>
            <p><i class="fa-map-marker-alt fas me-2"></i> 53 Broadway, Brooklyn, NY 1129</p>
            <p class="mb-0 d-flex align-items-center"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200 me-4">                   </i>8 Reviews</p>
          </div>
          <div class="calltoactions"><a class="btn btn-primary" href="#leaveReview" onclick="$('#leaveReview').collapse('show')" data-smooth-scroll>Leave a Review</a></div>
        </div>
      </div>
    </section>
    <section class="py-6">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <!-- About Listing-->
            <div class="text-block">
              <h3 class="mb-3">About</h3>
              <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
              <p class="text-muted"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
            </div>
            <div class="text-block">
              <!-- Listing Location-->
              <h3 class="mb-4">Location</h3>
              <div class="map-wrapper-300 mb-3">
                <div class="h-100" id="detailMap"></div>
              </div>
            </div>
            <div class="text-block">
              <!-- Gallery-->
              <h3 class="mb-4">Gallery</h3>
              <div class="row gallery ms-n1 me-n1">
                <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1515164783716-8e6920f3e77c.jpg"><img class="img-fluid" src="img/photo/restaurant-1515164783716-8e6920f3e77c.jpg" alt="..."></a></div>
                <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1466978913421-dad2ebd01d17.jpg"><img class="img-fluid" src="img/photo/restaurant-1466978913421-dad2ebd01d17.jpg" alt="..."></a></div>
                <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg"><img class="img-fluid" src="img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg" alt="..."></a></div>
                <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1505275350441-83dcda8eeef5.jpg"><img class="img-fluid" src="img/photo/restaurant-1505275350441-83dcda8eeef5.jpg" alt="..."></a></div>
                <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1508766917616-d22f3f1eea14.jpg"><img class="img-fluid" src="img/photo/restaurant-1508766917616-d22f3f1eea14.jpg" alt="..."></a></div>
                <div class="col-lg-4 col-6 px-1 mb-2"><a href="img/photo/restaurant-1430931071372-38127bd472b8.jpg"><img class="img-fluid" src="img/photo/restaurant-1430931071372-38127bd472b8.jpg" alt="..."></a></div>
              </div>
            </div>
            <!-- Amenities-->
            <div class="text-block">
              <h3 class="mb-4">Amenities</h3>
              <ul class="amenities-list list-inline">
                <li class="list-inline-item mb-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>Elevator</span>
                  </div>
                </li>
                <li class="list-inline-item mb-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>Vegan friendly</span>
                  </div>
                </li>
                <li class="list-inline-item mb-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>Alcohol served</span>
                  </div>
                </li>
                <li class="list-inline-item mb-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>No smoking</span>
                  </div>
                </li>
                <li class="list-inline-item mb-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>Parking spaces (paid)</span>
                  </div>
                </li>
                <li class="list-inline-item mb-3">
                  <div class="d-flex align-items-center">
                    <div class="icon-circle bg-secondary me-2"><i class="fa fa-check"></i></div><span>WiFi</span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="text-block">
              <p class="subtitle text-sm text-primary">Reviews    </p>
              <h5 class="mb-4">Listing Reviews </h5>
              <div class="d-flex d-block d-sm-flex review">
                <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-8.jpg" alt="Padmé Amidala"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
                <div>
                  <h6 class="mt-2 mb-1">Padmé Amidala</h6>
                  <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
                  </div>
                  <p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections     </p>
                </div>
              </div>
              <div class="d-flex d-block d-sm-flex review">
                <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-2.jpg" alt="Luke Skywalker"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
                <div>
                  <h6 class="mt-2 mb-1">Luke Skywalker</h6>
                  <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                  </div>
                  <p class="text-muted text-sm">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. &quot;What's happened to me?&quot; he thought. It wasn't a dream.     </p>
                </div>
              </div>
              <div class="d-flex d-block d-sm-flex review">
                <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-3.jpg" alt="Princess Leia"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
                <div>
                  <h6 class="mt-2 mb-1">Princess Leia</h6>
                  <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-gray-200"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                  </div>
                  <p class="text-muted text-sm">His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table.     </p>
                </div>
              </div>
              <div class="d-flex d-block d-sm-flex review">
                <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="img/avatar/avatar-4.jpg" alt="Jabba Hut"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
                <div>
                  <h6 class="mt-2 mb-1">Jabba Hut</h6>
                  <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
                  </div>
                  <p class="text-muted text-sm">Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.     </p>
                </div>
              </div>
              <div class="py-5">
                <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
                <div class="collapse mt-4" id="leaveReview">
                  <h5 class="mb-4">Leave a review</h5>
                  <form class="form" id="contact-form" method="get" action="#">
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="mb-4">
                          <label class="form-label" for="name">Your name *</label>
                          <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="mb-4">
                          <label class="form-label" for="rating">Your rating *</label>
                          <select class="form-select focus-shadow-0" name="rating" id="rating">
                            <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                            <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                            <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                            <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                            <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="mb-4">
                      <label class="form-label" for="email">Your email *</label>
                      <input class="form-control" type="email" name="email" id="email" placeholder="Enter your  email" required="required">
                    </div>
                    <div class="mb-4">
                      <label class="form-label" for="review">Review text *</label>
                      <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
                    </div>
                    <button class="btn btn-primary" type="submit">Post review</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="ps-xl-4">
              <!-- Opening Hours      -->
              <div class="card border-0 shadow mb-5">
                <div class="card-header bg-gray-100 py-4 border-0">
                  <div class="d-flex align-items-center justify-content-between">
                    <div>
                      <p class="subtitle text-sm text-primary">Opening in 5 minutes</p>
                      <h4 class="mb-0">Opening Hours </h4>
                    </div>
                    <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-muted flex-shrink-0">
                      <use xlink:href="#wall-clock-1"> </use>
                    </svg>
                  </div>
                </div>
                <div class="card-body">
                  <table class="table text-sm mb-0">
                    <tr>
                      <th class="ps-0 border-0">Sunday</th>
                      <td class="pe-0 text-end border-0">8:00 am - 6:00 pm</td>
                    </tr>
                    <tr>
                      <th class="ps-0">Monday</th>
                      <td class="pe-0 text-end">8:00 am - 6:00 pm</td>
                    </tr>
                    <tr>
                      <th class="ps-0">Tuesday</th>
                      <td class="pe-0 text-end">8:00 am - 6:00 pm</td>
                    </tr>
                    <tr>
                      <th class="ps-0">Wednesday</th>
                      <td class="pe-0 text-end">8:00 am - 6:00 pm</td>
                    </tr>
                    <tr>
                      <th class="ps-0">Thursday</th>
                      <td class="pe-0 text-end">8:00 am - 6:00 pm</td>
                    </tr>
                    <tr>
                      <th class="ps-0">Friday</th>
                      <td class="pe-0 text-end">8:00 am - 6:00 pm</td>
                    </tr>
                    <tr>
                      <th class="ps-0">Saturday</th>
                      <td class="pe-0 text-end">Closed</td>
                    </tr>
                  </table>
                </div>
              </div>
              <!-- Contact-->
              <div class="card border-0 shadow mb-5">
                <div class="card-header bg-gray-100 py-4 border-0">
                  <div class="d-flex align-items-center justify-content-between">
                    <div>
                      <p class="subtitle text-sm text-primary">Drop Us a Line</p>
                      <h4 class="mb-0">Contact</h4>
                    </div>
                    <svg class="svg-icon svg-icon svg-icon-light w-3rem h-3rem ms-3 text-muted flex-shrink-0">
                      <use xlink:href="#fountain-pen-1"> </use>
                    </svg>
                  </div>
                </div>
                <div class="card-body">
                  <ul class="list-unstyled mb-4">
                    <li class="mb-2"> <a class="text-gray-00 text-sm text-decoration-none" href="#"><i class="fa fa-phone me-3"></i><span class="text-muted">(020) 123 456 789</span></a></li>
                    <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fa fa-envelope me-3"></i><span class="text-muted">info@example.com</span></a></li>
                    <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fa fa-globe me-3"></i><span class="text-muted">www.example.com</span></a></li>
                    <li class="mb-2"> <a class="text-blue text-sm text-decoration-none" href="#"><i class="fab fa-facebook me-3"></i><span class="text-muted">Facebook</span></a></li>
                    <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fab fa-twitter me-3"></i><span class="text-muted">Twitter</span></a></li>
                    <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fab fa-instagram me-3"></i><span class="text-muted">Instagram</span></a></li>
                    <li class="mb-2"> <a class=" text-sm text-decoration-none" href="#"><i class="fab fa-google-plus me-3"></i><span class="text-muted">Google+</span></a></li>
                  </ul>
                  <div class="d-grid text-center"><a class="btn btn-outline-primary" href="#"> <i class="far fa-paper-plane me-2"></i>Send a Message</a></div>
                </div>
              </div>
              <div class="text-center">
                <p><a class="text-secondary" href="#"> <i class="fa fa-heart"></i> Bookmark This Listing</a></p><span>79 people bookmarked this place </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div class="py-6 bg-gray-100"> 
      <div class="container">
        <h5 class="mb-0">Similar places</h5>
        <p class="subtitle text-sm text-primary mb-4">You may also like         </p>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative items-slider">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Blue Hill</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurants</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                    <p class="text-sm mb-0"><a class="me-1" href="#">Restaurant,</a><a class="me-1" href="#">Contemporary</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1436018626274-89acd1d6ec9d.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Plutorque</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Proident irure eiusmod velit veniam consectetur id minim irure et nostrud mollit magna velit. Commodo amet proident aliq...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                    <p class="text-sm mb-0"><a class="me-1" href="#">Restaurant,</a><a class="me-1" href="#">Fusion</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1466978913421-dad2ebd01d17.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Junipoor</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Lorem amet ex duis in et fugiat consectetur laborum eiusmod labore. Quis cupidatat et do dolor in in magna. Eu sit quis ...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                    <p class="text-sm mb-0"><a class="me-1" href="#">Music,</a><a class="me-1" href="#">Techno,</a><a class="me-1" href="#">House</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1477763858572-cda7deaa9bc5.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Musix</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i><i class="fa fa-star text-gray-300">                    </i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Music club</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Deserunt eiusmod Lorem proident consequat elit culpa laboris ea cupidatat. Consequat dolore proident ipsum qui sint enim...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                    <p class="text-sm mb-0"><a class="me-1" href="#">Music,</a><a class="me-1" href="#">Club,</a><a class="me-1" href="#">Rock</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1504087697492-238a6bf49ce8.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Prosure</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Restaurant</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                    <p class="text-sm mb-0"><a class="me-1" href="#">Nisi,</a><a class="me-1" href="#">Ex,</a><a class="me-1" href="#">Eiusmod</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- venue item-->
              <div class="w-100 h-100" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1505275350441-83dcda8eeef5.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <h4 class="text-white text-shadow">Take That</h4>
                      <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i>
                      </p>
                    </div>
                    <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                      <div class="badge badge-transparent badge-pill px-3 py-2">Café</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a>
                    </div>
                  </div>
                  <div class="card-body">
                    <p class="text-sm text-muted mb-3"> Cillum sunt reprehenderit ea non irure veniam dolore commodo labore fugiat est consequat velit. Cupidatat nisi qui ad si...</p>
                    <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                    <p class="text-sm mb-0"><a class="me-1" href="#">Nisi,</a><a class="me-1" href="#">Ex,</a><a class="me-1" href="#">Eiusmod</a>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
    
<%@ include file="../inc/bottom.jsp" %>