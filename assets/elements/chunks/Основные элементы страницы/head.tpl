name:head
description:css+js+other
======
<meta charset="[(modx_charset)]"/>
<title>[[if? &is=`[*longtitle*]:isempty` &then=`[*pagetitle*]` &else=`[*longtitle*]`]]</title>
<meta name="description" content="[*description*]"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">
[[if? &is=`[*id*]:=:1` &then=`<meta name="cmsmagazine" content="6f9669405ccc8cd147c1f4ddb410c74e" />`]]
<base href="https://belarmmet.by/">

<link rel="stylesheet" href="assets/templates/belarmmet/libs/uikit/css/uikit.min.css"/>
<link rel="stylesheet" href="assets/templates/belarmmet/libs/uikit/css/components/slidenav.min.css"/>
<link rel="stylesheet" href="assets/templates/belarmmet/libs/uikit/css/components/form-file.min.css"/>
<link rel="stylesheet" href="assets/templates/belarmmet/libs/jquery.bxslider/jquery.bxslider.css"/>
<link rel="stylesheet" href="assets/templates/belarmmet/libs/sweetalert-master/dist/sweetalert.css">
<link rel="stylesheet" href="assets/templates/belarmmet/css/style.min.css">
<link rel="stylesheet" href="assets/templates/belarmmet/css/custom.css">


<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script src="assets/templates/belarmmet/libs/jquery-2.2.4/jquery-2.2.4.min.js"></script>
<script src="assets/templates/belarmmet/libs/uikit/js/uikit.min.js"></script>
<script src="assets/templates/belarmmet/libs/uikit/js/components/lightbox.min.js"></script>
<script src="assets/templates/belarmmet/libs/uikit/js/components/sticky.min.js"></script>
<script src="assets/templates/belarmmet/libs/uikit/js/components/timepicker.min.js"></script>
<script src="assets/templates/belarmmet/libs/uikit/js/components/autocomplete.min.js"></script>
<script src="assets/templates/belarmmet/libs/jquery.bxslider/jquery.bxslider.min.js"></script>
<script src="assets/templates/belarmmet/libs/sweetalert-master/dist/sweetalert.min.js"></script>
<script src="assets/templates/belarmmet/js/forms.js"></script>
<meta name="yandex-verification" content="34020da9bd2a9a37" />
<meta name="google-site-verification" content="9ZMtNtYGBgbvt2x9KfEp7QVOa6DfRfbdOZIDZD0waB8" />
<!--map.js только на главной и в контактах-->
[[if? &is=`[*id*]:=:1:or:[*id*]:=:11` &then=`<script src="assets/templates/belarmmet/js/map.js"></script>`]]
<script src="assets/templates/belarmmet/js/common.min.js"></script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-MNL5BTS');</script>
<!-- End Google Tag Manager -->

