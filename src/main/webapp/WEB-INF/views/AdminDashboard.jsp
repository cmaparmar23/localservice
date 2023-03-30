<html>
<head>
<jsp:include page="AllCss.jsp"></jsp:include>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard e</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<body>
<jsp:include page="AdminSideBar.jsp"></jsp:include>

<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Sales <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>145</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Revenue <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>$3,264</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Customers <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1244</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart" style="min-height: 365px;"><div id="apexchartsw92usoqu" class="apexcharts-canvas apexchartsw92usoqu apexcharts-theme-light" style="width: 611px; height: 350px;"><svg id="SvgjsSvg1157" width="611" height="350" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><rect id="SvgjsRect1164" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG1283" class="apexcharts-yaxis" rel="0" transform="translate(15.359375, 0)"><g id="SvgjsG1284" class="apexcharts-yaxis-texts-g"><text id="SvgjsText1286" font-family="Helvetica, Arial, sans-serif" x="20" y="31.5" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1287">100</tspan><title>100</title></text><text id="SvgjsText1289" font-family="Helvetica, Arial, sans-serif" x="20" y="85.53999999999999" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1290">80</tspan><title>80</title></text><text id="SvgjsText1292" font-family="Helvetica, Arial, sans-serif" x="20" y="139.57999999999998" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1293">60</tspan><title>60</title></text><text id="SvgjsText1295" font-family="Helvetica, Arial, sans-serif" x="20" y="193.61999999999998" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1296">40</tspan><title>40</title></text><text id="SvgjsText1298" font-family="Helvetica, Arial, sans-serif" x="20" y="247.65999999999997" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1299">20</tspan><title>20</title></text><text id="SvgjsText1301" font-family="Helvetica, Arial, sans-serif" x="20" y="301.7" text-anchor="end" dominant-baseline="auto" font-size="11px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1302">0</tspan><title>0</title></text></g></g><g id="SvgjsG1159" class="apexcharts-inner apexcharts-graphical" transform="translate(45.359375, 30)"><defs id="SvgjsDefs1158"><clipPath id="gridRectMaskw92usoqu"><rect id="SvgjsRect1169" width="561.640625" height="272.2" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskw92usoqu"></clipPath><clipPath id="nonForecastMaskw92usoqu"></clipPath><clipPath id="gridRectMarkerMaskw92usoqu"><rect id="SvgjsRect1170" width="603.640625" height="318.2" x="-24" y="-24" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient1188" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1189" stop-opacity="0.3" stop-color="rgba(65,84,241,0.3)" offset="0"></stop><stop id="SvgjsStop1190" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop1191" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient1210" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1211" stop-opacity="0.3" stop-color="rgba(46,202,106,0.3)" offset="0"></stop><stop id="SvgjsStop1212" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop1213" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient1232" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop1233" stop-opacity="0.3" stop-color="rgba(255,119,29,0.3)" offset="0"></stop><stop id="SvgjsStop1234" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop id="SvgjsStop1235" stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine1165" x1="0" y1="0" x2="0" y2="270.2" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="270.2" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><line id="SvgjsLine1242" x1="0" y1="271.2" x2="0" y2="277.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1243" x1="85.48317307692308" y1="271.2" x2="85.48317307692308" y2="277.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1244" x1="170.96634615384616" y1="271.2" x2="170.96634615384616" y2="277.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1245" x1="256.4495192307692" y1="271.2" x2="256.4495192307692" y2="277.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1246" x1="341.9326923076923" y1="271.2" x2="341.9326923076923" y2="277.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1247" x1="427.4158653846154" y1="271.2" x2="427.4158653846154" y2="277.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line id="SvgjsLine1248" x1="512.8990384615385" y1="271.2" x2="512.8990384615385" y2="277.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g id="SvgjsG1238" class="apexcharts-grid"><g id="SvgjsG1239" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine1250" x1="0" y1="54.04" x2="555.640625" y2="54.04" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1251" x1="0" y1="108.08" x2="555.640625" y2="108.08" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1252" x1="0" y1="162.12" x2="555.640625" y2="162.12" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1253" x1="0" y1="216.16" x2="555.640625" y2="216.16" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG1240" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine1256" x1="0" y1="270.2" x2="555.640625" y2="270.2" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine1255" x1="0" y1="1" x2="0" y2="270.2" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG1241" class="apexcharts-grid-borders"><line id="SvgjsLine1249" x1="0" y1="0" x2="555.640625" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1254" x1="0" y1="270.2" x2="555.640625" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine1282" x1="0" y1="271.2" x2="555.640625" y2="271.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line></g><g id="SvgjsG1171" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG1172" class="apexcharts-series" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath1192" d="M 0 270.2 L 0 186.438C 44.87866586538461 186.438 83.34609375 162.12 128.2247596153846 162.12C 158.1438701923077 162.12 183.78882211538462 194.54399999999998 213.7079326923077 194.54399999999998C 243.62704326923077 194.54399999999998 269.2719951923077 132.398 299.1911057692308 132.398C 329.11021634615383 132.398 354.7551682692308 156.716 384.67427884615387 156.716C 414.5933894230769 156.716 440.2383413461539 48.635999999999996 470.15745192307696 48.635999999999996C 500.0765625 48.635999999999996 525.721514423077 118.88799999999998 555.640625 118.88799999999998C 555.640625 118.88799999999998 555.640625 118.88799999999998 555.640625 270.2M 555.640625 118.88799999999998z" fill="url(#SvgjsLinearGradient1188)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskw92usoqu)" pathTo="M 0 270.2 L 0 186.438C 44.87866586538461 186.438 83.34609375 162.12 128.2247596153846 162.12C 158.1438701923077 162.12 183.78882211538462 194.54399999999998 213.7079326923077 194.54399999999998C 243.62704326923077 194.54399999999998 269.2719951923077 132.398 299.1911057692308 132.398C 329.11021634615383 132.398 354.7551682692308 156.716 384.67427884615387 156.716C 414.5933894230769 156.716 440.2383413461539 48.635999999999996 470.15745192307696 48.635999999999996C 500.0765625 48.635999999999996 525.721514423077 118.88799999999998 555.640625 118.88799999999998C 555.640625 118.88799999999998 555.640625 118.88799999999998 555.640625 270.2M 555.640625 118.88799999999998z" pathFrom="M -1 270.2 L -1 270.2 L 128.2247596153846 270.2 L 213.7079326923077 270.2 L 299.1911057692308 270.2 L 384.67427884615387 270.2 L 470.15745192307696 270.2 L 555.640625 270.2"></path><path id="SvgjsPath1193" d="M 0 186.438C 44.87866586538461 186.438 83.34609375 162.12 128.2247596153846 162.12C 158.1438701923077 162.12 183.78882211538462 194.54399999999998 213.7079326923077 194.54399999999998C 243.62704326923077 194.54399999999998 269.2719951923077 132.398 299.1911057692308 132.398C 329.11021634615383 132.398 354.7551682692308 156.716 384.67427884615387 156.716C 414.5933894230769 156.716 440.2383413461539 48.635999999999996 470.15745192307696 48.635999999999996C 500.0765625 48.635999999999996 525.721514423077 118.88799999999998 555.640625 118.88799999999998" fill="none" fill-opacity="1" stroke="#4154f1" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskw92usoqu)" pathTo="M 0 186.438C 44.87866586538461 186.438 83.34609375 162.12 128.2247596153846 162.12C 158.1438701923077 162.12 183.78882211538462 194.54399999999998 213.7079326923077 194.54399999999998C 243.62704326923077 194.54399999999998 269.2719951923077 132.398 299.1911057692308 132.398C 329.11021634615383 132.398 354.7551682692308 156.716 384.67427884615387 156.716C 414.5933894230769 156.716 440.2383413461539 48.635999999999996 470.15745192307696 48.635999999999996C 500.0765625 48.635999999999996 525.721514423077 118.88799999999998 555.640625 118.88799999999998" pathFrom="M -1 270.2 L -1 270.2 L 128.2247596153846 270.2 L 213.7079326923077 270.2 L 299.1911057692308 270.2 L 384.67427884615387 270.2 L 470.15745192307696 270.2 L 555.640625 270.2" fill-rule="evenodd"></path><g id="SvgjsG1173" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG1175" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1176" r="4" cx="0" cy="186.438" class="apexcharts-marker no-pointer-events w490045ue" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="4"></circle><circle id="SvgjsCircle1177" r="4" cx="128.2247596153846" cy="162.12" class="apexcharts-marker no-pointer-events wjy207lj4" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1178" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1179" r="4" cx="213.7079326923077" cy="194.54399999999998" class="apexcharts-marker no-pointer-events w6f60w8e" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1180" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1181" r="4" cx="299.1911057692308" cy="132.398" class="apexcharts-marker no-pointer-events w1uvvpche" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1182" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1183" r="4" cx="384.67427884615387" cy="156.716" class="apexcharts-marker no-pointer-events wrokoiwdqk" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1184" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1185" r="4" cx="470.15745192307696" cy="48.635999999999996" class="apexcharts-marker no-pointer-events wrqg6jh9e" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="4"></circle></g><g id="SvgjsG1186" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1187" r="4" cx="555.640625" cy="118.88799999999998" class="apexcharts-marker no-pointer-events wyiedv8uv" stroke="#ffffff" fill="#4154f1" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="0" default-marker-size="4"></circle></g></g></g><g id="SvgjsG1194" class="apexcharts-series" seriesName="Revenue" data:longestSeries="true" rel="2" data:realIndex="1"><path id="SvgjsPath1214" d="M 0 270.2 L 0 240.47799999999998C 44.87866586538461 240.47799999999998 83.34609375 183.736 128.2247596153846 183.736C 158.1438701923077 183.736 183.78882211538462 148.60999999999999 213.7079326923077 148.60999999999999C 243.62704326923077 148.60999999999999 269.2719951923077 183.736 299.1911057692308 183.736C 329.11021634615383 183.736 354.7551682692308 178.332 384.67427884615387 178.332C 414.5933894230769 178.332 440.2383413461539 129.696 470.15745192307696 129.696C 500.0765625 129.696 525.721514423077 159.418 555.640625 159.418C 555.640625 159.418 555.640625 159.418 555.640625 270.2M 555.640625 159.418z" fill="url(#SvgjsLinearGradient1210)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskw92usoqu)" pathTo="M 0 270.2 L 0 240.47799999999998C 44.87866586538461 240.47799999999998 83.34609375 183.736 128.2247596153846 183.736C 158.1438701923077 183.736 183.78882211538462 148.60999999999999 213.7079326923077 148.60999999999999C 243.62704326923077 148.60999999999999 269.2719951923077 183.736 299.1911057692308 183.736C 329.11021634615383 183.736 354.7551682692308 178.332 384.67427884615387 178.332C 414.5933894230769 178.332 440.2383413461539 129.696 470.15745192307696 129.696C 500.0765625 129.696 525.721514423077 159.418 555.640625 159.418C 555.640625 159.418 555.640625 159.418 555.640625 270.2M 555.640625 159.418z" pathFrom="M -1 270.2 L -1 270.2 L 128.2247596153846 270.2 L 213.7079326923077 270.2 L 299.1911057692308 270.2 L 384.67427884615387 270.2 L 470.15745192307696 270.2 L 555.640625 270.2"></path><path id="SvgjsPath1215" d="M 0 240.47799999999998C 44.87866586538461 240.47799999999998 83.34609375 183.736 128.2247596153846 183.736C 158.1438701923077 183.736 183.78882211538462 148.60999999999999 213.7079326923077 148.60999999999999C 243.62704326923077 148.60999999999999 269.2719951923077 183.736 299.1911057692308 183.736C 329.11021634615383 183.736 354.7551682692308 178.332 384.67427884615387 178.332C 414.5933894230769 178.332 440.2383413461539 129.696 470.15745192307696 129.696C 500.0765625 129.696 525.721514423077 159.418 555.640625 159.418" fill="none" fill-opacity="1" stroke="#2eca6a" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMaskw92usoqu)" pathTo="M 0 240.47799999999998C 44.87866586538461 240.47799999999998 83.34609375 183.736 128.2247596153846 183.736C 158.1438701923077 183.736 183.78882211538462 148.60999999999999 213.7079326923077 148.60999999999999C 243.62704326923077 148.60999999999999 269.2719951923077 183.736 299.1911057692308 183.736C 329.11021634615383 183.736 354.7551682692308 178.332 384.67427884615387 178.332C 414.5933894230769 178.332 440.2383413461539 129.696 470.15745192307696 129.696C 500.0765625 129.696 525.721514423077 159.418 555.640625 159.418" pathFrom="M -1 270.2 L -1 270.2 L 128.2247596153846 270.2 L 213.7079326923077 270.2 L 299.1911057692308 270.2 L 384.67427884615387 270.2 L 470.15745192307696 270.2 L 555.640625 270.2" fill-rule="evenodd"></path><g id="SvgjsG1195" class="apexcharts-series-markers-wrap" data:realIndex="1"><g id="SvgjsG1197" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1198" r="4" cx="0" cy="240.47799999999998" class="apexcharts-marker no-pointer-events wggeh3moe" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="1" default-marker-size="4"></circle><circle id="SvgjsCircle1199" r="4" cx="128.2247596153846" cy="183.736" class="apexcharts-marker no-pointer-events wnvhndvkx" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1200" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1201" r="4" cx="213.7079326923077" cy="148.60999999999999" class="apexcharts-marker no-pointer-events w1n5m2ulj" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1202" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1203" r="4" cx="299.1911057692308" cy="183.736" class="apexcharts-marker no-pointer-events wuka7qoy4" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1204" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1205" r="4" cx="384.67427884615387" cy="178.332" class="apexcharts-marker no-pointer-events w1usagc42" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1206" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1207" r="4" cx="470.15745192307696" cy="129.696" class="apexcharts-marker no-pointer-events w43kzkjk4j" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="1" default-marker-size="4"></circle></g><g id="SvgjsG1208" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1209" r="4" cx="555.640625" cy="159.418" class="apexcharts-marker no-pointer-events wp0fob377" stroke="#ffffff" fill="#2eca6a" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="1" default-marker-size="4"></circle></g></g></g><g id="SvgjsG1216" class="apexcharts-series" seriesName="Customers" data:longestSeries="true" rel="3" data:realIndex="2"><path id="SvgjsPath1236" d="M 0 270.2 L 0 229.67C 44.87866586538461 229.67 83.34609375 240.47799999999998 128.2247596153846 240.47799999999998C 158.1438701923077 240.47799999999998 183.78882211538462 183.736 213.7079326923077 183.736C 243.62704326923077 183.736 269.2719951923077 221.564 299.1911057692308 221.564C 329.11021634615383 221.564 354.7551682692308 245.88199999999998 384.67427884615387 245.88199999999998C 414.5933894230769 245.88199999999998 440.2383413461539 205.35199999999998 470.15745192307696 205.35199999999998C 500.0765625 205.35199999999998 525.721514423077 240.47799999999998 555.640625 240.47799999999998C 555.640625 240.47799999999998 555.640625 240.47799999999998 555.640625 270.2M 555.640625 240.47799999999998z" fill="url(#SvgjsLinearGradient1232)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMaskw92usoqu)" pathTo="M 0 270.2 L 0 229.67C 44.87866586538461 229.67 83.34609375 240.47799999999998 128.2247596153846 240.47799999999998C 158.1438701923077 240.47799999999998 183.78882211538462 183.736 213.7079326923077 183.736C 243.62704326923077 183.736 269.2719951923077 221.564 299.1911057692308 221.564C 329.11021634615383 221.564 354.7551682692308 245.88199999999998 384.67427884615387 245.88199999999998C 414.5933894230769 245.88199999999998 440.2383413461539 205.35199999999998 470.15745192307696 205.35199999999998C 500.0765625 205.35199999999998 525.721514423077 240.47799999999998 555.640625 240.47799999999998C 555.640625 240.47799999999998 555.640625 240.47799999999998 555.640625 270.2M 555.640625 240.47799999999998z" pathFrom="M -1 270.2 L -1 270.2 L 128.2247596153846 270.2 L 213.7079326923077 270.2 L 299.1911057692308 270.2 L 384.67427884615387 270.2 L 470.15745192307696 270.2 L 555.640625 270.2"></path><path id="SvgjsPath1237" d="M 0 229.67C 44.87866586538461 229.67 83.34609375 240.47799999999998 128.2247596153846 240.47799999999998C 158.1438701923077 240.47799999999998 183.78882211538462 183.736 213.7079326923077 183.736C 243.62704326923077 183.736 269.2719951923077 221.564 299.1911057692308 221.564C 329.11021634615383 221.564 354.7551682692308 245.88199999999998 384.67427884615387 245.88199999999998C 414.5933894230769 245.88199999999998 440.2383413461539 205.35199999999998 470.15745192307696 205.35199999999998C 500.0765625 205.35199999999998 525.721514423077 240.47799999999998 555.640625 240.47799999999998" fill="none" fill-opacity="1" stroke="#ff771d" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMaskw92usoqu)" pathTo="M 0 229.67C 44.87866586538461 229.67 83.34609375 240.47799999999998 128.2247596153846 240.47799999999998C 158.1438701923077 240.47799999999998 183.78882211538462 183.736 213.7079326923077 183.736C 243.62704326923077 183.736 269.2719951923077 221.564 299.1911057692308 221.564C 329.11021634615383 221.564 354.7551682692308 245.88199999999998 384.67427884615387 245.88199999999998C 414.5933894230769 245.88199999999998 440.2383413461539 205.35199999999998 470.15745192307696 205.35199999999998C 500.0765625 205.35199999999998 525.721514423077 240.47799999999998 555.640625 240.47799999999998" pathFrom="M -1 270.2 L -1 270.2 L 128.2247596153846 270.2 L 213.7079326923077 270.2 L 299.1911057692308 270.2 L 384.67427884615387 270.2 L 470.15745192307696 270.2 L 555.640625 270.2" fill-rule="evenodd"></path><g id="SvgjsG1217" class="apexcharts-series-markers-wrap" data:realIndex="2"><g id="SvgjsG1219" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1220" r="4" cx="0" cy="229.67" class="apexcharts-marker no-pointer-events wdiii651v" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="0" j="0" index="2" default-marker-size="4"></circle><circle id="SvgjsCircle1221" r="4" cx="128.2247596153846" cy="240.47799999999998" class="apexcharts-marker no-pointer-events wg78w5npg" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="1" j="1" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1222" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1223" r="4" cx="213.7079326923077" cy="183.736" class="apexcharts-marker no-pointer-events wlcdj91h6" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="2" j="2" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1224" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1225" r="4" cx="299.1911057692308" cy="221.564" class="apexcharts-marker no-pointer-events wyaqevwwa" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="3" j="3" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1226" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1227" r="4" cx="384.67427884615387" cy="245.88199999999998" class="apexcharts-marker no-pointer-events winp0xrek" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="4" j="4" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1228" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1229" r="4" cx="470.15745192307696" cy="205.35199999999998" class="apexcharts-marker no-pointer-events wm4x2705u" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="5" j="5" index="2" default-marker-size="4"></circle></g><g id="SvgjsG1230" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskw92usoqu)"><circle id="SvgjsCircle1231" r="4" cx="555.640625" cy="240.47799999999998" class="apexcharts-marker no-pointer-events wpmvtzqzf" stroke="#ffffff" fill="#ff771d" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" rel="6" j="6" index="2" default-marker-size="4"></circle></g></g></g><g id="SvgjsG1174" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG1196" class="apexcharts-datalabels" data:realIndex="1"></g><g id="SvgjsG1218" class="apexcharts-datalabels" data:realIndex="2"></g></g><line id="SvgjsLine1257" x1="0" y1="0" x2="555.640625" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1258" x1="0" y1="0" x2="555.640625" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG1259" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG1260" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText1262" font-family="Helvetica, Arial, sans-serif" x="0" y="299.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1263">00:00</tspan><title>00:00</title></text><text id="SvgjsText1265" font-family="Helvetica, Arial, sans-serif" x="85.48317307692308" y="299.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1266">01:00</tspan><title>01:00</title></text><text id="SvgjsText1268" font-family="Helvetica, Arial, sans-serif" x="170.96634615384616" y="299.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1269">02:00</tspan><title>02:00</title></text><text id="SvgjsText1271" font-family="Helvetica, Arial, sans-serif" x="256.4495192307692" y="299.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1272">03:00</tspan><title>03:00</title></text><text id="SvgjsText1274" font-family="Helvetica, Arial, sans-serif" x="341.9326923076923" y="299.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1275">04:00</tspan><title>04:00</title></text><text id="SvgjsText1277" font-family="Helvetica, Arial, sans-serif" x="427.4158653846154" y="299.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1278">05:00</tspan><title>05:00</title></text><text id="SvgjsText1280" font-family="Helvetica, Arial, sans-serif" x="512.8990384615385" y="299.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan1281">06:00</tspan><title>06:00</title></text></g></g><g id="SvgjsG1303" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG1304" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG1305" class="apexcharts-point-annotations"></g><rect id="SvgjsRect1306" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect1307" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><g id="SvgjsG1160" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend apexcharts-align-center apx-legend-position-bottom" style="inset: auto 0px 1px; position: absolute; max-height: 175px;"><div class="apexcharts-legend-series" rel="1" seriesname="Sales" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(65, 84, 241) !important; color: rgb(65, 84, 241); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Sales" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Sales</span></div><div class="apexcharts-legend-series" rel="2" seriesname="Revenue" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(46, 202, 106) !important; color: rgb(46, 202, 106); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Revenue" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Revenue</span></div><div class="apexcharts-legend-series" rel="3" seriesname="Customers" data:collapsed="false" style="margin: 2px 5px;"><span class="apexcharts-legend-marker" rel="3" data:collapsed="false" style="background: rgb(255, 119, 29) !important; color: rgb(255, 119, 29); height: 12px; width: 12px; left: 0px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="3" i="2" data:default-text="Customers" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Customers</span></div></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(65, 84, 241);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(46, 202, 106);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 3;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(255, 119, 29);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->


 
  </main>
  </body>
  </html>