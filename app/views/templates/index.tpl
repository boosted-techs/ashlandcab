<!doctype html>
<html>
<head>
    {block name="meta"}{/block}
    <title>{$title}</title>
    <meta name="twitter:image" content="//{$smarty.server.SERVER_NAME}/assets/images/logo.png">
    <meta property="og:title" content="Ashland Taxi">
    <meta property="og:site_name" content="Ashland Cab">
    <meta property="og:description" content="Asland cab brings you the most affordable transport ever in USA. With just $70, you travel in the most luxious way">
    <meta name="description" content="Asland cab brings you the most affordable transport ever in USA. With just $70, you travel in the most luxious way">
    <meta name="keywords" content="ashlandtax, ashlandcab, musoke lule, easy tax, fastest tax">
    <meta property="og:image" content="//{$smarty.server.SERVER_NAME}/assets/images/alshlandtaxi.png">
    <meta property="og:type" content="website">
    <meta name="author" content="Boosted Technologies Uganda">
    <meta name="twitter:card" content="summary_large_image">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//{$smarty.server.SERVER_NAME}/assets/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    {*<link href="{$smarty.server.SERVER_NAME}/assets/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" />*}
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;400;500;600;700;900&display=swap" rel="stylesheet">
    <link href="//{$smarty.server.SERVER_NAME}/assets/css/style.css" rel="stylesheet"/>
    <meta property="og:image:alt" content="Affordable transport of all seasons.">
    <link rel="icon" type="image/png" href="//{$smarty.server.SERVER_NAME}/assets/images/logo.png">
    <meta name="theme-color" content="#eead13">
</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="//{$smarty.server.SERVER_NAME}">
            <img alt="Ashland TAXI" class="logo" src="//{$smarty.server.SERVER_NAME}/assets/images/logo.png"/>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link home" aria-current="page" href="//{$smarty.server.SERVER_NAME}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link about-us" href="//{$smarty.server.SERVER_NAME}/about-us">About us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link rates" href="//{$smarty.server.SERVER_NAME}/rates">Rates and Fares</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link reservations" href="//{$smarty.server.SERVER_NAME}/reservations">Reservations</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fares" href="//{$smarty.server.SERVER_NAME}/airport-fares">Airport Fares</a>
                </li>
            </ul>
            <span class="navbar-text">
                DIAL 1-508-656-0644
            </span>
        </div>
    </div>
</nav>
<div class="main-site">
    <div class="col-md-12">
        {block name="body"}{/block}
    </div>
    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Reservation Sent</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Hello {$smarty.get.name}, your reservation has been sent. Thank you for using Ashland Taxi
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Okay</button>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="content">
            <div class="sound">
                <div class="copyright">Ashland Cab &copy; {$smarty.now|date_format:"%Y"}</div>
            </div>
        </div>
    </div>
</div>
<script src="//{$smarty.server.SERVER_NAME}/assets/js/jquery.mini.js"></script>

<script src="//{$smarty.server.SERVER_NAME}/assets/css/bootstrap/js/bootstrap.min.js"></script>
<script>
    {if isset($smarty.get.sent) && isset($smarty.get.name)}
        $(window).on('load', function(){
            $('#staticBackdrop').modal('show');
        });
    {/if}
</script>
<script type="text/javascript">
    {literal}
    // var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    // (function(){
    //     var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    //     s1.async=true;
    //     s1.src='https://embed.tawk.to/5fc4ece0a1d54c18d8eed211/default';
    //     s1.charset='UTF-8';
    //     s1.setAttribute('crossorigin','*');
    //     s0.parentNode.insertBefore(s1,s0);
    // })();
    {/literal}
    $(".{$page}").addClass("active");
</script>

{block name="scripts"}{/block}

</body>
</html>