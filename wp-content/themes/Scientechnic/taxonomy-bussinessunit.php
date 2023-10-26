<?php
/* Template Name: Bussinessunit single page */
/* */
?><?php get_header(); ?>

<?php
  $queried_object = get_queried_object();
  $term_id = $queried_object->term_id; ?>
 <div class="banner-area">
        <div class="sc-preloader"></div>
        <div id="slides">
          <ul class="slides-container">
            <li>
              <img
                class="center center"
                src="./Uploads/Banner/559c19524bdea5f242de8bc9f0fe9ac6_f2068.jpg"
                alt="Industrial Stock Sales"
              />
            </li>
          </ul>
        </div>
        <div class="topgradient"></div>
        <div class="slider-content">
          <div class="container move-uper">
            <div class="content-holdingg wow fadeInUp"></div>
          </div>
          <div class="container down-scroller">
            <div class="trig-bot">
              <a class="down-scroll" href="#sc-wrap"></a>
            </div>
            <div class="bc">
              <a href="../../index.html" target="_self">Home</a>
              <span class="ccm-autonav-breadcrumb-sep">/</span>
              <a href="../index.html" target="_self">Business Units</a>
              <span class="ccm-autonav-breadcrumb-sep">/</span> Industrial Stock
              Sales
            </div>
          </div>
        </div>
      </div>

      <div
        class="sub-navhead business-units industrial-stock-sales"
        id="sc-wrap"
      >
        <div class="container">
          <ul class="nav desktopver list-inline">
            <li class="">
              <a href="../industrial-stock-sales.html" target="_self" class=""
                >Overview</a
              >
            </li>
            <li class="">
              <a href="http://localhost:8888/SCT/bussinessunit/building-technology/solutions" target="_self" class=""
                >Solutions</a
              >
            </li>
            <li class="">
              <a href="products/index.html" target="_self" class="">Products</a>
            </li>
            <li class="">
              <a href="projects/index.html" target="_self" class="">Projects</a>
            </li>
            <li class="">
              <a href="brands/index.html" target="_self" class="">Brands</a>
            </li>
            <li class="">
              <a href="clients/index.html" target="_self" class="">Clients</a>
            </li>
            <li class="">
              <a href="insights/index.html" target="_self" class="">Insights</a>
            </li>
          </ul>
        </div>
      </div>

      <!-- Business partners page type -->
      <div class="introduction-content">
        <div class="container">
          <div class="col-sm-12">
            <div class="center dynamite">
              <h2>Introduction</h2>
              <p style="text-align: center">
                Lighting Solutions is one of the leading lighting and control
                solutions provider in the UAE. Our extensive range of lighting
                products enables us to provide turnkey solutions for all types
                of projects.
              </p>
            </div>
            <div class="columns-row row">
              <div class="col-md-6">
                <p style="text-align: justify">
                  We offer advanced lighting technology in exclusive partnership
                  with world-class brands. Our dedicated team of lighting
                  professionals have the skills and capabilities to offer
                  effective lighting solutions for projects with the most
                  complex requirements.&nbsp;
                </p>
              </div>
              <div class="col-md-6">
                <p style="text-align: justify">
                  We handle lighting and lighting control solutions, for both
                  small and large scale projects. Our reliable products are
                  competitively priced and are of superior quality and ensure
                  that we deliver the best service in the most timely fashion.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

  <?php get_footer();?>