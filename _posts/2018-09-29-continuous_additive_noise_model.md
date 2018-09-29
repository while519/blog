---
layout: post
title: 'Continuous Additive Noise Model Analysis'
date: 2018-09-29 08:49:15
image: '/blog/images/noise_modelling.png'
description:
category: 'core ideas'
tags:
- additive noise model
- conditional independence test
- hsic
- linear regression
- covariates
twitter_text:
introduction:
---
<html>
<head><meta charset="utf-8" />

<title>continuous_additive_noise_model</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>



<style type="text/css">
    /*!
*
* Twitter Bootstrap
*
*/
/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  font-size: 2em;
  margin: 0.67em 0;
}
mark {
  background: #ff0;
  color: #000;
}
small {
  font-size: 80%;
}
sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  box-sizing: content-box;
  height: 0;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: textfield;
  box-sizing: content-box;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}
legend {
  border: 0;
  padding: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    background: transparent !important;
    box-shadow: none !important;
    text-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot');
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff') format('woff'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.glyphicon-asterisk:before {
  content: "\002a";
}
.glyphicon-plus:before {
  content: "\002b";
}
.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}
.glyphicon-minus:before {
  content: "\2212";
}
.glyphicon-cloud:before {
  content: "\2601";
}
.glyphicon-envelope:before {
  content: "\2709";
}
.glyphicon-pencil:before {
  content: "\270f";
}
.glyphicon-glass:before {
  content: "\e001";
}
.glyphicon-music:before {
  content: "\e002";
}
.glyphicon-search:before {
  content: "\e003";
}
.glyphicon-heart:before {
  content: "\e005";
}
.glyphicon-star:before {
  content: "\e006";
}
.glyphicon-star-empty:before {
  content: "\e007";
}
.glyphicon-user:before {
  content: "\e008";
}
.glyphicon-film:before {
  content: "\e009";
}
.glyphicon-th-large:before {
  content: "\e010";
}
.glyphicon-th:before {
  content: "\e011";
}
.glyphicon-th-list:before {
  content: "\e012";
}
.glyphicon-ok:before {
  content: "\e013";
}
.glyphicon-remove:before {
  content: "\e014";
}
.glyphicon-zoom-in:before {
  content: "\e015";
}
.glyphicon-zoom-out:before {
  content: "\e016";
}
.glyphicon-off:before {
  content: "\e017";
}
.glyphicon-signal:before {
  content: "\e018";
}
.glyphicon-cog:before {
  content: "\e019";
}
.glyphicon-trash:before {
  content: "\e020";
}
.glyphicon-home:before {
  content: "\e021";
}
.glyphicon-file:before {
  content: "\e022";
}
.glyphicon-time:before {
  content: "\e023";
}
.glyphicon-road:before {
  content: "\e024";
}
.glyphicon-download-alt:before {
  content: "\e025";
}
.glyphicon-download:before {
  content: "\e026";
}
.glyphicon-upload:before {
  content: "\e027";
}
.glyphicon-inbox:before {
  content: "\e028";
}
.glyphicon-play-circle:before {
  content: "\e029";
}
.glyphicon-repeat:before {
  content: "\e030";
}
.glyphicon-refresh:before {
  content: "\e031";
}
.glyphicon-list-alt:before {
  content: "\e032";
}
.glyphicon-lock:before {
  content: "\e033";
}
.glyphicon-flag:before {
  content: "\e034";
}
.glyphicon-headphones:before {
  content: "\e035";
}
.glyphicon-volume-off:before {
  content: "\e036";
}
.glyphicon-volume-down:before {
  content: "\e037";
}
.glyphicon-volume-up:before {
  content: "\e038";
}
.glyphicon-qrcode:before {
  content: "\e039";
}
.glyphicon-barcode:before {
  content: "\e040";
}
.glyphicon-tag:before {
  content: "\e041";
}
.glyphicon-tags:before {
  content: "\e042";
}
.glyphicon-book:before {
  content: "\e043";
}
.glyphicon-bookmark:before {
  content: "\e044";
}
.glyphicon-print:before {
  content: "\e045";
}
.glyphicon-camera:before {
  content: "\e046";
}
.glyphicon-font:before {
  content: "\e047";
}
.glyphicon-bold:before {
  content: "\e048";
}
.glyphicon-italic:before {
  content: "\e049";
}
.glyphicon-text-height:before {
  content: "\e050";
}
.glyphicon-text-width:before {
  content: "\e051";
}
.glyphicon-align-left:before {
  content: "\e052";
}
.glyphicon-align-center:before {
  content: "\e053";
}
.glyphicon-align-right:before {
  content: "\e054";
}
.glyphicon-align-justify:before {
  content: "\e055";
}
.glyphicon-list:before {
  content: "\e056";
}
.glyphicon-indent-left:before {
  content: "\e057";
}
.glyphicon-indent-right:before {
  content: "\e058";
}
.glyphicon-facetime-video:before {
  content: "\e059";
}
.glyphicon-picture:before {
  content: "\e060";
}
.glyphicon-map-marker:before {
  content: "\e062";
}
.glyphicon-adjust:before {
  content: "\e063";
}
.glyphicon-tint:before {
  content: "\e064";
}
.glyphicon-edit:before {
  content: "\e065";
}
.glyphicon-share:before {
  content: "\e066";
}
.glyphicon-check:before {
  content: "\e067";
}
.glyphicon-move:before {
  content: "\e068";
}
.glyphicon-step-backward:before {
  content: "\e069";
}
.glyphicon-fast-backward:before {
  content: "\e070";
}
.glyphicon-backward:before {
  content: "\e071";
}
.glyphicon-play:before {
  content: "\e072";
}
.glyphicon-pause:before {
  content: "\e073";
}
.glyphicon-stop:before {
  content: "\e074";
}
.glyphicon-forward:before {
  content: "\e075";
}
.glyphicon-fast-forward:before {
  content: "\e076";
}
.glyphicon-step-forward:before {
  content: "\e077";
}
.glyphicon-eject:before {
  content: "\e078";
}
.glyphicon-chevron-left:before {
  content: "\e079";
}
.glyphicon-chevron-right:before {
  content: "\e080";
}
.glyphicon-plus-sign:before {
  content: "\e081";
}
.glyphicon-minus-sign:before {
  content: "\e082";
}
.glyphicon-remove-sign:before {
  content: "\e083";
}
.glyphicon-ok-sign:before {
  content: "\e084";
}
.glyphicon-question-sign:before {
  content: "\e085";
}
.glyphicon-info-sign:before {
  content: "\e086";
}
.glyphicon-screenshot:before {
  content: "\e087";
}
.glyphicon-remove-circle:before {
  content: "\e088";
}
.glyphicon-ok-circle:before {
  content: "\e089";
}
.glyphicon-ban-circle:before {
  content: "\e090";
}
.glyphicon-arrow-left:before {
  content: "\e091";
}
.glyphicon-arrow-right:before {
  content: "\e092";
}
.glyphicon-arrow-up:before {
  content: "\e093";
}
.glyphicon-arrow-down:before {
  content: "\e094";
}
.glyphicon-share-alt:before {
  content: "\e095";
}
.glyphicon-resize-full:before {
  content: "\e096";
}
.glyphicon-resize-small:before {
  content: "\e097";
}
.glyphicon-exclamation-sign:before {
  content: "\e101";
}
.glyphicon-gift:before {
  content: "\e102";
}
.glyphicon-leaf:before {
  content: "\e103";
}
.glyphicon-fire:before {
  content: "\e104";
}
.glyphicon-eye-open:before {
  content: "\e105";
}
.glyphicon-eye-close:before {
  content: "\e106";
}
.glyphicon-warning-sign:before {
  content: "\e107";
}
.glyphicon-plane:before {
  content: "\e108";
}
.glyphicon-calendar:before {
  content: "\e109";
}
.glyphicon-random:before {
  content: "\e110";
}
.glyphicon-comment:before {
  content: "\e111";
}
.glyphicon-magnet:before {
  content: "\e112";
}
.glyphicon-chevron-up:before {
  content: "\e113";
}
.glyphicon-chevron-down:before {
  content: "\e114";
}
.glyphicon-retweet:before {
  content: "\e115";
}
.glyphicon-shopping-cart:before {
  content: "\e116";
}
.glyphicon-folder-close:before {
  content: "\e117";
}
.glyphicon-folder-open:before {
  content: "\e118";
}
.glyphicon-resize-vertical:before {
  content: "\e119";
}
.glyphicon-resize-horizontal:before {
  content: "\e120";
}
.glyphicon-hdd:before {
  content: "\e121";
}
.glyphicon-bullhorn:before {
  content: "\e122";
}
.glyphicon-bell:before {
  content: "\e123";
}
.glyphicon-certificate:before {
  content: "\e124";
}
.glyphicon-thumbs-up:before {
  content: "\e125";
}
.glyphicon-thumbs-down:before {
  content: "\e126";
}
.glyphicon-hand-right:before {
  content: "\e127";
}
.glyphicon-hand-left:before {
  content: "\e128";
}
.glyphicon-hand-up:before {
  content: "\e129";
}
.glyphicon-hand-down:before {
  content: "\e130";
}
.glyphicon-circle-arrow-right:before {
  content: "\e131";
}
.glyphicon-circle-arrow-left:before {
  content: "\e132";
}
.glyphicon-circle-arrow-up:before {
  content: "\e133";
}
.glyphicon-circle-arrow-down:before {
  content: "\e134";
}
.glyphicon-globe:before {
  content: "\e135";
}
.glyphicon-wrench:before {
  content: "\e136";
}
.glyphicon-tasks:before {
  content: "\e137";
}
.glyphicon-filter:before {
  content: "\e138";
}
.glyphicon-briefcase:before {
  content: "\e139";
}
.glyphicon-fullscreen:before {
  content: "\e140";
}
.glyphicon-dashboard:before {
  content: "\e141";
}
.glyphicon-paperclip:before {
  content: "\e142";
}
.glyphicon-heart-empty:before {
  content: "\e143";
}
.glyphicon-link:before {
  content: "\e144";
}
.glyphicon-phone:before {
  content: "\e145";
}
.glyphicon-pushpin:before {
  content: "\e146";
}
.glyphicon-usd:before {
  content: "\e148";
}
.glyphicon-gbp:before {
  content: "\e149";
}
.glyphicon-sort:before {
  content: "\e150";
}
.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}
.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}
.glyphicon-sort-by-order:before {
  content: "\e153";
}
.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}
.glyphicon-sort-by-attributes:before {
  content: "\e155";
}
.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}
.glyphicon-unchecked:before {
  content: "\e157";
}
.glyphicon-expand:before {
  content: "\e158";
}
.glyphicon-collapse-down:before {
  content: "\e159";
}
.glyphicon-collapse-up:before {
  content: "\e160";
}
.glyphicon-log-in:before {
  content: "\e161";
}
.glyphicon-flash:before {
  content: "\e162";
}
.glyphicon-log-out:before {
  content: "\e163";
}
.glyphicon-new-window:before {
  content: "\e164";
}
.glyphicon-record:before {
  content: "\e165";
}
.glyphicon-save:before {
  content: "\e166";
}
.glyphicon-open:before {
  content: "\e167";
}
.glyphicon-saved:before {
  content: "\e168";
}
.glyphicon-import:before {
  content: "\e169";
}
.glyphicon-export:before {
  content: "\e170";
}
.glyphicon-send:before {
  content: "\e171";
}
.glyphicon-floppy-disk:before {
  content: "\e172";
}
.glyphicon-floppy-saved:before {
  content: "\e173";
}
.glyphicon-floppy-remove:before {
  content: "\e174";
}
.glyphicon-floppy-save:before {
  content: "\e175";
}
.glyphicon-floppy-open:before {
  content: "\e176";
}
.glyphicon-credit-card:before {
  content: "\e177";
}
.glyphicon-transfer:before {
  content: "\e178";
}
.glyphicon-cutlery:before {
  content: "\e179";
}
.glyphicon-header:before {
  content: "\e180";
}
.glyphicon-compressed:before {
  content: "\e181";
}
.glyphicon-earphone:before {
  content: "\e182";
}
.glyphicon-phone-alt:before {
  content: "\e183";
}
.glyphicon-tower:before {
  content: "\e184";
}
.glyphicon-stats:before {
  content: "\e185";
}
.glyphicon-sd-video:before {
  content: "\e186";
}
.glyphicon-hd-video:before {
  content: "\e187";
}
.glyphicon-subtitles:before {
  content: "\e188";
}
.glyphicon-sound-stereo:before {
  content: "\e189";
}
.glyphicon-sound-dolby:before {
  content: "\e190";
}
.glyphicon-sound-5-1:before {
  content: "\e191";
}
.glyphicon-sound-6-1:before {
  content: "\e192";
}
.glyphicon-sound-7-1:before {
  content: "\e193";
}
.glyphicon-copyright-mark:before {
  content: "\e194";
}
.glyphicon-registration-mark:before {
  content: "\e195";
}
.glyphicon-cloud-download:before {
  content: "\e197";
}
.glyphicon-cloud-upload:before {
  content: "\e198";
}
.glyphicon-tree-conifer:before {
  content: "\e199";
}
.glyphicon-tree-deciduous:before {
  content: "\e200";
}
.glyphicon-cd:before {
  content: "\e201";
}
.glyphicon-save-file:before {
  content: "\e202";
}
.glyphicon-open-file:before {
  content: "\e203";
}
.glyphicon-level-up:before {
  content: "\e204";
}
.glyphicon-copy:before {
  content: "\e205";
}
.glyphicon-paste:before {
  content: "\e206";
}
.glyphicon-alert:before {
  content: "\e209";
}
.glyphicon-equalizer:before {
  content: "\e210";
}
.glyphicon-king:before {
  content: "\e211";
}
.glyphicon-queen:before {
  content: "\e212";
}
.glyphicon-pawn:before {
  content: "\e213";
}
.glyphicon-bishop:before {
  content: "\e214";
}
.glyphicon-knight:before {
  content: "\e215";
}
.glyphicon-baby-formula:before {
  content: "\e216";
}
.glyphicon-tent:before {
  content: "\26fa";
}
.glyphicon-blackboard:before {
  content: "\e218";
}
.glyphicon-bed:before {
  content: "\e219";
}
.glyphicon-apple:before {
  content: "\f8ff";
}
.glyphicon-erase:before {
  content: "\e221";
}
.glyphicon-hourglass:before {
  content: "\231b";
}
.glyphicon-lamp:before {
  content: "\e223";
}
.glyphicon-duplicate:before {
  content: "\e224";
}
.glyphicon-piggy-bank:before {
  content: "\e225";
}
.glyphicon-scissors:before {
  content: "\e226";
}
.glyphicon-bitcoin:before {
  content: "\e227";
}
.glyphicon-btc:before {
  content: "\e227";
}
.glyphicon-xbt:before {
  content: "\e227";
}
.glyphicon-yen:before {
  content: "\00a5";
}
.glyphicon-jpy:before {
  content: "\00a5";
}
.glyphicon-ruble:before {
  content: "\20bd";
}
.glyphicon-rub:before {
  content: "\20bd";
}
.glyphicon-scale:before {
  content: "\e230";
}
.glyphicon-ice-lolly:before {
  content: "\e231";
}
.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}
.glyphicon-education:before {
  content: "\e233";
}
.glyphicon-option-horizontal:before {
  content: "\e234";
}
.glyphicon-option-vertical:before {
  content: "\e235";
}
.glyphicon-menu-hamburger:before {
  content: "\e236";
}
.glyphicon-modal-window:before {
  content: "\e237";
}
.glyphicon-oil:before {
  content: "\e238";
}
.glyphicon-grain:before {
  content: "\e239";
}
.glyphicon-sunglasses:before {
  content: "\e240";
}
.glyphicon-text-size:before {
  content: "\e241";
}
.glyphicon-text-color:before {
  content: "\e242";
}
.glyphicon-text-background:before {
  content: "\e243";
}
.glyphicon-object-align-top:before {
  content: "\e244";
}
.glyphicon-object-align-bottom:before {
  content: "\e245";
}
.glyphicon-object-align-horizontal:before {
  content: "\e246";
}
.glyphicon-object-align-left:before {
  content: "\e247";
}
.glyphicon-object-align-vertical:before {
  content: "\e248";
}
.glyphicon-object-align-right:before {
  content: "\e249";
}
.glyphicon-triangle-right:before {
  content: "\e250";
}
.glyphicon-triangle-left:before {
  content: "\e251";
}
.glyphicon-triangle-bottom:before {
  content: "\e252";
}
.glyphicon-triangle-top:before {
  content: "\e253";
}
.glyphicon-console:before {
  content: "\e254";
}
.glyphicon-superscript:before {
  content: "\e255";
}
.glyphicon-subscript:before {
  content: "\e256";
}
.glyphicon-menu-left:before {
  content: "\e257";
}
.glyphicon-menu-right:before {
  content: "\e258";
}
.glyphicon-menu-down:before {
  content: "\e259";
}
.glyphicon-menu-up:before {
  content: "\e260";
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html {
  font-size: 10px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  line-height: 1.42857143;
  color: #000;
  background-color: #fff;
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  color: #337ab7;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
}
.img-rounded {
  border-radius: 3px;
}
.img-thumbnail {
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  display: inline-block;
  max-width: 100%;
  height: auto;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 18px;
  margin-bottom: 18px;
  border: 0;
  border-top: 1px solid #eeeeee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  margin: -1px;
  padding: 0;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 18px;
  margin-bottom: 9px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 9px;
  margin-bottom: 9px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 33px;
}
h2,
.h2 {
  font-size: 27px;
}
h3,
.h3 {
  font-size: 23px;
}
h4,
.h4 {
  font-size: 17px;
}
h5,
.h5 {
  font-size: 13px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin: 0 0 9px;
}
.lead {
  margin-bottom: 18px;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 19.5px;
  }
}
small,
.small {
  font-size: 92%;
}
mark,
.mark {
  background-color: #fcf8e3;
  padding: .2em;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 8px;
  margin: 36px 0 18px;
  border-bottom: 1px solid #eeeeee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 9px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  list-style: none;
  margin-left: -5px;
}
.list-inline > li {
  display: inline-block;
  padding-left: 5px;
  padding-right: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 18px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 541px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    clear: left;
    text-align: right;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 9px 18px;
  margin: 0 0 18px;
  font-size: inherit;
  border-left: 5px solid #eeeeee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
  text-align: right;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 18px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 2px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #888;
  background-color: transparent;
  border-radius: 1px;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  box-shadow: none;
}
pre {
  display: block;
  padding: 8.5px;
  margin: 0 0 9px;
  font-size: 12px;
  line-height: 1.42857143;
  word-break: break-all;
  word-wrap: break-word;
  color: #333333;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 2px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
@media (min-width: 768px) {
  .container {
    width: 768px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 940px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1140px;
  }
}
.container-fluid {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
.row {
  margin-left: 0px;
  margin-right: 0px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-left: 0px;
  padding-right: 0px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0%;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%;
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 75%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0%;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 18px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  float: none;
  display: table-column;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  float: none;
  display: table-cell;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  overflow-x: auto;
  min-height: 0.01%;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 13.5px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  padding: 0;
  margin: 0;
  border: 0;
  min-width: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 18px;
  font-size: 19.5px;
  line-height: inherit;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
}
.form-control {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  border: 0;
  background-color: transparent;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eeeeee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 32px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 45px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 18px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-left: -20px;
  margin-top: 4px \9;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  vertical-align: middle;
  font-weight: normal;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
  min-height: 31px;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-left: 0;
  padding-right: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 30px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-lg {
  height: 45px;
  line-height: 45px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.form-group-lg select.form-control {
  height: 45px;
  line-height: 45px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 45px;
  min-height: 35px;
  padding: 11px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 40px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 32px;
  height: 32px;
  line-height: 32px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 45px;
  height: 45px;
  line-height: 45px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  border-color: #3c763d;
  background-color: #dff0d8;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  border-color: #8a6d3b;
  background-color: #fcf8e3;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  border-color: #a94442;
  background-color: #f2dede;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 23px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #404040;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  margin-top: 0;
  margin-bottom: 0;
  padding-top: 7px;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 25px;
}
.form-horizontal .form-group {
  margin-left: 0px;
  margin-right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    text-align: right;
    margin-bottom: 0;
    padding-top: 7px;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 17px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: normal;
  text-align: center;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  white-space: nowrap;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  border-radius: 2px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  outline: 0;
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  box-shadow: none;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  color: #337ab7;
  font-weight: normal;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-property: height, visibility;
  transition-property: height, visibility;
  -webkit-transition-duration: 0.35s;
  transition-duration: 0.35s;
  -webkit-transition-timing-function: ease;
  transition-timing-function: ease;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  font-size: 13px;
  text-align: left;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 2px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  text-decoration: none;
  color: #262626;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  outline: 0;
  background-color: #337ab7;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: not-allowed;
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  left: auto;
  right: 0;
}
.dropdown-menu-left {
  left: 0;
  right: auto;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
  content: "";
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 541px) {
  .navbar-right .dropdown-menu {
    left: auto;
    right: 0;
  }
  .navbar-right .dropdown-menu-left {
    left: 0;
    right: auto;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  float: none;
  display: table-cell;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-left: 0;
  padding-right: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  line-height: 45px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  color: #555555;
  text-align: center;
  background-color: #eeeeee;
  border: 1px solid #ccc;
  border-radius: 2px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 1px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 17px;
  border-radius: 3px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.nav > li.disabled > a {
  color: #777777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777777;
  text-decoration: none;
  background-color: transparent;
  cursor: not-allowed;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eeeeee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 2px 2px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eeeeee #eeeeee #ddd;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555555;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 2px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar {
  position: relative;
  min-height: 30px;
  margin-bottom: 18px;
  border: 1px solid transparent;
}
@media (min-width: 541px) {
  .navbar {
    border-radius: 2px;
  }
}
@media (min-width: 541px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  overflow-x: visible;
  padding-right: 0px;
  padding-left: 0px;
  border-top: 1px solid transparent;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
  -webkit-overflow-scrolling: touch;
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 541px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-left: 0;
    padding-right: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 540px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: 0px;
  margin-left: 0px;
}
@media (min-width: 541px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 541px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 541px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  padding: 6px 0px;
  font-size: 17px;
  line-height: 18px;
  height: 30px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 541px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: 0px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  margin-right: 0px;
  padding: 9px 10px;
  margin-top: -2px;
  margin-bottom: -2px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 2px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 541px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 3px 0px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 18px;
}
@media (max-width: 540px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 18px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 541px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 6px;
    padding-bottom: 6px;
  }
}
.navbar-form {
  margin-left: 0px;
  margin-right: 0px;
  padding: 10px 0px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: -1px;
  margin-bottom: -1px;
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 540px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 541px) {
  .navbar-form {
    width: auto;
    border: 0;
    margin-left: 0;
    margin-right: 0;
    padding-top: 0;
    padding-bottom: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: -1px;
  margin-bottom: -1px;
}
.navbar-btn.btn-sm {
  margin-top: 0px;
  margin-bottom: 0px;
}
.navbar-btn.btn-xs {
  margin-top: 4px;
  margin-bottom: 4px;
}
.navbar-text {
  margin-top: 6px;
  margin-bottom: 6px;
}
@media (min-width: 541px) {
  .navbar-text {
    float: left;
    margin-left: 0px;
    margin-right: 0px;
  }
}
@media (min-width: 541px) {
  .navbar-left {
    float: left !important;
    float: left;
  }
  .navbar-right {
    float: right !important;
    float: right;
    margin-right: 0px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  background-color: #e7e7e7;
  color: #555;
}
@media (max-width: 540px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  background-color: #080808;
  color: #fff;
}
@media (max-width: 540px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 18px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 2px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  content: "/\00a0";
  padding: 0 5px;
  color: #5e5e5e;
}
.breadcrumb > .active {
  color: #777777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 18px 0;
  border-radius: 2px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  line-height: 1.42857143;
  text-decoration: none;
  color: #337ab7;
  background-color: #fff;
  border: 1px solid #ddd;
  margin-left: -1px;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-bottom-right-radius: 2px;
  border-top-right-radius: 2px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eeeeee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
  cursor: default;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777777;
  background-color: #fff;
  border-color: #ddd;
  cursor: not-allowed;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-bottom-left-radius: 1px;
  border-top-left-radius: 1px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-bottom-right-radius: 1px;
  border-top-right-radius: 1px;
}
.pager {
  padding-left: 0;
  margin: 18px 0;
  list-style: none;
  text-align: center;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777777;
  background-color: #fff;
  cursor: not-allowed;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  color: #fff;
  line-height: 1;
  vertical-align: middle;
  white-space: nowrap;
  text-align: center;
  background-color: #777777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eeeeee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 20px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  border-radius: 3px;
  padding-left: 0px;
  padding-right: 0px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-left: 60px;
    padding-right: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 59px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 18px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: border 0.2s ease-in-out;
  -o-transition: border 0.2s ease-in-out;
  transition: border 0.2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-left: auto;
  margin-right: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #000;
}
.alert {
  padding: 15px;
  margin-bottom: 18px;
  border: 1px solid transparent;
  border-radius: 2px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #3c763d;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #31708f;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  background-color: #fcf8e3;
  border-color: #faebcc;
  color: #8a6d3b;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  background-color: #f2dede;
  border-color: #ebccd1;
  color: #a94442;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  overflow: hidden;
  height: 18px;
  margin-bottom: 18px;
  background-color: #f5f5f5;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}
.progress-bar {
  float: left;
  width: 0%;
  height: 100%;
  font-size: 12px;
  line-height: 18px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  zoom: 1;
  overflow: hidden;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  margin-bottom: 20px;
  padding-left: 0;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  text-decoration: none;
  color: #555;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  background-color: #eeeeee;
  color: #777777;
  cursor: not-allowed;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 18px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 2px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 15px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-left: 15px;
  padding-right: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 1px;
  border-top-right-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 1px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-left-radius: 1px;
  border-bottom-right-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 1px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  border: 0;
  margin-bottom: 0;
}
.panel-group {
  margin-bottom: 18px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 2px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  height: 100%;
  width: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
.well-lg {
  padding: 24px;
  border-radius: 3px;
}
.well-sm {
  padding: 9px;
  border-radius: 1px;
}
.close {
  float: right;
  font-size: 19.5px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
.modal-open {
  overflow: hidden;
}
.modal {
  display: none;
  overflow: hidden;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, -25%);
  -ms-transform: translate(0, -25%);
  -o-transform: translate(0, -25%);
  transform: translate(0, -25%);
  -webkit-transition: -webkit-transform 0.3s ease-out;
  -moz-transition: -moz-transform 0.3s ease-out;
  -o-transition: -o-transform 0.3s ease-out;
  transition: transform 0.3s ease-out;
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  background-clip: padding-box;
  outline: 0;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  opacity: 0;
  filter: alpha(opacity=0);
}
.modal-backdrop.in {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 12px;
  opacity: 0;
  filter: alpha(opacity=0);
}
.tooltip.in {
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
.tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
.tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
.tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 2px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  bottom: 0;
  right: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 13px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 13px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 2px 2px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  border-width: 10px;
  content: "";
}
.popover.top > .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
.popover.top > .arrow:after {
  content: " ";
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #fff;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
.popover.right > .arrow:after {
  content: " ";
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #fff;
}
.popover.bottom > .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
.popover.bottom > .arrow:after {
  content: " ";
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
.popover.left > .arrow:after {
  content: " ";
  right: 1px;
  border-right-width: 0;
  border-left-color: #fff;
  bottom: -10px;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}
.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    -moz-transition: -moz-transform 0.6s ease-in-out;
    -o-transition: -o-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 15%;
  opacity: 0.5;
  filter: alpha(opacity=50);
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
}
.carousel-control.right {
  left: auto;
  right: 0;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
}
.carousel-control:hover,
.carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  border: 1px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
}
.carousel-indicators .active {
  margin: 0;
  width: 12px;
  height: 12px;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after,
.item_buttons:before,
.item_buttons:after {
  content: " ";
  display: table;
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after,
.item_buttons:after {
  clear: both;
}
.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}
/*!
*
* Font Awesome
*
*/
/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */
/* FONT PATH
 * -------------------------- */
@font-face {
  font-family: 'FontAwesome';
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('../components/font-awesome/fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('../components/font-awesome/fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('../components/font-awesome/fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('../components/font-awesome/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
}
.fa {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
/* makes the font 33% larger relative to the icon container */
.fa-lg {
  font-size: 1.33333333em;
  line-height: 0.75em;
  vertical-align: -15%;
}
.fa-2x {
  font-size: 2em;
}
.fa-3x {
  font-size: 3em;
}
.fa-4x {
  font-size: 4em;
}
.fa-5x {
  font-size: 5em;
}
.fa-fw {
  width: 1.28571429em;
  text-align: center;
}
.fa-ul {
  padding-left: 0;
  margin-left: 2.14285714em;
  list-style-type: none;
}
.fa-ul > li {
  position: relative;
}
.fa-li {
  position: absolute;
  left: -2.14285714em;
  width: 2.14285714em;
  top: 0.14285714em;
  text-align: center;
}
.fa-li.fa-lg {
  left: -1.85714286em;
}
.fa-border {
  padding: .2em .25em .15em;
  border: solid 0.08em #eee;
  border-radius: .1em;
}
.fa-pull-left {
  float: left;
}
.fa-pull-right {
  float: right;
}
.fa.fa-pull-left {
  margin-right: .3em;
}
.fa.fa-pull-right {
  margin-left: .3em;
}
/* Deprecated as of 4.4.0 */
.pull-right {
  float: right;
}
.pull-left {
  float: left;
}
.fa.pull-left {
  margin-right: .3em;
}
.fa.pull-right {
  margin-left: .3em;
}
.fa-spin {
  -webkit-animation: fa-spin 2s infinite linear;
  animation: fa-spin 2s infinite linear;
}
.fa-pulse {
  -webkit-animation: fa-spin 1s infinite steps(8);
  animation: fa-spin 1s infinite steps(8);
}
@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
.fa-rotate-90 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.fa-rotate-180 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg);
}
.fa-rotate-270 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
  -webkit-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  transform: rotate(270deg);
}
.fa-flip-horizontal {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
  -webkit-transform: scale(-1, 1);
  -ms-transform: scale(-1, 1);
  transform: scale(-1, 1);
}
.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(1, -1);
  -ms-transform: scale(1, -1);
  transform: scale(1, -1);
}
:root .fa-rotate-90,
:root .fa-rotate-180,
:root .fa-rotate-270,
:root .fa-flip-horizontal,
:root .fa-flip-vertical {
  filter: none;
}
.fa-stack {
  position: relative;
  display: inline-block;
  width: 2em;
  height: 2em;
  line-height: 2em;
  vertical-align: middle;
}
.fa-stack-1x,
.fa-stack-2x {
  position: absolute;
  left: 0;
  width: 100%;
  text-align: center;
}
.fa-stack-1x {
  line-height: inherit;
}
.fa-stack-2x {
  font-size: 2em;
}
.fa-inverse {
  color: #fff;
}
/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
   readers do not read off random characters that represent icons */
.fa-glass:before {
  content: "\f000";
}
.fa-music:before {
  content: "\f001";
}
.fa-search:before {
  content: "\f002";
}
.fa-envelope-o:before {
  content: "\f003";
}
.fa-heart:before {
  content: "\f004";
}
.fa-star:before {
  content: "\f005";
}
.fa-star-o:before {
  content: "\f006";
}
.fa-user:before {
  content: "\f007";
}
.fa-film:before {
  content: "\f008";
}
.fa-th-large:before {
  content: "\f009";
}
.fa-th:before {
  content: "\f00a";
}
.fa-th-list:before {
  content: "\f00b";
}
.fa-check:before {
  content: "\f00c";
}
.fa-remove:before,
.fa-close:before,
.fa-times:before {
  content: "\f00d";
}
.fa-search-plus:before {
  content: "\f00e";
}
.fa-search-minus:before {
  content: "\f010";
}
.fa-power-off:before {
  content: "\f011";
}
.fa-signal:before {
  content: "\f012";
}
.fa-gear:before,
.fa-cog:before {
  content: "\f013";
}
.fa-trash-o:before {
  content: "\f014";
}
.fa-home:before {
  content: "\f015";
}
.fa-file-o:before {
  content: "\f016";
}
.fa-clock-o:before {
  content: "\f017";
}
.fa-road:before {
  content: "\f018";
}
.fa-download:before {
  content: "\f019";
}
.fa-arrow-circle-o-down:before {
  content: "\f01a";
}
.fa-arrow-circle-o-up:before {
  content: "\f01b";
}
.fa-inbox:before {
  content: "\f01c";
}
.fa-play-circle-o:before {
  content: "\f01d";
}
.fa-rotate-right:before,
.fa-repeat:before {
  content: "\f01e";
}
.fa-refresh:before {
  content: "\f021";
}
.fa-list-alt:before {
  content: "\f022";
}
.fa-lock:before {
  content: "\f023";
}
.fa-flag:before {
  content: "\f024";
}
.fa-headphones:before {
  content: "\f025";
}
.fa-volume-off:before {
  content: "\f026";
}
.fa-volume-down:before {
  content: "\f027";
}
.fa-volume-up:before {
  content: "\f028";
}
.fa-qrcode:before {
  content: "\f029";
}
.fa-barcode:before {
  content: "\f02a";
}
.fa-tag:before {
  content: "\f02b";
}
.fa-tags:before {
  content: "\f02c";
}
.fa-book:before {
  content: "\f02d";
}
.fa-bookmark:before {
  content: "\f02e";
}
.fa-print:before {
  content: "\f02f";
}
.fa-camera:before {
  content: "\f030";
}
.fa-font:before {
  content: "\f031";
}
.fa-bold:before {
  content: "\f032";
}
.fa-italic:before {
  content: "\f033";
}
.fa-text-height:before {
  content: "\f034";
}
.fa-text-width:before {
  content: "\f035";
}
.fa-align-left:before {
  content: "\f036";
}
.fa-align-center:before {
  content: "\f037";
}
.fa-align-right:before {
  content: "\f038";
}
.fa-align-justify:before {
  content: "\f039";
}
.fa-list:before {
  content: "\f03a";
}
.fa-dedent:before,
.fa-outdent:before {
  content: "\f03b";
}
.fa-indent:before {
  content: "\f03c";
}
.fa-video-camera:before {
  content: "\f03d";
}
.fa-photo:before,
.fa-image:before,
.fa-picture-o:before {
  content: "\f03e";
}
.fa-pencil:before {
  content: "\f040";
}
.fa-map-marker:before {
  content: "\f041";
}
.fa-adjust:before {
  content: "\f042";
}
.fa-tint:before {
  content: "\f043";
}
.fa-edit:before,
.fa-pencil-square-o:before {
  content: "\f044";
}
.fa-share-square-o:before {
  content: "\f045";
}
.fa-check-square-o:before {
  content: "\f046";
}
.fa-arrows:before {
  content: "\f047";
}
.fa-step-backward:before {
  content: "\f048";
}
.fa-fast-backward:before {
  content: "\f049";
}
.fa-backward:before {
  content: "\f04a";
}
.fa-play:before {
  content: "\f04b";
}
.fa-pause:before {
  content: "\f04c";
}
.fa-stop:before {
  content: "\f04d";
}
.fa-forward:before {
  content: "\f04e";
}
.fa-fast-forward:before {
  content: "\f050";
}
.fa-step-forward:before {
  content: "\f051";
}
.fa-eject:before {
  content: "\f052";
}
.fa-chevron-left:before {
  content: "\f053";
}
.fa-chevron-right:before {
  content: "\f054";
}
.fa-plus-circle:before {
  content: "\f055";
}
.fa-minus-circle:before {
  content: "\f056";
}
.fa-times-circle:before {
  content: "\f057";
}
.fa-check-circle:before {
  content: "\f058";
}
.fa-question-circle:before {
  content: "\f059";
}
.fa-info-circle:before {
  content: "\f05a";
}
.fa-crosshairs:before {
  content: "\f05b";
}
.fa-times-circle-o:before {
  content: "\f05c";
}
.fa-check-circle-o:before {
  content: "\f05d";
}
.fa-ban:before {
  content: "\f05e";
}
.fa-arrow-left:before {
  content: "\f060";
}
.fa-arrow-right:before {
  content: "\f061";
}
.fa-arrow-up:before {
  content: "\f062";
}
.fa-arrow-down:before {
  content: "\f063";
}
.fa-mail-forward:before,
.fa-share:before {
  content: "\f064";
}
.fa-expand:before {
  content: "\f065";
}
.fa-compress:before {
  content: "\f066";
}
.fa-plus:before {
  content: "\f067";
}
.fa-minus:before {
  content: "\f068";
}
.fa-asterisk:before {
  content: "\f069";
}
.fa-exclamation-circle:before {
  content: "\f06a";
}
.fa-gift:before {
  content: "\f06b";
}
.fa-leaf:before {
  content: "\f06c";
}
.fa-fire:before {
  content: "\f06d";
}
.fa-eye:before {
  content: "\f06e";
}
.fa-eye-slash:before {
  content: "\f070";
}
.fa-warning:before,
.fa-exclamation-triangle:before {
  content: "\f071";
}
.fa-plane:before {
  content: "\f072";
}
.fa-calendar:before {
  content: "\f073";
}
.fa-random:before {
  content: "\f074";
}
.fa-comment:before {
  content: "\f075";
}
.fa-magnet:before {
  content: "\f076";
}
.fa-chevron-up:before {
  content: "\f077";
}
.fa-chevron-down:before {
  content: "\f078";
}
.fa-retweet:before {
  content: "\f079";
}
.fa-shopping-cart:before {
  content: "\f07a";
}
.fa-folder:before {
  content: "\f07b";
}
.fa-folder-open:before {
  content: "\f07c";
}
.fa-arrows-v:before {
  content: "\f07d";
}
.fa-arrows-h:before {
  content: "\f07e";
}
.fa-bar-chart-o:before,
.fa-bar-chart:before {
  content: "\f080";
}
.fa-twitter-square:before {
  content: "\f081";
}
.fa-facebook-square:before {
  content: "\f082";
}
.fa-camera-retro:before {
  content: "\f083";
}
.fa-key:before {
  content: "\f084";
}
.fa-gears:before,
.fa-cogs:before {
  content: "\f085";
}
.fa-comments:before {
  content: "\f086";
}
.fa-thumbs-o-up:before {
  content: "\f087";
}
.fa-thumbs-o-down:before {
  content: "\f088";
}
.fa-star-half:before {
  content: "\f089";
}
.fa-heart-o:before {
  content: "\f08a";
}
.fa-sign-out:before {
  content: "\f08b";
}
.fa-linkedin-square:before {
  content: "\f08c";
}
.fa-thumb-tack:before {
  content: "\f08d";
}
.fa-external-link:before {
  content: "\f08e";
}
.fa-sign-in:before {
  content: "\f090";
}
.fa-trophy:before {
  content: "\f091";
}
.fa-github-square:before {
  content: "\f092";
}
.fa-upload:before {
  content: "\f093";
}
.fa-lemon-o:before {
  content: "\f094";
}
.fa-phone:before {
  content: "\f095";
}
.fa-square-o:before {
  content: "\f096";
}
.fa-bookmark-o:before {
  content: "\f097";
}
.fa-phone-square:before {
  content: "\f098";
}
.fa-twitter:before {
  content: "\f099";
}
.fa-facebook-f:before,
.fa-facebook:before {
  content: "\f09a";
}
.fa-github:before {
  content: "\f09b";
}
.fa-unlock:before {
  content: "\f09c";
}
.fa-credit-card:before {
  content: "\f09d";
}
.fa-feed:before,
.fa-rss:before {
  content: "\f09e";
}
.fa-hdd-o:before {
  content: "\f0a0";
}
.fa-bullhorn:before {
  content: "\f0a1";
}
.fa-bell:before {
  content: "\f0f3";
}
.fa-certificate:before {
  content: "\f0a3";
}
.fa-hand-o-right:before {
  content: "\f0a4";
}
.fa-hand-o-left:before {
  content: "\f0a5";
}
.fa-hand-o-up:before {
  content: "\f0a6";
}
.fa-hand-o-down:before {
  content: "\f0a7";
}
.fa-arrow-circle-left:before {
  content: "\f0a8";
}
.fa-arrow-circle-right:before {
  content: "\f0a9";
}
.fa-arrow-circle-up:before {
  content: "\f0aa";
}
.fa-arrow-circle-down:before {
  content: "\f0ab";
}
.fa-globe:before {
  content: "\f0ac";
}
.fa-wrench:before {
  content: "\f0ad";
}
.fa-tasks:before {
  content: "\f0ae";
}
.fa-filter:before {
  content: "\f0b0";
}
.fa-briefcase:before {
  content: "\f0b1";
}
.fa-arrows-alt:before {
  content: "\f0b2";
}
.fa-group:before,
.fa-users:before {
  content: "\f0c0";
}
.fa-chain:before,
.fa-link:before {
  content: "\f0c1";
}
.fa-cloud:before {
  content: "\f0c2";
}
.fa-flask:before {
  content: "\f0c3";
}
.fa-cut:before,
.fa-scissors:before {
  content: "\f0c4";
}
.fa-copy:before,
.fa-files-o:before {
  content: "\f0c5";
}
.fa-paperclip:before {
  content: "\f0c6";
}
.fa-save:before,
.fa-floppy-o:before {
  content: "\f0c7";
}
.fa-square:before {
  content: "\f0c8";
}
.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  content: "\f0c9";
}
.fa-list-ul:before {
  content: "\f0ca";
}
.fa-list-ol:before {
  content: "\f0cb";
}
.fa-strikethrough:before {
  content: "\f0cc";
}
.fa-underline:before {
  content: "\f0cd";
}
.fa-table:before {
  content: "\f0ce";
}
.fa-magic:before {
  content: "\f0d0";
}
.fa-truck:before {
  content: "\f0d1";
}
.fa-pinterest:before {
  content: "\f0d2";
}
.fa-pinterest-square:before {
  content: "\f0d3";
}
.fa-google-plus-square:before {
  content: "\f0d4";
}
.fa-google-plus:before {
  content: "\f0d5";
}
.fa-money:before {
  content: "\f0d6";
}
.fa-caret-down:before {
  content: "\f0d7";
}
.fa-caret-up:before {
  content: "\f0d8";
}
.fa-caret-left:before {
  content: "\f0d9";
}
.fa-caret-right:before {
  content: "\f0da";
}
.fa-columns:before {
  content: "\f0db";
}
.fa-unsorted:before,
.fa-sort:before {
  content: "\f0dc";
}
.fa-sort-down:before,
.fa-sort-desc:before {
  content: "\f0dd";
}
.fa-sort-up:before,
.fa-sort-asc:before {
  content: "\f0de";
}
.fa-envelope:before {
  content: "\f0e0";
}
.fa-linkedin:before {
  content: "\f0e1";
}
.fa-rotate-left:before,
.fa-undo:before {
  content: "\f0e2";
}
.fa-legal:before,
.fa-gavel:before {
  content: "\f0e3";
}
.fa-dashboard:before,
.fa-tachometer:before {
  content: "\f0e4";
}
.fa-comment-o:before {
  content: "\f0e5";
}
.fa-comments-o:before {
  content: "\f0e6";
}
.fa-flash:before,
.fa-bolt:before {
  content: "\f0e7";
}
.fa-sitemap:before {
  content: "\f0e8";
}
.fa-umbrella:before {
  content: "\f0e9";
}
.fa-paste:before,
.fa-clipboard:before {
  content: "\f0ea";
}
.fa-lightbulb-o:before {
  content: "\f0eb";
}
.fa-exchange:before {
  content: "\f0ec";
}
.fa-cloud-download:before {
  content: "\f0ed";
}
.fa-cloud-upload:before {
  content: "\f0ee";
}
.fa-user-md:before {
  content: "\f0f0";
}
.fa-stethoscope:before {
  content: "\f0f1";
}
.fa-suitcase:before {
  content: "\f0f2";
}
.fa-bell-o:before {
  content: "\f0a2";
}
.fa-coffee:before {
  content: "\f0f4";
}
.fa-cutlery:before {
  content: "\f0f5";
}
.fa-file-text-o:before {
  content: "\f0f6";
}
.fa-building-o:before {
  content: "\f0f7";
}
.fa-hospital-o:before {
  content: "\f0f8";
}
.fa-ambulance:before {
  content: "\f0f9";
}
.fa-medkit:before {
  content: "\f0fa";
}
.fa-fighter-jet:before {
  content: "\f0fb";
}
.fa-beer:before {
  content: "\f0fc";
}
.fa-h-square:before {
  content: "\f0fd";
}
.fa-plus-square:before {
  content: "\f0fe";
}
.fa-angle-double-left:before {
  content: "\f100";
}
.fa-angle-double-right:before {
  content: "\f101";
}
.fa-angle-double-up:before {
  content: "\f102";
}
.fa-angle-double-down:before {
  content: "\f103";
}
.fa-angle-left:before {
  content: "\f104";
}
.fa-angle-right:before {
  content: "\f105";
}
.fa-angle-up:before {
  content: "\f106";
}
.fa-angle-down:before {
  content: "\f107";
}
.fa-desktop:before {
  content: "\f108";
}
.fa-laptop:before {
  content: "\f109";
}
.fa-tablet:before {
  content: "\f10a";
}
.fa-mobile-phone:before,
.fa-mobile:before {
  content: "\f10b";
}
.fa-circle-o:before {
  content: "\f10c";
}
.fa-quote-left:before {
  content: "\f10d";
}
.fa-quote-right:before {
  content: "\f10e";
}
.fa-spinner:before {
  content: "\f110";
}
.fa-circle:before {
  content: "\f111";
}
.fa-mail-reply:before,
.fa-reply:before {
  content: "\f112";
}
.fa-github-alt:before {
  content: "\f113";
}
.fa-folder-o:before {
  content: "\f114";
}
.fa-folder-open-o:before {
  content: "\f115";
}
.fa-smile-o:before {
  content: "\f118";
}
.fa-frown-o:before {
  content: "\f119";
}
.fa-meh-o:before {
  content: "\f11a";
}
.fa-gamepad:before {
  content: "\f11b";
}
.fa-keyboard-o:before {
  content: "\f11c";
}
.fa-flag-o:before {
  content: "\f11d";
}
.fa-flag-checkered:before {
  content: "\f11e";
}
.fa-terminal:before {
  content: "\f120";
}
.fa-code:before {
  content: "\f121";
}
.fa-mail-reply-all:before,
.fa-reply-all:before {
  content: "\f122";
}
.fa-star-half-empty:before,
.fa-star-half-full:before,
.fa-star-half-o:before {
  content: "\f123";
}
.fa-location-arrow:before {
  content: "\f124";
}
.fa-crop:before {
  content: "\f125";
}
.fa-code-fork:before {
  content: "\f126";
}
.fa-unlink:before,
.fa-chain-broken:before {
  content: "\f127";
}
.fa-question:before {
  content: "\f128";
}
.fa-info:before {
  content: "\f129";
}
.fa-exclamation:before {
  content: "\f12a";
}
.fa-superscript:before {
  content: "\f12b";
}
.fa-subscript:before {
  content: "\f12c";
}
.fa-eraser:before {
  content: "\f12d";
}
.fa-puzzle-piece:before {
  content: "\f12e";
}
.fa-microphone:before {
  content: "\f130";
}
.fa-microphone-slash:before {
  content: "\f131";
}
.fa-shield:before {
  content: "\f132";
}
.fa-calendar-o:before {
  content: "\f133";
}
.fa-fire-extinguisher:before {
  content: "\f134";
}
.fa-rocket:before {
  content: "\f135";
}
.fa-maxcdn:before {
  content: "\f136";
}
.fa-chevron-circle-left:before {
  content: "\f137";
}
.fa-chevron-circle-right:before {
  content: "\f138";
}
.fa-chevron-circle-up:before {
  content: "\f139";
}
.fa-chevron-circle-down:before {
  content: "\f13a";
}
.fa-html5:before {
  content: "\f13b";
}
.fa-css3:before {
  content: "\f13c";
}
.fa-anchor:before {
  content: "\f13d";
}
.fa-unlock-alt:before {
  content: "\f13e";
}
.fa-bullseye:before {
  content: "\f140";
}
.fa-ellipsis-h:before {
  content: "\f141";
}
.fa-ellipsis-v:before {
  content: "\f142";
}
.fa-rss-square:before {
  content: "\f143";
}
.fa-play-circle:before {
  content: "\f144";
}
.fa-ticket:before {
  content: "\f145";
}
.fa-minus-square:before {
  content: "\f146";
}
.fa-minus-square-o:before {
  content: "\f147";
}
.fa-level-up:before {
  content: "\f148";
}
.fa-level-down:before {
  content: "\f149";
}
.fa-check-square:before {
  content: "\f14a";
}
.fa-pencil-square:before {
  content: "\f14b";
}
.fa-external-link-square:before {
  content: "\f14c";
}
.fa-share-square:before {
  content: "\f14d";
}
.fa-compass:before {
  content: "\f14e";
}
.fa-toggle-down:before,
.fa-caret-square-o-down:before {
  content: "\f150";
}
.fa-toggle-up:before,
.fa-caret-square-o-up:before {
  content: "\f151";
}
.fa-toggle-right:before,
.fa-caret-square-o-right:before {
  content: "\f152";
}
.fa-euro:before,
.fa-eur:before {
  content: "\f153";
}
.fa-gbp:before {
  content: "\f154";
}
.fa-dollar:before,
.fa-usd:before {
  content: "\f155";
}
.fa-rupee:before,
.fa-inr:before {
  content: "\f156";
}
.fa-cny:before,
.fa-rmb:before,
.fa-yen:before,
.fa-jpy:before {
  content: "\f157";
}
.fa-ruble:before,
.fa-rouble:before,
.fa-rub:before {
  content: "\f158";
}
.fa-won:before,
.fa-krw:before {
  content: "\f159";
}
.fa-bitcoin:before,
.fa-btc:before {
  content: "\f15a";
}
.fa-file:before {
  content: "\f15b";
}
.fa-file-text:before {
  content: "\f15c";
}
.fa-sort-alpha-asc:before {
  content: "\f15d";
}
.fa-sort-alpha-desc:before {
  content: "\f15e";
}
.fa-sort-amount-asc:before {
  content: "\f160";
}
.fa-sort-amount-desc:before {
  content: "\f161";
}
.fa-sort-numeric-asc:before {
  content: "\f162";
}
.fa-sort-numeric-desc:before {
  content: "\f163";
}
.fa-thumbs-up:before {
  content: "\f164";
}
.fa-thumbs-down:before {
  content: "\f165";
}
.fa-youtube-square:before {
  content: "\f166";
}
.fa-youtube:before {
  content: "\f167";
}
.fa-xing:before {
  content: "\f168";
}
.fa-xing-square:before {
  content: "\f169";
}
.fa-youtube-play:before {
  content: "\f16a";
}
.fa-dropbox:before {
  content: "\f16b";
}
.fa-stack-overflow:before {
  content: "\f16c";
}
.fa-instagram:before {
  content: "\f16d";
}
.fa-flickr:before {
  content: "\f16e";
}
.fa-adn:before {
  content: "\f170";
}
.fa-bitbucket:before {
  content: "\f171";
}
.fa-bitbucket-square:before {
  content: "\f172";
}
.fa-tumblr:before {
  content: "\f173";
}
.fa-tumblr-square:before {
  content: "\f174";
}
.fa-long-arrow-down:before {
  content: "\f175";
}
.fa-long-arrow-up:before {
  content: "\f176";
}
.fa-long-arrow-left:before {
  content: "\f177";
}
.fa-long-arrow-right:before {
  content: "\f178";
}
.fa-apple:before {
  content: "\f179";
}
.fa-windows:before {
  content: "\f17a";
}
.fa-android:before {
  content: "\f17b";
}
.fa-linux:before {
  content: "\f17c";
}
.fa-dribbble:before {
  content: "\f17d";
}
.fa-skype:before {
  content: "\f17e";
}
.fa-foursquare:before {
  content: "\f180";
}
.fa-trello:before {
  content: "\f181";
}
.fa-female:before {
  content: "\f182";
}
.fa-male:before {
  content: "\f183";
}
.fa-gittip:before,
.fa-gratipay:before {
  content: "\f184";
}
.fa-sun-o:before {
  content: "\f185";
}
.fa-moon-o:before {
  content: "\f186";
}
.fa-archive:before {
  content: "\f187";
}
.fa-bug:before {
  content: "\f188";
}
.fa-vk:before {
  content: "\f189";
}
.fa-weibo:before {
  content: "\f18a";
}
.fa-renren:before {
  content: "\f18b";
}
.fa-pagelines:before {
  content: "\f18c";
}
.fa-stack-exchange:before {
  content: "\f18d";
}
.fa-arrow-circle-o-right:before {
  content: "\f18e";
}
.fa-arrow-circle-o-left:before {
  content: "\f190";
}
.fa-toggle-left:before,
.fa-caret-square-o-left:before {
  content: "\f191";
}
.fa-dot-circle-o:before {
  content: "\f192";
}
.fa-wheelchair:before {
  content: "\f193";
}
.fa-vimeo-square:before {
  content: "\f194";
}
.fa-turkish-lira:before,
.fa-try:before {
  content: "\f195";
}
.fa-plus-square-o:before {
  content: "\f196";
}
.fa-space-shuttle:before {
  content: "\f197";
}
.fa-slack:before {
  content: "\f198";
}
.fa-envelope-square:before {
  content: "\f199";
}
.fa-wordpress:before {
  content: "\f19a";
}
.fa-openid:before {
  content: "\f19b";
}
.fa-institution:before,
.fa-bank:before,
.fa-university:before {
  content: "\f19c";
}
.fa-mortar-board:before,
.fa-graduation-cap:before {
  content: "\f19d";
}
.fa-yahoo:before {
  content: "\f19e";
}
.fa-google:before {
  content: "\f1a0";
}
.fa-reddit:before {
  content: "\f1a1";
}
.fa-reddit-square:before {
  content: "\f1a2";
}
.fa-stumbleupon-circle:before {
  content: "\f1a3";
}
.fa-stumbleupon:before {
  content: "\f1a4";
}
.fa-delicious:before {
  content: "\f1a5";
}
.fa-digg:before {
  content: "\f1a6";
}
.fa-pied-piper-pp:before {
  content: "\f1a7";
}
.fa-pied-piper-alt:before {
  content: "\f1a8";
}
.fa-drupal:before {
  content: "\f1a9";
}
.fa-joomla:before {
  content: "\f1aa";
}
.fa-language:before {
  content: "\f1ab";
}
.fa-fax:before {
  content: "\f1ac";
}
.fa-building:before {
  content: "\f1ad";
}
.fa-child:before {
  content: "\f1ae";
}
.fa-paw:before {
  content: "\f1b0";
}
.fa-spoon:before {
  content: "\f1b1";
}
.fa-cube:before {
  content: "\f1b2";
}
.fa-cubes:before {
  content: "\f1b3";
}
.fa-behance:before {
  content: "\f1b4";
}
.fa-behance-square:before {
  content: "\f1b5";
}
.fa-steam:before {
  content: "\f1b6";
}
.fa-steam-square:before {
  content: "\f1b7";
}
.fa-recycle:before {
  content: "\f1b8";
}
.fa-automobile:before,
.fa-car:before {
  content: "\f1b9";
}
.fa-cab:before,
.fa-taxi:before {
  content: "\f1ba";
}
.fa-tree:before {
  content: "\f1bb";
}
.fa-spotify:before {
  content: "\f1bc";
}
.fa-deviantart:before {
  content: "\f1bd";
}
.fa-soundcloud:before {
  content: "\f1be";
}
.fa-database:before {
  content: "\f1c0";
}
.fa-file-pdf-o:before {
  content: "\f1c1";
}
.fa-file-word-o:before {
  content: "\f1c2";
}
.fa-file-excel-o:before {
  content: "\f1c3";
}
.fa-file-powerpoint-o:before {
  content: "\f1c4";
}
.fa-file-photo-o:before,
.fa-file-picture-o:before,
.fa-file-image-o:before {
  content: "\f1c5";
}
.fa-file-zip-o:before,
.fa-file-archive-o:before {
  content: "\f1c6";
}
.fa-file-sound-o:before,
.fa-file-audio-o:before {
  content: "\f1c7";
}
.fa-file-movie-o:before,
.fa-file-video-o:before {
  content: "\f1c8";
}
.fa-file-code-o:before {
  content: "\f1c9";
}
.fa-vine:before {
  content: "\f1ca";
}
.fa-codepen:before {
  content: "\f1cb";
}
.fa-jsfiddle:before {
  content: "\f1cc";
}
.fa-life-bouy:before,
.fa-life-buoy:before,
.fa-life-saver:before,
.fa-support:before,
.fa-life-ring:before {
  content: "\f1cd";
}
.fa-circle-o-notch:before {
  content: "\f1ce";
}
.fa-ra:before,
.fa-resistance:before,
.fa-rebel:before {
  content: "\f1d0";
}
.fa-ge:before,
.fa-empire:before {
  content: "\f1d1";
}
.fa-git-square:before {
  content: "\f1d2";
}
.fa-git:before {
  content: "\f1d3";
}
.fa-y-combinator-square:before,
.fa-yc-square:before,
.fa-hacker-news:before {
  content: "\f1d4";
}
.fa-tencent-weibo:before {
  content: "\f1d5";
}
.fa-qq:before {
  content: "\f1d6";
}
.fa-wechat:before,
.fa-weixin:before {
  content: "\f1d7";
}
.fa-send:before,
.fa-paper-plane:before {
  content: "\f1d8";
}
.fa-send-o:before,
.fa-paper-plane-o:before {
  content: "\f1d9";
}
.fa-history:before {
  content: "\f1da";
}
.fa-circle-thin:before {
  content: "\f1db";
}
.fa-header:before {
  content: "\f1dc";
}
.fa-paragraph:before {
  content: "\f1dd";
}
.fa-sliders:before {
  content: "\f1de";
}
.fa-share-alt:before {
  content: "\f1e0";
}
.fa-share-alt-square:before {
  content: "\f1e1";
}
.fa-bomb:before {
  content: "\f1e2";
}
.fa-soccer-ball-o:before,
.fa-futbol-o:before {
  content: "\f1e3";
}
.fa-tty:before {
  content: "\f1e4";
}
.fa-binoculars:before {
  content: "\f1e5";
}
.fa-plug:before {
  content: "\f1e6";
}
.fa-slideshare:before {
  content: "\f1e7";
}
.fa-twitch:before {
  content: "\f1e8";
}
.fa-yelp:before {
  content: "\f1e9";
}
.fa-newspaper-o:before {
  content: "\f1ea";
}
.fa-wifi:before {
  content: "\f1eb";
}
.fa-calculator:before {
  content: "\f1ec";
}
.fa-paypal:before {
  content: "\f1ed";
}
.fa-google-wallet:before {
  content: "\f1ee";
}
.fa-cc-visa:before {
  content: "\f1f0";
}
.fa-cc-mastercard:before {
  content: "\f1f1";
}
.fa-cc-discover:before {
  content: "\f1f2";
}
.fa-cc-amex:before {
  content: "\f1f3";
}
.fa-cc-paypal:before {
  content: "\f1f4";
}
.fa-cc-stripe:before {
  content: "\f1f5";
}
.fa-bell-slash:before {
  content: "\f1f6";
}
.fa-bell-slash-o:before {
  content: "\f1f7";
}
.fa-trash:before {
  content: "\f1f8";
}
.fa-copyright:before {
  content: "\f1f9";
}
.fa-at:before {
  content: "\f1fa";
}
.fa-eyedropper:before {
  content: "\f1fb";
}
.fa-paint-brush:before {
  content: "\f1fc";
}
.fa-birthday-cake:before {
  content: "\f1fd";
}
.fa-area-chart:before {
  content: "\f1fe";
}
.fa-pie-chart:before {
  content: "\f200";
}
.fa-line-chart:before {
  content: "\f201";
}
.fa-lastfm:before {
  content: "\f202";
}
.fa-lastfm-square:before {
  content: "\f203";
}
.fa-toggle-off:before {
  content: "\f204";
}
.fa-toggle-on:before {
  content: "\f205";
}
.fa-bicycle:before {
  content: "\f206";
}
.fa-bus:before {
  content: "\f207";
}
.fa-ioxhost:before {
  content: "\f208";
}
.fa-angellist:before {
  content: "\f209";
}
.fa-cc:before {
  content: "\f20a";
}
.fa-shekel:before,
.fa-sheqel:before,
.fa-ils:before {
  content: "\f20b";
}
.fa-meanpath:before {
  content: "\f20c";
}
.fa-buysellads:before {
  content: "\f20d";
}
.fa-connectdevelop:before {
  content: "\f20e";
}
.fa-dashcube:before {
  content: "\f210";
}
.fa-forumbee:before {
  content: "\f211";
}
.fa-leanpub:before {
  content: "\f212";
}
.fa-sellsy:before {
  content: "\f213";
}
.fa-shirtsinbulk:before {
  content: "\f214";
}
.fa-simplybuilt:before {
  content: "\f215";
}
.fa-skyatlas:before {
  content: "\f216";
}
.fa-cart-plus:before {
  content: "\f217";
}
.fa-cart-arrow-down:before {
  content: "\f218";
}
.fa-diamond:before {
  content: "\f219";
}
.fa-ship:before {
  content: "\f21a";
}
.fa-user-secret:before {
  content: "\f21b";
}
.fa-motorcycle:before {
  content: "\f21c";
}
.fa-street-view:before {
  content: "\f21d";
}
.fa-heartbeat:before {
  content: "\f21e";
}
.fa-venus:before {
  content: "\f221";
}
.fa-mars:before {
  content: "\f222";
}
.fa-mercury:before {
  content: "\f223";
}
.fa-intersex:before,
.fa-transgender:before {
  content: "\f224";
}
.fa-transgender-alt:before {
  content: "\f225";
}
.fa-venus-double:before {
  content: "\f226";
}
.fa-mars-double:before {
  content: "\f227";
}
.fa-venus-mars:before {
  content: "\f228";
}
.fa-mars-stroke:before {
  content: "\f229";
}
.fa-mars-stroke-v:before {
  content: "\f22a";
}
.fa-mars-stroke-h:before {
  content: "\f22b";
}
.fa-neuter:before {
  content: "\f22c";
}
.fa-genderless:before {
  content: "\f22d";
}
.fa-facebook-official:before {
  content: "\f230";
}
.fa-pinterest-p:before {
  content: "\f231";
}
.fa-whatsapp:before {
  content: "\f232";
}
.fa-server:before {
  content: "\f233";
}
.fa-user-plus:before {
  content: "\f234";
}
.fa-user-times:before {
  content: "\f235";
}
.fa-hotel:before,
.fa-bed:before {
  content: "\f236";
}
.fa-viacoin:before {
  content: "\f237";
}
.fa-train:before {
  content: "\f238";
}
.fa-subway:before {
  content: "\f239";
}
.fa-medium:before {
  content: "\f23a";
}
.fa-yc:before,
.fa-y-combinator:before {
  content: "\f23b";
}
.fa-optin-monster:before {
  content: "\f23c";
}
.fa-opencart:before {
  content: "\f23d";
}
.fa-expeditedssl:before {
  content: "\f23e";
}
.fa-battery-4:before,
.fa-battery:before,
.fa-battery-full:before {
  content: "\f240";
}
.fa-battery-3:before,
.fa-battery-three-quarters:before {
  content: "\f241";
}
.fa-battery-2:before,
.fa-battery-half:before {
  content: "\f242";
}
.fa-battery-1:before,
.fa-battery-quarter:before {
  content: "\f243";
}
.fa-battery-0:before,
.fa-battery-empty:before {
  content: "\f244";
}
.fa-mouse-pointer:before {
  content: "\f245";
}
.fa-i-cursor:before {
  content: "\f246";
}
.fa-object-group:before {
  content: "\f247";
}
.fa-object-ungroup:before {
  content: "\f248";
}
.fa-sticky-note:before {
  content: "\f249";
}
.fa-sticky-note-o:before {
  content: "\f24a";
}
.fa-cc-jcb:before {
  content: "\f24b";
}
.fa-cc-diners-club:before {
  content: "\f24c";
}
.fa-clone:before {
  content: "\f24d";
}
.fa-balance-scale:before {
  content: "\f24e";
}
.fa-hourglass-o:before {
  content: "\f250";
}
.fa-hourglass-1:before,
.fa-hourglass-start:before {
  content: "\f251";
}
.fa-hourglass-2:before,
.fa-hourglass-half:before {
  content: "\f252";
}
.fa-hourglass-3:before,
.fa-hourglass-end:before {
  content: "\f253";
}
.fa-hourglass:before {
  content: "\f254";
}
.fa-hand-grab-o:before,
.fa-hand-rock-o:before {
  content: "\f255";
}
.fa-hand-stop-o:before,
.fa-hand-paper-o:before {
  content: "\f256";
}
.fa-hand-scissors-o:before {
  content: "\f257";
}
.fa-hand-lizard-o:before {
  content: "\f258";
}
.fa-hand-spock-o:before {
  content: "\f259";
}
.fa-hand-pointer-o:before {
  content: "\f25a";
}
.fa-hand-peace-o:before {
  content: "\f25b";
}
.fa-trademark:before {
  content: "\f25c";
}
.fa-registered:before {
  content: "\f25d";
}
.fa-creative-commons:before {
  content: "\f25e";
}
.fa-gg:before {
  content: "\f260";
}
.fa-gg-circle:before {
  content: "\f261";
}
.fa-tripadvisor:before {
  content: "\f262";
}
.fa-odnoklassniki:before {
  content: "\f263";
}
.fa-odnoklassniki-square:before {
  content: "\f264";
}
.fa-get-pocket:before {
  content: "\f265";
}
.fa-wikipedia-w:before {
  content: "\f266";
}
.fa-safari:before {
  content: "\f267";
}
.fa-chrome:before {
  content: "\f268";
}
.fa-firefox:before {
  content: "\f269";
}
.fa-opera:before {
  content: "\f26a";
}
.fa-internet-explorer:before {
  content: "\f26b";
}
.fa-tv:before,
.fa-television:before {
  content: "\f26c";
}
.fa-contao:before {
  content: "\f26d";
}
.fa-500px:before {
  content: "\f26e";
}
.fa-amazon:before {
  content: "\f270";
}
.fa-calendar-plus-o:before {
  content: "\f271";
}
.fa-calendar-minus-o:before {
  content: "\f272";
}
.fa-calendar-times-o:before {
  content: "\f273";
}
.fa-calendar-check-o:before {
  content: "\f274";
}
.fa-industry:before {
  content: "\f275";
}
.fa-map-pin:before {
  content: "\f276";
}
.fa-map-signs:before {
  content: "\f277";
}
.fa-map-o:before {
  content: "\f278";
}
.fa-map:before {
  content: "\f279";
}
.fa-commenting:before {
  content: "\f27a";
}
.fa-commenting-o:before {
  content: "\f27b";
}
.fa-houzz:before {
  content: "\f27c";
}
.fa-vimeo:before {
  content: "\f27d";
}
.fa-black-tie:before {
  content: "\f27e";
}
.fa-fonticons:before {
  content: "\f280";
}
.fa-reddit-alien:before {
  content: "\f281";
}
.fa-edge:before {
  content: "\f282";
}
.fa-credit-card-alt:before {
  content: "\f283";
}
.fa-codiepie:before {
  content: "\f284";
}
.fa-modx:before {
  content: "\f285";
}
.fa-fort-awesome:before {
  content: "\f286";
}
.fa-usb:before {
  content: "\f287";
}
.fa-product-hunt:before {
  content: "\f288";
}
.fa-mixcloud:before {
  content: "\f289";
}
.fa-scribd:before {
  content: "\f28a";
}
.fa-pause-circle:before {
  content: "\f28b";
}
.fa-pause-circle-o:before {
  content: "\f28c";
}
.fa-stop-circle:before {
  content: "\f28d";
}
.fa-stop-circle-o:before {
  content: "\f28e";
}
.fa-shopping-bag:before {
  content: "\f290";
}
.fa-shopping-basket:before {
  content: "\f291";
}
.fa-hashtag:before {
  content: "\f292";
}
.fa-bluetooth:before {
  content: "\f293";
}
.fa-bluetooth-b:before {
  content: "\f294";
}
.fa-percent:before {
  content: "\f295";
}
.fa-gitlab:before {
  content: "\f296";
}
.fa-wpbeginner:before {
  content: "\f297";
}
.fa-wpforms:before {
  content: "\f298";
}
.fa-envira:before {
  content: "\f299";
}
.fa-universal-access:before {
  content: "\f29a";
}
.fa-wheelchair-alt:before {
  content: "\f29b";
}
.fa-question-circle-o:before {
  content: "\f29c";
}
.fa-blind:before {
  content: "\f29d";
}
.fa-audio-description:before {
  content: "\f29e";
}
.fa-volume-control-phone:before {
  content: "\f2a0";
}
.fa-braille:before {
  content: "\f2a1";
}
.fa-assistive-listening-systems:before {
  content: "\f2a2";
}
.fa-asl-interpreting:before,
.fa-american-sign-language-interpreting:before {
  content: "\f2a3";
}
.fa-deafness:before,
.fa-hard-of-hearing:before,
.fa-deaf:before {
  content: "\f2a4";
}
.fa-glide:before {
  content: "\f2a5";
}
.fa-glide-g:before {
  content: "\f2a6";
}
.fa-signing:before,
.fa-sign-language:before {
  content: "\f2a7";
}
.fa-low-vision:before {
  content: "\f2a8";
}
.fa-viadeo:before {
  content: "\f2a9";
}
.fa-viadeo-square:before {
  content: "\f2aa";
}
.fa-snapchat:before {
  content: "\f2ab";
}
.fa-snapchat-ghost:before {
  content: "\f2ac";
}
.fa-snapchat-square:before {
  content: "\f2ad";
}
.fa-pied-piper:before {
  content: "\f2ae";
}
.fa-first-order:before {
  content: "\f2b0";
}
.fa-yoast:before {
  content: "\f2b1";
}
.fa-themeisle:before {
  content: "\f2b2";
}
.fa-google-plus-circle:before,
.fa-google-plus-official:before {
  content: "\f2b3";
}
.fa-fa:before,
.fa-font-awesome:before {
  content: "\f2b4";
}
.fa-handshake-o:before {
  content: "\f2b5";
}
.fa-envelope-open:before {
  content: "\f2b6";
}
.fa-envelope-open-o:before {
  content: "\f2b7";
}
.fa-linode:before {
  content: "\f2b8";
}
.fa-address-book:before {
  content: "\f2b9";
}
.fa-address-book-o:before {
  content: "\f2ba";
}
.fa-vcard:before,
.fa-address-card:before {
  content: "\f2bb";
}
.fa-vcard-o:before,
.fa-address-card-o:before {
  content: "\f2bc";
}
.fa-user-circle:before {
  content: "\f2bd";
}
.fa-user-circle-o:before {
  content: "\f2be";
}
.fa-user-o:before {
  content: "\f2c0";
}
.fa-id-badge:before {
  content: "\f2c1";
}
.fa-drivers-license:before,
.fa-id-card:before {
  content: "\f2c2";
}
.fa-drivers-license-o:before,
.fa-id-card-o:before {
  content: "\f2c3";
}
.fa-quora:before {
  content: "\f2c4";
}
.fa-free-code-camp:before {
  content: "\f2c5";
}
.fa-telegram:before {
  content: "\f2c6";
}
.fa-thermometer-4:before,
.fa-thermometer:before,
.fa-thermometer-full:before {
  content: "\f2c7";
}
.fa-thermometer-3:before,
.fa-thermometer-three-quarters:before {
  content: "\f2c8";
}
.fa-thermometer-2:before,
.fa-thermometer-half:before {
  content: "\f2c9";
}
.fa-thermometer-1:before,
.fa-thermometer-quarter:before {
  content: "\f2ca";
}
.fa-thermometer-0:before,
.fa-thermometer-empty:before {
  content: "\f2cb";
}
.fa-shower:before {
  content: "\f2cc";
}
.fa-bathtub:before,
.fa-s15:before,
.fa-bath:before {
  content: "\f2cd";
}
.fa-podcast:before {
  content: "\f2ce";
}
.fa-window-maximize:before {
  content: "\f2d0";
}
.fa-window-minimize:before {
  content: "\f2d1";
}
.fa-window-restore:before {
  content: "\f2d2";
}
.fa-times-rectangle:before,
.fa-window-close:before {
  content: "\f2d3";
}
.fa-times-rectangle-o:before,
.fa-window-close-o:before {
  content: "\f2d4";
}
.fa-bandcamp:before {
  content: "\f2d5";
}
.fa-grav:before {
  content: "\f2d6";
}
.fa-etsy:before {
  content: "\f2d7";
}
.fa-imdb:before {
  content: "\f2d8";
}
.fa-ravelry:before {
  content: "\f2d9";
}
.fa-eercast:before {
  content: "\f2da";
}
.fa-microchip:before {
  content: "\f2db";
}
.fa-snowflake-o:before {
  content: "\f2dc";
}
.fa-superpowers:before {
  content: "\f2dd";
}
.fa-wpexplorer:before {
  content: "\f2de";
}
.fa-meetup:before {
  content: "\f2e0";
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
/*!
*
* IPython base
*
*/
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
code {
  color: #000;
}
pre {
  font-size: inherit;
  line-height: inherit;
}
label {
  font-weight: normal;
}
/* Make the page background atleast 100% the height of the view port */
/* Make the page itself atleast 70% the height of the view port */
.border-box-sizing {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.corner-all {
  border-radius: 2px;
}
.no-padding {
  padding: 0px;
}
/* Flexible box model classes */
/* Taken from Alex Russell http://infrequently.org/2009/08/css-3-progress/ */
/* This file is a compatability layer.  It allows the usage of flexible box 
model layouts accross multiple browsers, including older browsers.  The newest,
universal implementation of the flexible box model is used when available (see
`Modern browsers` comments below).  Browsers that are known to implement this 
new spec completely include:

    Firefox 28.0+
    Chrome 29.0+
    Internet Explorer 11+ 
    Opera 17.0+

Browsers not listed, including Safari, are supported via the styling under the
`Old browsers` comments below.
*/
.hbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
.hbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.vbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
.vbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.hbox.reverse,
.vbox.reverse,
.reverse {
  /* Old browsers */
  -webkit-box-direction: reverse;
  -moz-box-direction: reverse;
  box-direction: reverse;
  /* Modern browsers */
  flex-direction: row-reverse;
}
.hbox.box-flex0,
.vbox.box-flex0,
.box-flex0 {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
  width: auto;
}
.hbox.box-flex1,
.vbox.box-flex1,
.box-flex1 {
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex,
.vbox.box-flex,
.box-flex {
  /* Old browsers */
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex2,
.vbox.box-flex2,
.box-flex2 {
  /* Old browsers */
  -webkit-box-flex: 2;
  -moz-box-flex: 2;
  box-flex: 2;
  /* Modern browsers */
  flex: 2;
}
.box-group1 {
  /*  Deprecated */
  -webkit-box-flex-group: 1;
  -moz-box-flex-group: 1;
  box-flex-group: 1;
}
.box-group2 {
  /* Deprecated */
  -webkit-box-flex-group: 2;
  -moz-box-flex-group: 2;
  box-flex-group: 2;
}
.hbox.start,
.vbox.start,
.start {
  /* Old browsers */
  -webkit-box-pack: start;
  -moz-box-pack: start;
  box-pack: start;
  /* Modern browsers */
  justify-content: flex-start;
}
.hbox.end,
.vbox.end,
.end {
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
}
.hbox.center,
.vbox.center,
.center {
  /* Old browsers */
  -webkit-box-pack: center;
  -moz-box-pack: center;
  box-pack: center;
  /* Modern browsers */
  justify-content: center;
}
.hbox.baseline,
.vbox.baseline,
.baseline {
  /* Old browsers */
  -webkit-box-pack: baseline;
  -moz-box-pack: baseline;
  box-pack: baseline;
  /* Modern browsers */
  justify-content: baseline;
}
.hbox.stretch,
.vbox.stretch,
.stretch {
  /* Old browsers */
  -webkit-box-pack: stretch;
  -moz-box-pack: stretch;
  box-pack: stretch;
  /* Modern browsers */
  justify-content: stretch;
}
.hbox.align-start,
.vbox.align-start,
.align-start {
  /* Old browsers */
  -webkit-box-align: start;
  -moz-box-align: start;
  box-align: start;
  /* Modern browsers */
  align-items: flex-start;
}
.hbox.align-end,
.vbox.align-end,
.align-end {
  /* Old browsers */
  -webkit-box-align: end;
  -moz-box-align: end;
  box-align: end;
  /* Modern browsers */
  align-items: flex-end;
}
.hbox.align-center,
.vbox.align-center,
.align-center {
  /* Old browsers */
  -webkit-box-align: center;
  -moz-box-align: center;
  box-align: center;
  /* Modern browsers */
  align-items: center;
}
.hbox.align-baseline,
.vbox.align-baseline,
.align-baseline {
  /* Old browsers */
  -webkit-box-align: baseline;
  -moz-box-align: baseline;
  box-align: baseline;
  /* Modern browsers */
  align-items: baseline;
}
.hbox.align-stretch,
.vbox.align-stretch,
.align-stretch {
  /* Old browsers */
  -webkit-box-align: stretch;
  -moz-box-align: stretch;
  box-align: stretch;
  /* Modern browsers */
  align-items: stretch;
}
div.error {
  margin: 2em;
  text-align: center;
}
div.error > h1 {
  font-size: 500%;
  line-height: normal;
}
div.error > p {
  font-size: 200%;
  line-height: normal;
}
div.traceback-wrapper {
  text-align: left;
  max-width: 800px;
  margin: auto;
}
div.traceback-wrapper pre.traceback {
  max-height: 600px;
  overflow: auto;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
body {
  background-color: #fff;
  /* This makes sure that the body covers the entire window and needs to
       be in a different element than the display: box in wrapper below */
  position: absolute;
  left: 0px;
  right: 0px;
  top: 0px;
  bottom: 0px;
  overflow: visible;
}
body > #header {
  /* Initially hidden to prevent FLOUC */
  display: none;
  background-color: #fff;
  /* Display over codemirror */
  position: relative;
  z-index: 100;
}
body > #header #header-container {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  padding: 5px;
  padding-bottom: 5px;
  padding-top: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
body > #header .header-bar {
  width: 100%;
  height: 1px;
  background: #e7e7e7;
  margin-bottom: -1px;
}
@media print {
  body > #header {
    display: none !important;
  }
}
#header-spacer {
  width: 100%;
  visibility: hidden;
}
@media print {
  #header-spacer {
    display: none;
  }
}
#ipython_notebook {
  padding-left: 0px;
  padding-top: 1px;
  padding-bottom: 1px;
}
[dir="rtl"] #ipython_notebook {
  margin-right: 10px;
  margin-left: 0;
}
[dir="rtl"] #ipython_notebook.pull-left {
  float: right !important;
  float: right;
}
.flex-spacer {
  flex: 1;
}
#noscript {
  width: auto;
  padding-top: 16px;
  padding-bottom: 16px;
  text-align: center;
  font-size: 22px;
  color: red;
  font-weight: bold;
}
#ipython_notebook img {
  height: 28px;
}
#site {
  width: 100%;
  display: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  overflow: auto;
}
@media print {
  #site {
    height: auto !important;
  }
}
/* Smaller buttons */
.ui-button .ui-button-text {
  padding: 0.2em 0.8em;
  font-size: 77%;
}
input.ui-button {
  padding: 0.3em 0.9em;
}
span#kernel_logo_widget {
  margin: 0 10px;
}
span#login_widget {
  float: right;
}
[dir="rtl"] span#login_widget {
  float: left;
}
span#login_widget > .button,
#logout {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button:focus,
#logout:focus,
span#login_widget > .button.focus,
#logout.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
span#login_widget > .button:hover,
#logout:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active:hover,
#logout:active:hover,
span#login_widget > .button.active:hover,
#logout.active:hover,
.open > .dropdown-togglespan#login_widget > .button:hover,
.open > .dropdown-toggle#logout:hover,
span#login_widget > .button:active:focus,
#logout:active:focus,
span#login_widget > .button.active:focus,
#logout.active:focus,
.open > .dropdown-togglespan#login_widget > .button:focus,
.open > .dropdown-toggle#logout:focus,
span#login_widget > .button:active.focus,
#logout:active.focus,
span#login_widget > .button.active.focus,
#logout.active.focus,
.open > .dropdown-togglespan#login_widget > .button.focus,
.open > .dropdown-toggle#logout.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  background-image: none;
}
span#login_widget > .button.disabled:hover,
#logout.disabled:hover,
span#login_widget > .button[disabled]:hover,
#logout[disabled]:hover,
fieldset[disabled] span#login_widget > .button:hover,
fieldset[disabled] #logout:hover,
span#login_widget > .button.disabled:focus,
#logout.disabled:focus,
span#login_widget > .button[disabled]:focus,
#logout[disabled]:focus,
fieldset[disabled] span#login_widget > .button:focus,
fieldset[disabled] #logout:focus,
span#login_widget > .button.disabled.focus,
#logout.disabled.focus,
span#login_widget > .button[disabled].focus,
#logout[disabled].focus,
fieldset[disabled] span#login_widget > .button.focus,
fieldset[disabled] #logout.focus {
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button .badge,
#logout .badge {
  color: #fff;
  background-color: #333;
}
.nav-header {
  text-transform: none;
}
#header > span {
  margin-top: 10px;
}
.modal_stretch .modal-dialog {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  min-height: 80vh;
}
.modal_stretch .modal-dialog .modal-body {
  max-height: calc(100vh - 200px);
  overflow: auto;
  flex: 1;
}
.modal-header {
  cursor: move;
}
@media (min-width: 768px) {
  .modal .modal-dialog {
    width: 700px;
  }
}
@media (min-width: 768px) {
  select.form-control {
    margin-left: 12px;
    margin-right: 12px;
  }
}
/*!
*
* IPython auth
*
*/
.center-nav {
  display: inline-block;
  margin-bottom: -4px;
}
[dir="rtl"] .center-nav form.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] .center-nav .navbar-text {
  float: right;
}
[dir="rtl"] .navbar-inner {
  text-align: right;
}
[dir="rtl"] div.text-left {
  text-align: right;
}
/*!
*
* IPython tree view
*
*/
/* We need an invisible input field on top of the sentense*/
/* "Drag file onto the list ..." */
.alternate_upload {
  background-color: none;
  display: inline;
}
.alternate_upload.form {
  padding: 0;
  margin: 0;
}
.alternate_upload input.fileinput {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  overflow: hidden;
  cursor: pointer;
  opacity: 0;
  z-index: 2;
}
.alternate_upload .btn-xs > input.fileinput {
  margin: -1px -5px;
}
.alternate_upload .btn-upload {
  position: relative;
  height: 22px;
}
::-webkit-file-upload-button {
  cursor: pointer;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
ul#tabs {
  margin-bottom: 4px;
}
ul#tabs a {
  padding-top: 6px;
  padding-bottom: 4px;
}
[dir="rtl"] ul#tabs.nav-tabs > li {
  float: right;
}
[dir="rtl"] ul#tabs.nav.nav-tabs {
  padding-right: 0;
}
ul.breadcrumb a:focus,
ul.breadcrumb a:hover {
  text-decoration: none;
}
ul.breadcrumb i.icon-home {
  font-size: 16px;
  margin-right: 4px;
}
ul.breadcrumb span {
  color: #5e5e5e;
}
.list_toolbar {
  padding: 4px 0 4px 0;
  vertical-align: middle;
}
.list_toolbar .tree-buttons {
  padding-top: 1px;
}
[dir="rtl"] .list_toolbar .tree-buttons .pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .list_toolbar .col-sm-4,
[dir="rtl"] .list_toolbar .col-sm-8 {
  float: right;
}
.dynamic-buttons {
  padding-top: 3px;
  display: inline-block;
}
.list_toolbar [class*="span"] {
  min-height: 24px;
}
.list_header {
  font-weight: bold;
  background-color: #EEE;
}
.list_placeholder {
  font-weight: bold;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
}
.list_container {
  margin-top: 4px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 2px;
}
.list_container > div {
  border-bottom: 1px solid #ddd;
}
.list_container > div:hover .list-item {
  background-color: red;
}
.list_container > div:last-child {
  border: none;
}
.list_item:hover .list_item {
  background-color: #ddd;
}
.list_item a {
  text-decoration: none;
}
.list_item:hover {
  background-color: #fafafa;
}
.list_header > div,
.list_item > div {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
.list_header > div input,
.list_item > div input {
  margin-right: 7px;
  margin-left: 14px;
  vertical-align: text-bottom;
  line-height: 22px;
  position: relative;
  top: -1px;
}
.list_header > div .item_link,
.list_item > div .item_link {
  margin-left: -1px;
  vertical-align: baseline;
  line-height: 22px;
}
[dir="rtl"] .list_item > div input {
  margin-right: 0;
}
.new-file input[type=checkbox] {
  visibility: hidden;
}
.item_name {
  line-height: 22px;
  height: 24px;
}
.item_icon {
  font-size: 14px;
  color: #5e5e5e;
  margin-right: 7px;
  margin-left: 7px;
  line-height: 22px;
  vertical-align: baseline;
}
.item_modified {
  margin-right: 7px;
  margin-left: 7px;
}
[dir="rtl"] .item_modified.pull-right {
  float: left !important;
  float: left;
}
.item_buttons {
  line-height: 1em;
  margin-left: -5px;
}
.item_buttons .btn,
.item_buttons .btn-group,
.item_buttons .input-group {
  float: left;
}
.item_buttons > .btn,
.item_buttons > .btn-group,
.item_buttons > .input-group {
  margin-left: 5px;
}
.item_buttons .btn {
  min-width: 13ex;
}
.item_buttons .running-indicator {
  padding-top: 4px;
  color: #5cb85c;
}
.item_buttons .kernel-name {
  padding-top: 4px;
  color: #5bc0de;
  margin-right: 7px;
  float: left;
}
[dir="rtl"] .item_buttons.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .item_buttons .kernel-name {
  margin-left: 7px;
  float: right;
}
.toolbar_info {
  height: 24px;
  line-height: 24px;
}
.list_item input:not([type=checkbox]) {
  padding-top: 3px;
  padding-bottom: 3px;
  height: 22px;
  line-height: 14px;
  margin: 0px;
}
.highlight_text {
  color: blue;
}
#project_name {
  display: inline-block;
  padding-left: 7px;
  margin-left: -2px;
}
#project_name > .breadcrumb {
  padding: 0px;
  margin-bottom: 0px;
  background-color: transparent;
  font-weight: bold;
}
.sort_button {
  display: inline-block;
  padding-left: 7px;
}
[dir="rtl"] .sort_button.pull-right {
  float: left !important;
  float: left;
}
#tree-selector {
  padding-right: 0px;
}
#button-select-all {
  min-width: 50px;
}
[dir="rtl"] #button-select-all.btn {
  float: right ;
}
#select-all {
  margin-left: 7px;
  margin-right: 2px;
  margin-top: 2px;
  height: 16px;
}
[dir="rtl"] #select-all.pull-left {
  float: right !important;
  float: right;
}
.menu_icon {
  margin-right: 2px;
}
.tab-content .row {
  margin-left: 0px;
  margin-right: 0px;
}
.folder_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f114";
}
.folder_icon:before.fa-pull-left {
  margin-right: .3em;
}
.folder_icon:before.fa-pull-right {
  margin-left: .3em;
}
.folder_icon:before.pull-left {
  margin-right: .3em;
}
.folder_icon:before.pull-right {
  margin-left: .3em;
}
.notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
}
.notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.notebook_icon:before.pull-left {
  margin-right: .3em;
}
.notebook_icon:before.pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
  color: #5cb85c;
}
.running_notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before.pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.pull-right {
  margin-left: .3em;
}
.file_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f016";
  position: relative;
  top: -2px;
}
.file_icon:before.fa-pull-left {
  margin-right: .3em;
}
.file_icon:before.fa-pull-right {
  margin-left: .3em;
}
.file_icon:before.pull-left {
  margin-right: .3em;
}
.file_icon:before.pull-right {
  margin-left: .3em;
}
#notebook_toolbar .pull-right {
  padding-top: 0px;
  margin-right: -1px;
}
ul#new-menu {
  left: auto;
  right: 0;
}
#new-menu .dropdown-header {
  font-size: 10px;
  border-bottom: 1px solid #e5e5e5;
  padding: 0 0 3px;
  margin: -3px 20px 0;
}
.kernel-menu-icon {
  padding-right: 12px;
  width: 24px;
  content: "\f096";
}
.kernel-menu-icon:before {
  content: "\f096";
}
.kernel-menu-icon-current:before {
  content: "\f00c";
}
#tab_content {
  padding-top: 20px;
}
#running .panel-group .panel {
  margin-top: 3px;
  margin-bottom: 1em;
}
#running .panel-group .panel .panel-heading {
  background-color: #EEE;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
#running .panel-group .panel .panel-heading a:focus,
#running .panel-group .panel .panel-heading a:hover {
  text-decoration: none;
}
#running .panel-group .panel .panel-body {
  padding: 0px;
}
#running .panel-group .panel .panel-body .list_container {
  margin-top: 0px;
  margin-bottom: 0px;
  border: 0px;
  border-radius: 0px;
}
#running .panel-group .panel .panel-body .list_container .list_item {
  border-bottom: 1px solid #ddd;
}
#running .panel-group .panel .panel-body .list_container .list_item:last-child {
  border-bottom: 0px;
}
.delete-button {
  display: none;
}
.duplicate-button {
  display: none;
}
.rename-button {
  display: none;
}
.move-button {
  display: none;
}
.download-button {
  display: none;
}
.shutdown-button {
  display: none;
}
.dynamic-instructions {
  display: inline-block;
  padding-top: 4px;
}
/*!
*
* IPython text editor webapp
*
*/
.selected-keymap i.fa {
  padding: 0px 5px;
}
.selected-keymap i.fa:before {
  content: "\f00c";
}
#mode-menu {
  overflow: auto;
  max-height: 20em;
}
.edit_app #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.edit_app #menubar .navbar {
  /* Use a negative 1 bottom margin, so the border overlaps the border of the
    header */
  margin-bottom: -1px;
}
.dirty-indicator {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator.pull-left {
  margin-right: .3em;
}
.dirty-indicator.pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-dirty.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty.pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-clean.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f00c";
}
.dirty-indicator-clean:before.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.pull-right {
  margin-left: .3em;
}
#filename {
  font-size: 16pt;
  display: table;
  padding: 0px 5px;
}
#current-mode {
  padding-left: 5px;
  padding-right: 5px;
}
#texteditor-backdrop {
  padding-top: 20px;
  padding-bottom: 20px;
}
@media not print {
  #texteditor-backdrop {
    background-color: #EEE;
  }
}
@media print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container {
    padding: 0px;
    background-color: #fff;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
.CodeMirror-dialog {
  background-color: #fff;
}
/*!
*
* IPython notebook
*
*/
/* CSS font colors for translated ANSI escape sequences */
/* The color values are a mix of
   http://www.xcolors.net/dl/baskerville-ivorylight and
   http://www.xcolors.net/dl/euphrasia */
.ansi-black-fg {
  color: #3E424D;
}
.ansi-black-bg {
  background-color: #3E424D;
}
.ansi-black-intense-fg {
  color: #282C36;
}
.ansi-black-intense-bg {
  background-color: #282C36;
}
.ansi-red-fg {
  color: #E75C58;
}
.ansi-red-bg {
  background-color: #E75C58;
}
.ansi-red-intense-fg {
  color: #B22B31;
}
.ansi-red-intense-bg {
  background-color: #B22B31;
}
.ansi-green-fg {
  color: #00A250;
}
.ansi-green-bg {
  background-color: #00A250;
}
.ansi-green-intense-fg {
  color: #007427;
}
.ansi-green-intense-bg {
  background-color: #007427;
}
.ansi-yellow-fg {
  color: #DDB62B;
}
.ansi-yellow-bg {
  background-color: #DDB62B;
}
.ansi-yellow-intense-fg {
  color: #B27D12;
}
.ansi-yellow-intense-bg {
  background-color: #B27D12;
}
.ansi-blue-fg {
  color: #208FFB;
}
.ansi-blue-bg {
  background-color: #208FFB;
}
.ansi-blue-intense-fg {
  color: #0065CA;
}
.ansi-blue-intense-bg {
  background-color: #0065CA;
}
.ansi-magenta-fg {
  color: #D160C4;
}
.ansi-magenta-bg {
  background-color: #D160C4;
}
.ansi-magenta-intense-fg {
  color: #A03196;
}
.ansi-magenta-intense-bg {
  background-color: #A03196;
}
.ansi-cyan-fg {
  color: #60C6C8;
}
.ansi-cyan-bg {
  background-color: #60C6C8;
}
.ansi-cyan-intense-fg {
  color: #258F8F;
}
.ansi-cyan-intense-bg {
  background-color: #258F8F;
}
.ansi-white-fg {
  color: #C5C1B4;
}
.ansi-white-bg {
  background-color: #C5C1B4;
}
.ansi-white-intense-fg {
  color: #A1A6B2;
}
.ansi-white-intense-bg {
  background-color: #A1A6B2;
}
.ansi-default-inverse-fg {
  color: #FFFFFF;
}
.ansi-default-inverse-bg {
  background-color: #000000;
}
.ansi-bold {
  font-weight: bold;
}
.ansi-underline {
  text-decoration: underline;
}
/* The following styles are deprecated an will be removed in a future version */
.ansibold {
  font-weight: bold;
}
.ansi-inverse {
  outline: 0.5px dotted;
}
/* use dark versions for foreground, to improve visibility */
.ansiblack {
  color: black;
}
.ansired {
  color: darkred;
}
.ansigreen {
  color: darkgreen;
}
.ansiyellow {
  color: #c4a000;
}
.ansiblue {
  color: darkblue;
}
.ansipurple {
  color: darkviolet;
}
.ansicyan {
  color: steelblue;
}
.ansigray {
  color: gray;
}
/* and light for background, for the same reason */
.ansibgblack {
  background-color: black;
}
.ansibgred {
  background-color: red;
}
.ansibggreen {
  background-color: green;
}
.ansibgyellow {
  background-color: yellow;
}
.ansibgblue {
  background-color: blue;
}
.ansibgpurple {
  background-color: magenta;
}
.ansibgcyan {
  background-color: cyan;
}
.ansibggray {
  background-color: gray;
}
div.cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  border-radius: 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  border-width: 1px;
  border-style: solid;
  border-color: transparent;
  width: 100%;
  padding: 5px;
  /* This acts as a spacer between cells, that is outside the border */
  margin: 0px;
  outline: none;
  position: relative;
  overflow: visible;
}
div.cell:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: transparent;
}
div.cell.jupyter-soft-selected {
  border-left-color: #E3F2FD;
  border-left-width: 1px;
  padding-left: 5px;
  border-right-color: #E3F2FD;
  border-right-width: 1px;
  background: #E3F2FD;
}
@media print {
  div.cell.jupyter-soft-selected {
    border-color: transparent;
  }
}
div.cell.selected,
div.cell.selected.jupyter-soft-selected {
  border-color: #ababab;
}
div.cell.selected:before,
div.cell.selected.jupyter-soft-selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #42A5F5;
}
@media print {
  div.cell.selected,
  div.cell.selected.jupyter-soft-selected {
    border-color: transparent;
  }
}
.edit_mode div.cell.selected {
  border-color: #66BB6A;
}
.edit_mode div.cell.selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #66BB6A;
}
@media print {
  .edit_mode div.cell.selected {
    border-color: transparent;
  }
}
.prompt {
  /* This needs to be wide enough for 3 digit prompt numbers: In[100]: */
  min-width: 14ex;
  /* This padding is tuned to match the padding on the CodeMirror editor. */
  padding: 0.4em;
  margin: 0px;
  font-family: monospace;
  text-align: right;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
  /* Don't highlight prompt number selection */
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  /* Use default cursor */
  cursor: default;
}
@media (max-width: 540px) {
  .prompt {
    text-align: left;
  }
}
div.inner_cell {
  min-width: 0;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_area {
  border: 1px solid #cfcfcf;
  border-radius: 2px;
  background: #f7f7f7;
  line-height: 1.21429em;
}
/* This is needed so that empty prompt areas can collapse to zero height when there
   is no content in the output_subarea and the prompt. The main purpose of this is
   to make sure that empty JavaScript output_subareas have no height. */
div.prompt:empty {
  padding-top: 0;
  padding-bottom: 0;
}
div.unrecognized_cell {
  padding: 5px 5px 5px 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.unrecognized_cell .inner_cell {
  border-radius: 2px;
  padding: 5px;
  font-weight: bold;
  color: red;
  border: 1px solid #cfcfcf;
  background: #eaeaea;
}
div.unrecognized_cell .inner_cell a {
  color: inherit;
  text-decoration: none;
}
div.unrecognized_cell .inner_cell a:hover {
  color: inherit;
  text-decoration: none;
}
@media (max-width: 540px) {
  div.unrecognized_cell > div.prompt {
    display: none;
  }
}
div.code_cell {
  /* avoid page breaking on code cells when printing */
}
@media print {
  div.code_cell {
    page-break-inside: avoid;
  }
}
/* any special styling for code cells that are currently running goes here */
div.input {
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.input {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_prompt {
  color: #303F9F;
  border-top: 1px solid transparent;
}
div.input_area > div.highlight {
  margin: 0.4em;
  border: none;
  padding: 0px;
  background-color: transparent;
}
div.input_area > div.highlight > pre {
  margin: 0px;
  border: none;
  padding: 0px;
  background-color: transparent;
}
/* The following gets added to the <head> if it is detected that the user has a
 * monospace font with inconsistent normal/bold/italic height.  See
 * notebookmain.js.  Such fonts will have keywords vertically offset with
 * respect to the rest of the text.  The user should select a better font.
 * See: https://github.com/ipython/ipython/issues/1503
 *
 * .CodeMirror span {
 *      vertical-align: bottom;
 * }
 */
.CodeMirror {
  line-height: 1.21429em;
  /* Changed from 1em to our global default */
  font-size: 14px;
  height: auto;
  /* Changed to auto to autogrow */
  background: none;
  /* Changed from white to allow our bg to show through */
}
.CodeMirror-scroll {
  /*  The CodeMirror docs are a bit fuzzy on if overflow-y should be hidden or visible.*/
  /*  We have found that if it is visible, vertical scrollbars appear with font size changes.*/
  overflow-y: hidden;
  overflow-x: auto;
}
.CodeMirror-lines {
  /* In CM2, this used to be 0.4em, but in CM3 it went to 4px. We need the em value because */
  /* we have set a different line-height and want this to scale with that. */
  /* Note that this should set vertical padding only, since CodeMirror assumes
       that horizontal padding will be set on CodeMirror pre */
  padding: 0.4em 0;
}
.CodeMirror-linenumber {
  padding: 0 8px 0 4px;
}
.CodeMirror-gutters {
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.CodeMirror pre {
  /* In CM3 this went to 4px from 0 in CM2. This sets horizontal padding only,
    use .CodeMirror-lines for vertical */
  padding: 0 0.4em;
  border: 0;
  border-radius: 0;
}
.CodeMirror-cursor {
  border-left: 1.4px solid black;
}
@media screen and (min-width: 2138px) and (max-width: 4319px) {
  .CodeMirror-cursor {
    border-left: 2px solid black;
  }
}
@media screen and (min-width: 4320px) {
  .CodeMirror-cursor {
    border-left: 4px solid black;
  }
}
/*

Original style from softwaremaniacs.org (c) Ivan Sagalaev <Maniac@SoftwareManiacs.Org>
Adapted from GitHub theme

*/
.highlight-base {
  color: #000;
}
.highlight-variable {
  color: #000;
}
.highlight-variable-2 {
  color: #1a1a1a;
}
.highlight-variable-3 {
  color: #333333;
}
.highlight-string {
  color: #BA2121;
}
.highlight-comment {
  color: #408080;
  font-style: italic;
}
.highlight-number {
  color: #080;
}
.highlight-atom {
  color: #88F;
}
.highlight-keyword {
  color: #008000;
  font-weight: bold;
}
.highlight-builtin {
  color: #008000;
}
.highlight-error {
  color: #f00;
}
.highlight-operator {
  color: #AA22FF;
  font-weight: bold;
}
.highlight-meta {
  color: #AA22FF;
}
/* previously not defined, copying from default codemirror */
.highlight-def {
  color: #00f;
}
.highlight-string-2 {
  color: #f50;
}
.highlight-qualifier {
  color: #555;
}
.highlight-bracket {
  color: #997;
}
.highlight-tag {
  color: #170;
}
.highlight-attribute {
  color: #00c;
}
.highlight-header {
  color: blue;
}
.highlight-quote {
  color: #090;
}
.highlight-link {
  color: #00c;
}
/* apply the same style to codemirror */
.cm-s-ipython span.cm-keyword {
  color: #008000;
  font-weight: bold;
}
.cm-s-ipython span.cm-atom {
  color: #88F;
}
.cm-s-ipython span.cm-number {
  color: #080;
}
.cm-s-ipython span.cm-def {
  color: #00f;
}
.cm-s-ipython span.cm-variable {
  color: #000;
}
.cm-s-ipython span.cm-operator {
  color: #AA22FF;
  font-weight: bold;
}
.cm-s-ipython span.cm-variable-2 {
  color: #1a1a1a;
}
.cm-s-ipython span.cm-variable-3 {
  color: #333333;
}
.cm-s-ipython span.cm-comment {
  color: #408080;
  font-style: italic;
}
.cm-s-ipython span.cm-string {
  color: #BA2121;
}
.cm-s-ipython span.cm-string-2 {
  color: #f50;
}
.cm-s-ipython span.cm-meta {
  color: #AA22FF;
}
.cm-s-ipython span.cm-qualifier {
  color: #555;
}
.cm-s-ipython span.cm-builtin {
  color: #008000;
}
.cm-s-ipython span.cm-bracket {
  color: #997;
}
.cm-s-ipython span.cm-tag {
  color: #170;
}
.cm-s-ipython span.cm-attribute {
  color: #00c;
}
.cm-s-ipython span.cm-header {
  color: blue;
}
.cm-s-ipython span.cm-quote {
  color: #090;
}
.cm-s-ipython span.cm-link {
  color: #00c;
}
.cm-s-ipython span.cm-error {
  color: #f00;
}
.cm-s-ipython span.cm-tab {
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAMCAYAAAAkuj5RAAAAAXNSR0IArs4c6QAAAGFJREFUSMft1LsRQFAQheHPowAKoACx3IgEKtaEHujDjORSgWTH/ZOdnZOcM/sgk/kFFWY0qV8foQwS4MKBCS3qR6ixBJvElOobYAtivseIE120FaowJPN75GMu8j/LfMwNjh4HUpwg4LUAAAAASUVORK5CYII=);
  background-position: right;
  background-repeat: no-repeat;
}
div.output_wrapper {
  /* this position must be relative to enable descendents to be absolute within it */
  position: relative;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  z-index: 1;
}
/* class for the output area when it should be height-limited */
div.output_scroll {
  /* ideally, this would be max-height, but FF barfs all over that */
  height: 24em;
  /* FF needs this *and the wrapper* to specify full width, or it will shrinkwrap */
  width: 100%;
  overflow: auto;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  display: block;
}
/* output div while it is collapsed */
div.output_collapsed {
  margin: 0px;
  padding: 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
div.out_prompt_overlay {
  height: 100%;
  padding: 0px 0.4em;
  position: absolute;
  border-radius: 2px;
}
div.out_prompt_overlay:hover {
  /* use inner shadow to get border that is computed the same on WebKit/FF */
  -webkit-box-shadow: inset 0 0 1px #000;
  box-shadow: inset 0 0 1px #000;
  background: rgba(240, 240, 240, 0.5);
}
div.output_prompt {
  color: #D84315;
}
/* This class is the outer container of all output sections. */
div.output_area {
  padding: 0px;
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.output_area .MathJax_Display {
  text-align: left !important;
}
div.output_area .rendered_html table {
  margin-left: 0;
  margin-right: 0;
}
div.output_area .rendered_html img {
  margin-left: 0;
  margin-right: 0;
}
div.output_area img,
div.output_area svg {
  max-width: 100%;
  height: auto;
}
div.output_area img.unconfined,
div.output_area svg.unconfined {
  max-width: none;
}
div.output_area .mglyph > img {
  max-width: none;
}
/* This is needed to protect the pre formating from global settings such
   as that of bootstrap */
.output {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.output_area {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
div.output_area pre {
  margin: 0;
  padding: 1px 0 1px 0;
  border: 0;
  vertical-align: baseline;
  color: black;
  background-color: transparent;
  border-radius: 0;
}
/* This class is for the output subarea inside the output_area and after
   the prompt div. */
div.output_subarea {
  overflow-x: auto;
  padding: 0.4em;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
  max-width: calc(100% - 14ex);
}
div.output_scroll div.output_subarea {
  overflow-x: visible;
}
/* The rest of the output_* classes are for special styling of the different
   output types */
/* all text output has this class: */
div.output_text {
  text-align: left;
  color: #000;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
}
/* stdout/stderr are 'text' as well as 'stream', but execute_result/error are *not* streams */
div.output_stderr {
  background: #fdd;
  /* very light red background for stderr */
}
div.output_latex {
  text-align: left;
}
/* Empty output_javascript divs should have no height */
div.output_javascript:empty {
  padding: 0;
}
.js-error {
  color: darkred;
}
/* raw_input styles */
div.raw_input_container {
  line-height: 1.21429em;
  padding-top: 5px;
}
pre.raw_input_prompt {
  /* nothing needed here. */
}
input.raw_input {
  font-family: monospace;
  font-size: inherit;
  color: inherit;
  width: auto;
  /* make sure input baseline aligns with prompt */
  vertical-align: baseline;
  /* padding + margin = 0.5em between prompt and cursor */
  padding: 0em 0.25em;
  margin: 0em 0.25em;
}
input.raw_input:focus {
  box-shadow: none;
}
p.p-space {
  margin-bottom: 10px;
}
div.output_unrecognized {
  padding: 5px;
  font-weight: bold;
  color: red;
}
div.output_unrecognized a {
  color: inherit;
  text-decoration: none;
}
div.output_unrecognized a:hover {
  color: inherit;
  text-decoration: none;
}
.rendered_html {
  color: #000;
  /* any extras will just be numbers: */
}
.rendered_html em {
  font-style: italic;
}
.rendered_html strong {
  font-weight: bold;
}
.rendered_html u {
  text-decoration: underline;
}
.rendered_html :link {
  text-decoration: underline;
}
.rendered_html :visited {
  text-decoration: underline;
}
.rendered_html h1 {
  font-size: 185.7%;
  margin: 1.08em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h2 {
  font-size: 157.1%;
  margin: 1.27em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h3 {
  font-size: 128.6%;
  margin: 1.55em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h4 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h5 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h6 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h1:first-child {
  margin-top: 0.538em;
}
.rendered_html h2:first-child {
  margin-top: 0.636em;
}
.rendered_html h3:first-child {
  margin-top: 0.777em;
}
.rendered_html h4:first-child {
  margin-top: 1em;
}
.rendered_html h5:first-child {
  margin-top: 1em;
}
.rendered_html h6:first-child {
  margin-top: 1em;
}
.rendered_html ul:not(.list-inline),
.rendered_html ol:not(.list-inline) {
  padding-left: 2em;
}
.rendered_html ul {
  list-style: disc;
}
.rendered_html ul ul {
  list-style: square;
  margin-top: 0;
}
.rendered_html ul ul ul {
  list-style: circle;
}
.rendered_html ol {
  list-style: decimal;
}
.rendered_html ol ol {
  list-style: upper-alpha;
  margin-top: 0;
}
.rendered_html ol ol ol {
  list-style: lower-alpha;
}
.rendered_html ol ol ol ol {
  list-style: lower-roman;
}
.rendered_html ol ol ol ol ol {
  list-style: decimal;
}
.rendered_html * + ul {
  margin-top: 1em;
}
.rendered_html * + ol {
  margin-top: 1em;
}
.rendered_html hr {
  color: black;
  background-color: black;
}
.rendered_html pre {
  margin: 1em 2em;
  padding: 0px;
  background-color: #fff;
}
.rendered_html code {
  background-color: #eff0f1;
}
.rendered_html p code {
  padding: 1px 5px;
}
.rendered_html pre code {
  background-color: #fff;
}
.rendered_html pre,
.rendered_html code {
  border: 0;
  color: #000;
  font-size: 100%;
}
.rendered_html blockquote {
  margin: 1em 2em;
}
.rendered_html table {
  margin-left: auto;
  margin-right: auto;
  border: none;
  border-collapse: collapse;
  border-spacing: 0;
  color: black;
  font-size: 12px;
  table-layout: fixed;
}
.rendered_html thead {
  border-bottom: 1px solid black;
  vertical-align: bottom;
}
.rendered_html tr,
.rendered_html th,
.rendered_html td {
  text-align: right;
  vertical-align: middle;
  padding: 0.5em 0.5em;
  line-height: normal;
  white-space: normal;
  max-width: none;
  border: none;
}
.rendered_html th {
  font-weight: bold;
}
.rendered_html tbody tr:nth-child(odd) {
  background: #f5f5f5;
}
.rendered_html tbody tr:hover {
  background: rgba(66, 165, 245, 0.2);
}
.rendered_html * + table {
  margin-top: 1em;
}
.rendered_html p {
  text-align: left;
}
.rendered_html * + p {
  margin-top: 1em;
}
.rendered_html img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.rendered_html * + img {
  margin-top: 1em;
}
.rendered_html img,
.rendered_html svg {
  max-width: 100%;
  height: auto;
}
.rendered_html img.unconfined,
.rendered_html svg.unconfined {
  max-width: none;
}
.rendered_html .alert {
  margin-bottom: initial;
}
.rendered_html * + .alert {
  margin-top: 1em;
}
[dir="rtl"] .rendered_html p {
  text-align: right;
}
div.text_cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.text_cell > div.prompt {
    display: none;
  }
}
div.text_cell_render {
  /*font-family: "Helvetica Neue", Arial, Helvetica, Geneva, sans-serif;*/
  outline: none;
  resize: none;
  width: inherit;
  border-style: none;
  padding: 0.5em 0.5em 0.5em 0.4em;
  color: #000;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
a.anchor-link:link {
  text-decoration: none;
  padding: 0px 20px;
  visibility: hidden;
}
h1:hover .anchor-link,
h2:hover .anchor-link,
h3:hover .anchor-link,
h4:hover .anchor-link,
h5:hover .anchor-link,
h6:hover .anchor-link {
  visibility: visible;
}
.text_cell.rendered .input_area {
  display: none;
}
.text_cell.rendered .rendered_html {
  overflow-x: auto;
  overflow-y: hidden;
}
.text_cell.rendered .rendered_html tr,
.text_cell.rendered .rendered_html th,
.text_cell.rendered .rendered_html td {
  max-width: none;
}
.text_cell.unrendered .text_cell_render {
  display: none;
}
.text_cell .dropzone .input_area {
  border: 2px dashed #bababa;
  margin: -1px;
}
.cm-header-1,
.cm-header-2,
.cm-header-3,
.cm-header-4,
.cm-header-5,
.cm-header-6 {
  font-weight: bold;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.cm-header-1 {
  font-size: 185.7%;
}
.cm-header-2 {
  font-size: 157.1%;
}
.cm-header-3 {
  font-size: 128.6%;
}
.cm-header-4 {
  font-size: 110%;
}
.cm-header-5 {
  font-size: 100%;
  font-style: italic;
}
.cm-header-6 {
  font-size: 100%;
  font-style: italic;
}
/*!
*
* IPython notebook webapp
*
*/
@media (max-width: 767px) {
  .notebook_app {
    padding-left: 0px;
    padding-right: 0px;
  }
}
#ipython-main-app {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook_panel {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook {
  font-size: 14px;
  line-height: 20px;
  overflow-y: hidden;
  overflow-x: auto;
  width: 100%;
  /* This spaces the page away from the edge of the notebook area */
  padding-top: 20px;
  margin: 0px;
  outline: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  min-height: 100%;
}
@media not print {
  #notebook-container {
    padding: 15px;
    background-color: #fff;
    min-height: 0;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
@media print {
  #notebook-container {
    width: 100%;
  }
}
div.ui-widget-content {
  border: 1px solid #ababab;
  outline: none;
}
pre.dialog {
  background-color: #f7f7f7;
  border: 1px solid #ddd;
  border-radius: 2px;
  padding: 0.4em;
  padding-left: 2em;
}
p.dialog {
  padding: 0.2em;
}
/* Word-wrap output correctly.  This is the CSS3 spelling, though Firefox seems
   to not honor it correctly.  Webkit browsers (Chrome, rekonq, Safari) do.
 */
pre,
code,
kbd,
samp {
  white-space: pre-wrap;
}
#fonttest {
  font-family: monospace;
}
p {
  margin-bottom: 0;
}
.end_space {
  min-height: 100px;
  transition: height .2s ease;
}
.notebook_app > #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
@media not print {
  .notebook_app {
    background-color: #EEE;
  }
}
kbd {
  border-style: solid;
  border-width: 1px;
  box-shadow: none;
  margin: 2px;
  padding-left: 2px;
  padding-right: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
.jupyter-keybindings {
  padding: 1px;
  line-height: 24px;
  border-bottom: 1px solid gray;
}
.jupyter-keybindings input {
  margin: 0;
  padding: 0;
  border: none;
}
.jupyter-keybindings i {
  padding: 6px;
}
.well code {
  background-color: #ffffff;
  border-color: #ababab;
  border-width: 1px;
  border-style: solid;
  padding: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
/* CSS for the cell toolbar */
.celltoolbar {
  border: thin solid #CFCFCF;
  border-bottom: none;
  background: #EEE;
  border-radius: 2px 2px 0px 0px;
  width: 100%;
  height: 29px;
  padding-right: 4px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
  display: -webkit-flex;
}
@media print {
  .celltoolbar {
    display: none;
  }
}
.ctb_hideshow {
  display: none;
  vertical-align: bottom;
}
/* ctb_show is added to the ctb_hideshow div to show the cell toolbar.
   Cell toolbars are only shown when the ctb_global_show class is also set.
*/
.ctb_global_show .ctb_show.ctb_hideshow {
  display: block;
}
.ctb_global_show .ctb_show + .input_area,
.ctb_global_show .ctb_show + div.text_cell_input,
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border-top-right-radius: 0px;
  border-top-left-radius: 0px;
}
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border: 1px solid #cfcfcf;
}
.celltoolbar {
  font-size: 87%;
  padding-top: 3px;
}
.celltoolbar select {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  width: inherit;
  font-size: inherit;
  height: 22px;
  padding: 0px;
  display: inline-block;
}
.celltoolbar select:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.celltoolbar select::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.celltoolbar select:-ms-input-placeholder {
  color: #999;
}
.celltoolbar select::-webkit-input-placeholder {
  color: #999;
}
.celltoolbar select::-ms-expand {
  border: 0;
  background-color: transparent;
}
.celltoolbar select[disabled],
.celltoolbar select[readonly],
fieldset[disabled] .celltoolbar select {
  background-color: #eeeeee;
  opacity: 1;
}
.celltoolbar select[disabled],
fieldset[disabled] .celltoolbar select {
  cursor: not-allowed;
}
textarea.celltoolbar select {
  height: auto;
}
select.celltoolbar select {
  height: 30px;
  line-height: 30px;
}
textarea.celltoolbar select,
select[multiple].celltoolbar select {
  height: auto;
}
.celltoolbar label {
  margin-left: 5px;
  margin-right: 5px;
}
.tags_button_container {
  width: 100%;
  display: flex;
}
.tag-container {
  display: flex;
  flex-direction: row;
  flex-grow: 1;
  overflow: hidden;
  position: relative;
}
.tag-container > * {
  margin: 0 4px;
}
.remove-tag-btn {
  margin-left: 4px;
}
.tags-input {
  display: flex;
}
.cell-tag:last-child:after {
  content: "";
  position: absolute;
  right: 0;
  width: 40px;
  height: 100%;
  /* Fade to background color of cell toolbar */
  background: linear-gradient(to right, rgba(0, 0, 0, 0), #EEE);
}
.tags-input > * {
  margin-left: 4px;
}
.cell-tag,
.tags-input input,
.tags-input button {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  box-shadow: none;
  width: inherit;
  font-size: inherit;
  height: 22px;
  line-height: 22px;
  padding: 0px 4px;
  display: inline-block;
}
.cell-tag:focus,
.tags-input input:focus,
.tags-input button:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.cell-tag::-moz-placeholder,
.tags-input input::-moz-placeholder,
.tags-input button::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.cell-tag:-ms-input-placeholder,
.tags-input input:-ms-input-placeholder,
.tags-input button:-ms-input-placeholder {
  color: #999;
}
.cell-tag::-webkit-input-placeholder,
.tags-input input::-webkit-input-placeholder,
.tags-input button::-webkit-input-placeholder {
  color: #999;
}
.cell-tag::-ms-expand,
.tags-input input::-ms-expand,
.tags-input button::-ms-expand {
  border: 0;
  background-color: transparent;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
.cell-tag[readonly],
.tags-input input[readonly],
.tags-input button[readonly],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  background-color: #eeeeee;
  opacity: 1;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  cursor: not-allowed;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button {
  height: auto;
}
select.cell-tag,
select.tags-input input,
select.tags-input button {
  height: 30px;
  line-height: 30px;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button,
select[multiple].cell-tag,
select[multiple].tags-input input,
select[multiple].tags-input button {
  height: auto;
}
.cell-tag,
.tags-input button {
  padding: 0px 4px;
}
.cell-tag {
  background-color: #fff;
  white-space: nowrap;
}
.tags-input input[type=text]:focus {
  outline: none;
  box-shadow: none;
  border-color: #ccc;
}
.completions {
  position: absolute;
  z-index: 110;
  overflow: hidden;
  border: 1px solid #ababab;
  border-radius: 2px;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  line-height: 1;
}
.completions select {
  background: white;
  outline: none;
  border: none;
  padding: 0px;
  margin: 0px;
  overflow: auto;
  font-family: monospace;
  font-size: 110%;
  color: #000;
  width: auto;
}
.completions select option.context {
  color: #286090;
}
#kernel_logo_widget .current_kernel_logo {
  display: none;
  margin-top: -1px;
  margin-bottom: -1px;
  width: 32px;
  height: 32px;
}
[dir="rtl"] #kernel_logo_widget {
  float: left !important;
  float: left;
}
.modal .modal-body .move-path {
  display: flex;
  flex-direction: row;
  justify-content: space;
  align-items: center;
}
.modal .modal-body .move-path .server-root {
  padding-right: 20px;
}
.modal .modal-body .move-path .path-input {
  flex: 1;
}
#menubar {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  margin-top: 1px;
}
#menubar .navbar {
  border-top: 1px;
  border-radius: 0px 0px 2px 2px;
  margin-bottom: 0px;
}
#menubar .navbar-toggle {
  float: left;
  padding-top: 7px;
  padding-bottom: 7px;
  border: none;
}
#menubar .navbar-collapse {
  clear: left;
}
[dir="rtl"] #menubar .navbar-toggle {
  float: right;
}
[dir="rtl"] #menubar .navbar-collapse {
  clear: right;
}
[dir="rtl"] #menubar .navbar-nav {
  float: right;
}
[dir="rtl"] #menubar .nav {
  padding-right: 0px;
}
[dir="rtl"] #menubar .navbar-nav > li {
  float: right;
}
[dir="rtl"] #menubar .navbar-right {
  float: left !important;
}
[dir="rtl"] ul.dropdown-menu {
  text-align: right;
  left: auto;
}
[dir="rtl"] ul#new-menu.dropdown-menu {
  right: auto;
  left: 0;
}
.nav-wrapper {
  border-bottom: 1px solid #e7e7e7;
}
i.menu-icon {
  padding-top: 4px;
}
[dir="rtl"] i.menu-icon.pull-right {
  float: left !important;
  float: left;
}
ul#help_menu li a {
  overflow: hidden;
  padding-right: 2.2em;
}
ul#help_menu li a i {
  margin-right: -1.2em;
}
[dir="rtl"] ul#help_menu li a {
  padding-left: 2.2em;
}
[dir="rtl"] ul#help_menu li a i {
  margin-right: 0;
  margin-left: -1.2em;
}
[dir="rtl"] ul#help_menu li a i.pull-right {
  float: left !important;
  float: left;
}
.dropdown-submenu {
  position: relative;
}
.dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
}
[dir="rtl"] .dropdown-submenu > .dropdown-menu {
  right: 100%;
  margin-right: -1px;
}
.dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
.dropdown-submenu > a:after {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  display: block;
  content: "\f0da";
  float: right;
  color: #333333;
  margin-top: 2px;
  margin-right: -10px;
}
.dropdown-submenu > a:after.fa-pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.fa-pull-right {
  margin-left: .3em;
}
.dropdown-submenu > a:after.pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.pull-right {
  margin-left: .3em;
}
[dir="rtl"] .dropdown-submenu > a:after {
  float: left;
  content: "\f0d9";
  margin-right: 0;
  margin-left: -10px;
}
.dropdown-submenu:hover > a:after {
  color: #262626;
}
.dropdown-submenu.pull-left {
  float: none;
}
.dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
}
#notification_area {
  float: right !important;
  float: right;
  z-index: 10;
}
[dir="rtl"] #notification_area {
  float: left !important;
  float: left;
}
.indicator_area {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] .indicator_area {
  float: left !important;
  float: left;
}
#kernel_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  border-left: 1px solid;
}
#kernel_indicator .kernel_indicator_name {
  padding-left: 5px;
  padding-right: 5px;
}
[dir="rtl"] #kernel_indicator {
  float: left !important;
  float: left;
  border-left: 0;
  border-right: 1px solid;
}
#modal_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] #modal_indicator {
  float: left !important;
  float: left;
}
#readonly-indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  margin-top: 2px;
  margin-bottom: 0px;
  margin-left: 0px;
  margin-right: 0px;
  display: none;
}
.modal_indicator:before {
  width: 1.28571429em;
  text-align: center;
}
.edit_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f040";
}
.edit_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.edit_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: ' ';
}
.command_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f10c";
}
.kernel_idle_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f111";
}
.kernel_busy_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f1e2";
}
.kernel_dead_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f127";
}
.kernel_disconnected_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.pull-right {
  margin-left: .3em;
}
.notification_widget {
  color: #777;
  z-index: 10;
  background: rgba(240, 240, 240, 0.5);
  margin-right: 4px;
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget:focus,
.notification_widget.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.notification_widget:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active:hover,
.notification_widget.active:hover,
.open > .dropdown-toggle.notification_widget:hover,
.notification_widget:active:focus,
.notification_widget.active:focus,
.open > .dropdown-toggle.notification_widget:focus,
.notification_widget:active.focus,
.notification_widget.active.focus,
.open > .dropdown-toggle.notification_widget.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  background-image: none;
}
.notification_widget.disabled:hover,
.notification_widget[disabled]:hover,
fieldset[disabled] .notification_widget:hover,
.notification_widget.disabled:focus,
.notification_widget[disabled]:focus,
fieldset[disabled] .notification_widget:focus,
.notification_widget.disabled.focus,
.notification_widget[disabled].focus,
fieldset[disabled] .notification_widget.focus {
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget .badge {
  color: #fff;
  background-color: #333;
}
.notification_widget.warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning:focus,
.notification_widget.warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.notification_widget.warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active:hover,
.notification_widget.warning.active:hover,
.open > .dropdown-toggle.notification_widget.warning:hover,
.notification_widget.warning:active:focus,
.notification_widget.warning.active:focus,
.open > .dropdown-toggle.notification_widget.warning:focus,
.notification_widget.warning:active.focus,
.notification_widget.warning.active.focus,
.open > .dropdown-toggle.notification_widget.warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  background-image: none;
}
.notification_widget.warning.disabled:hover,
.notification_widget.warning[disabled]:hover,
fieldset[disabled] .notification_widget.warning:hover,
.notification_widget.warning.disabled:focus,
.notification_widget.warning[disabled]:focus,
fieldset[disabled] .notification_widget.warning:focus,
.notification_widget.warning.disabled.focus,
.notification_widget.warning[disabled].focus,
fieldset[disabled] .notification_widget.warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.notification_widget.success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success:focus,
.notification_widget.success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.notification_widget.success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active:hover,
.notification_widget.success.active:hover,
.open > .dropdown-toggle.notification_widget.success:hover,
.notification_widget.success:active:focus,
.notification_widget.success.active:focus,
.open > .dropdown-toggle.notification_widget.success:focus,
.notification_widget.success:active.focus,
.notification_widget.success.active.focus,
.open > .dropdown-toggle.notification_widget.success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  background-image: none;
}
.notification_widget.success.disabled:hover,
.notification_widget.success[disabled]:hover,
fieldset[disabled] .notification_widget.success:hover,
.notification_widget.success.disabled:focus,
.notification_widget.success[disabled]:focus,
fieldset[disabled] .notification_widget.success:focus,
.notification_widget.success.disabled.focus,
.notification_widget.success[disabled].focus,
fieldset[disabled] .notification_widget.success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.notification_widget.info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info:focus,
.notification_widget.info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.notification_widget.info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active:hover,
.notification_widget.info.active:hover,
.open > .dropdown-toggle.notification_widget.info:hover,
.notification_widget.info:active:focus,
.notification_widget.info.active:focus,
.open > .dropdown-toggle.notification_widget.info:focus,
.notification_widget.info:active.focus,
.notification_widget.info.active.focus,
.open > .dropdown-toggle.notification_widget.info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  background-image: none;
}
.notification_widget.info.disabled:hover,
.notification_widget.info[disabled]:hover,
fieldset[disabled] .notification_widget.info:hover,
.notification_widget.info.disabled:focus,
.notification_widget.info[disabled]:focus,
fieldset[disabled] .notification_widget.info:focus,
.notification_widget.info.disabled.focus,
.notification_widget.info[disabled].focus,
fieldset[disabled] .notification_widget.info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.notification_widget.danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger:focus,
.notification_widget.danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.notification_widget.danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active:hover,
.notification_widget.danger.active:hover,
.open > .dropdown-toggle.notification_widget.danger:hover,
.notification_widget.danger:active:focus,
.notification_widget.danger.active:focus,
.open > .dropdown-toggle.notification_widget.danger:focus,
.notification_widget.danger:active.focus,
.notification_widget.danger.active.focus,
.open > .dropdown-toggle.notification_widget.danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  background-image: none;
}
.notification_widget.danger.disabled:hover,
.notification_widget.danger[disabled]:hover,
fieldset[disabled] .notification_widget.danger:hover,
.notification_widget.danger.disabled:focus,
.notification_widget.danger[disabled]:focus,
fieldset[disabled] .notification_widget.danger:focus,
.notification_widget.danger.disabled.focus,
.notification_widget.danger[disabled].focus,
fieldset[disabled] .notification_widget.danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger .badge {
  color: #d9534f;
  background-color: #fff;
}
div#pager {
  background-color: #fff;
  font-size: 14px;
  line-height: 20px;
  overflow: hidden;
  display: none;
  position: fixed;
  bottom: 0px;
  width: 100%;
  max-height: 50%;
  padding-top: 8px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  /* Display over codemirror */
  z-index: 100;
  /* Hack which prevents jquery ui resizable from changing top. */
  top: auto !important;
}
div#pager pre {
  line-height: 1.21429em;
  color: #000;
  background-color: #f7f7f7;
  padding: 0.4em;
}
div#pager #pager-button-area {
  position: absolute;
  top: 8px;
  right: 20px;
}
div#pager #pager-contents {
  position: relative;
  overflow: auto;
  width: 100%;
  height: 100%;
}
div#pager #pager-contents #pager-container {
  position: relative;
  padding: 15px 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
div#pager .ui-resizable-handle {
  top: 0px;
  height: 8px;
  background: #f7f7f7;
  border-top: 1px solid #cfcfcf;
  border-bottom: 1px solid #cfcfcf;
  /* This injects handle bars (a short, wide = symbol) for 
        the resize handle. */
}
div#pager .ui-resizable-handle::after {
  content: '';
  top: 2px;
  left: 50%;
  height: 3px;
  width: 30px;
  margin-left: -15px;
  position: absolute;
  border-top: 1px solid #cfcfcf;
}
.quickhelp {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  line-height: 1.8em;
}
.shortcut_key {
  display: inline-block;
  width: 21ex;
  text-align: right;
  font-family: monospace;
}
.shortcut_descr {
  display: inline-block;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
span.save_widget {
  height: 30px;
  margin-top: 4px;
  display: flex;
  justify-content: flex-start;
  align-items: baseline;
  width: 50%;
  flex: 1;
}
span.save_widget span.filename {
  height: 100%;
  line-height: 1em;
  margin-left: 16px;
  border: none;
  font-size: 146.5%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  border-radius: 2px;
}
span.save_widget span.filename:hover {
  background-color: #e6e6e6;
}
[dir="rtl"] span.save_widget.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] span.save_widget span.filename {
  margin-left: 0;
  margin-right: 16px;
}
span.checkpoint_status,
span.autosave_status {
  font-size: small;
  white-space: nowrap;
  padding: 0 5px;
}
@media (max-width: 767px) {
  span.save_widget {
    font-size: small;
    padding: 0 0 0 5px;
  }
  span.checkpoint_status,
  span.autosave_status {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  span.checkpoint_status {
    display: none;
  }
  span.autosave_status {
    font-size: x-small;
  }
}
.toolbar {
  padding: 0px;
  margin-left: -5px;
  margin-top: 2px;
  margin-bottom: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.toolbar select,
.toolbar label {
  width: auto;
  vertical-align: middle;
  margin-right: 2px;
  margin-bottom: 0px;
  display: inline;
  font-size: 92%;
  margin-left: 0.3em;
  margin-right: 0.3em;
  padding: 0px;
  padding-top: 3px;
}
.toolbar .btn {
  padding: 2px 8px;
}
.toolbar .btn-group {
  margin-top: 0px;
  margin-left: 5px;
}
.toolbar-btn-label {
  margin-left: 6px;
}
#maintoolbar {
  margin-bottom: -3px;
  margin-top: -8px;
  border: 0px;
  min-height: 27px;
  margin-left: 0px;
  padding-top: 11px;
  padding-bottom: 3px;
}
#maintoolbar .navbar-text {
  float: none;
  vertical-align: middle;
  text-align: right;
  margin-left: 5px;
  margin-right: 0px;
  margin-top: 0px;
}
.select-xs {
  height: 24px;
}
[dir="rtl"] .btn-group > .btn,
.btn-group-vertical > .btn {
  float: right;
}
.pulse,
.dropdown-menu > li > a.pulse,
li.pulse > a.dropdown-toggle,
li.pulse.open > a.dropdown-toggle {
  background-color: #F37626;
  color: white;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
/** WARNING IF YOU ARE EDITTING THIS FILE, if this is a .css file, It has a lot
 * of chance of beeing generated from the ../less/[samename].less file, you can
 * try to get back the less file by reverting somme commit in history
 **/
/*
 * We'll try to get something pretty, so we
 * have some strange css to have the scroll bar on
 * the left with fix button on the top right of the tooltip
 */
@-moz-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-webkit-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-moz-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@-webkit-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
/*properties of tooltip after "expand"*/
.bigtooltip {
  overflow: auto;
  height: 200px;
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
}
/*properties of tooltip before "expand"*/
.smalltooltip {
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
  text-overflow: ellipsis;
  overflow: hidden;
  height: 80px;
}
.tooltipbuttons {
  position: absolute;
  padding-right: 15px;
  top: 0px;
  right: 0px;
}
.tooltiptext {
  /*avoid the button to overlap on some docstring*/
  padding-right: 30px;
}
.ipython_tooltip {
  max-width: 700px;
  /*fade-in animation when inserted*/
  -webkit-animation: fadeOut 400ms;
  -moz-animation: fadeOut 400ms;
  animation: fadeOut 400ms;
  -webkit-animation: fadeIn 400ms;
  -moz-animation: fadeIn 400ms;
  animation: fadeIn 400ms;
  vertical-align: middle;
  background-color: #f7f7f7;
  overflow: visible;
  border: #ababab 1px solid;
  outline: none;
  padding: 3px;
  margin: 0px;
  padding-left: 7px;
  font-family: monospace;
  min-height: 50px;
  -moz-box-shadow: 0px 6px 10px -1px #adadad;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  border-radius: 2px;
  position: absolute;
  z-index: 1000;
}
.ipython_tooltip a {
  float: right;
}
.ipython_tooltip .tooltiptext pre {
  border: 0;
  border-radius: 0;
  font-size: 100%;
  background-color: #f7f7f7;
}
.pretooltiparrow {
  left: 0px;
  margin: 0px;
  top: -16px;
  width: 40px;
  height: 16px;
  overflow: hidden;
  position: absolute;
}
.pretooltiparrow:before {
  background-color: #f7f7f7;
  border: 1px #ababab solid;
  z-index: 11;
  content: "";
  position: absolute;
  left: 15px;
  top: 10px;
  width: 25px;
  height: 25px;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
}
ul.typeahead-list i {
  margin-left: -10px;
  width: 18px;
}
[dir="rtl"] ul.typeahead-list i {
  margin-left: 0;
  margin-right: -10px;
}
ul.typeahead-list {
  max-height: 80vh;
  overflow: auto;
}
ul.typeahead-list > li > a {
  /** Firefox bug **/
  /* see https://github.com/jupyter/notebook/issues/559 */
  white-space: normal;
}
ul.typeahead-list  > li > a.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .typeahead-list {
  text-align: right;
}
.cmd-palette .modal-body {
  padding: 7px;
}
.cmd-palette form {
  background: white;
}
.cmd-palette input {
  outline: none;
}
.no-shortcut {
  min-width: 20px;
  color: transparent;
}
[dir="rtl"] .no-shortcut.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .command-shortcut.pull-right {
  float: left !important;
  float: left;
}
.command-shortcut:before {
  content: "(command mode)";
  padding-right: 3px;
  color: #777777;
}
.edit-shortcut:before {
  content: "(edit)";
  padding-right: 3px;
  color: #777777;
}
[dir="rtl"] .edit-shortcut.pull-right {
  float: left !important;
  float: left;
}
#find-and-replace #replace-preview .match,
#find-and-replace #replace-preview .insert {
  background-color: #BBDEFB;
  border-color: #90CAF9;
  border-style: solid;
  border-width: 1px;
  border-radius: 0px;
}
[dir="ltr"] #find-and-replace .input-group-btn + .form-control {
  border-left: none;
}
[dir="rtl"] #find-and-replace .input-group-btn + .form-control {
  border-right: none;
}
#find-and-replace #replace-preview .replace .match {
  background-color: #FFCDD2;
  border-color: #EF9A9A;
  border-radius: 0px;
}
#find-and-replace #replace-preview .replace .insert {
  background-color: #C8E6C9;
  border-color: #A5D6A7;
  border-radius: 0px;
}
#find-and-replace #replace-preview {
  max-height: 60vh;
  overflow: auto;
}
#find-and-replace #replace-preview pre {
  padding: 5px 10px;
}
.terminal-app {
  background: #EEE;
}
.terminal-app #header {
  background: #fff;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.terminal-app .terminal {
  width: 100%;
  float: left;
  font-family: monospace;
  color: white;
  background: black;
  padding: 0.4em;
  border-radius: 2px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
}
.terminal-app .terminal,
.terminal-app .terminal dummy-screen {
  line-height: 1em;
  font-size: 14px;
}
.terminal-app .terminal .xterm-rows {
  padding: 10px;
}
.terminal-app .terminal-cursor {
  color: black;
  background: white;
}
.terminal-app #terminado-container {
  margin-top: 20px;
}
/*# sourceMappingURL=style.min.css.map */
    </style>
<style type="text/css">
    .highlight .hll { background-color: #ffffcc }
.highlight  { background: #f8f8f8; }
.highlight .c { color: #408080; font-style: italic } /* Comment */
.highlight .err { border: 1px solid #FF0000 } /* Error */
.highlight .k { color: #008000; font-weight: bold } /* Keyword */
.highlight .o { color: #666666 } /* Operator */
.highlight .ch { color: #408080; font-style: italic } /* Comment.Hashbang */
.highlight .cm { color: #408080; font-style: italic } /* Comment.Multiline */
.highlight .cp { color: #BC7A00 } /* Comment.Preproc */
.highlight .cpf { color: #408080; font-style: italic } /* Comment.PreprocFile */
.highlight .c1 { color: #408080; font-style: italic } /* Comment.Single */
.highlight .cs { color: #408080; font-style: italic } /* Comment.Special */
.highlight .gd { color: #A00000 } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #FF0000 } /* Generic.Error */
.highlight .gh { color: #000080; font-weight: bold } /* Generic.Heading */
.highlight .gi { color: #00A000 } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #000080; font-weight: bold } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #800080; font-weight: bold } /* Generic.Subheading */
.highlight .gt { color: #0044DD } /* Generic.Traceback */
.highlight .kc { color: #008000; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008000; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008000; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008000 } /* Keyword.Pseudo */
.highlight .kr { color: #008000; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #B00040 } /* Keyword.Type */
.highlight .m { color: #666666 } /* Literal.Number */
.highlight .s { color: #BA2121 } /* Literal.String */
.highlight .na { color: #7D9029 } /* Name.Attribute */
.highlight .nb { color: #008000 } /* Name.Builtin */
.highlight .nc { color: #0000FF; font-weight: bold } /* Name.Class */
.highlight .no { color: #880000 } /* Name.Constant */
.highlight .nd { color: #AA22FF } /* Name.Decorator */
.highlight .ni { color: #999999; font-weight: bold } /* Name.Entity */
.highlight .ne { color: #D2413A; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0000FF } /* Name.Function */
.highlight .nl { color: #A0A000 } /* Name.Label */
.highlight .nn { color: #0000FF; font-weight: bold } /* Name.Namespace */
.highlight .nt { color: #008000; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #19177C } /* Name.Variable */
.highlight .ow { color: #AA22FF; font-weight: bold } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #666666 } /* Literal.Number.Bin */
.highlight .mf { color: #666666 } /* Literal.Number.Float */
.highlight .mh { color: #666666 } /* Literal.Number.Hex */
.highlight .mi { color: #666666 } /* Literal.Number.Integer */
.highlight .mo { color: #666666 } /* Literal.Number.Oct */
.highlight .sa { color: #BA2121 } /* Literal.String.Affix */
.highlight .sb { color: #BA2121 } /* Literal.String.Backtick */
.highlight .sc { color: #BA2121 } /* Literal.String.Char */
.highlight .dl { color: #BA2121 } /* Literal.String.Delimiter */
.highlight .sd { color: #BA2121; font-style: italic } /* Literal.String.Doc */
.highlight .s2 { color: #BA2121 } /* Literal.String.Double */
.highlight .se { color: #BB6622; font-weight: bold } /* Literal.String.Escape */
.highlight .sh { color: #BA2121 } /* Literal.String.Heredoc */
.highlight .si { color: #BB6688; font-weight: bold } /* Literal.String.Interpol */
.highlight .sx { color: #008000 } /* Literal.String.Other */
.highlight .sr { color: #BB6688 } /* Literal.String.Regex */
.highlight .s1 { color: #BA2121 } /* Literal.String.Single */
.highlight .ss { color: #19177C } /* Literal.String.Symbol */
.highlight .bp { color: #008000 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0000FF } /* Name.Function.Magic */
.highlight .vc { color: #19177C } /* Name.Variable.Class */
.highlight .vg { color: #19177C } /* Name.Variable.Global */
.highlight .vi { color: #19177C } /* Name.Variable.Instance */
.highlight .vm { color: #19177C } /* Name.Variable.Magic */
.highlight .il { color: #666666 } /* Literal.Number.Integer.Long */
    </style>
<style type="text/css">
    
/* Temporary definitions which will become obsolete with Notebook release 5.0 */
.ansi-black-fg { color: #3E424D; }
.ansi-black-bg { background-color: #3E424D; }
.ansi-black-intense-fg { color: #282C36; }
.ansi-black-intense-bg { background-color: #282C36; }
.ansi-red-fg { color: #E75C58; }
.ansi-red-bg { background-color: #E75C58; }
.ansi-red-intense-fg { color: #B22B31; }
.ansi-red-intense-bg { background-color: #B22B31; }
.ansi-green-fg { color: #00A250; }
.ansi-green-bg { background-color: #00A250; }
.ansi-green-intense-fg { color: #007427; }
.ansi-green-intense-bg { background-color: #007427; }
.ansi-yellow-fg { color: #DDB62B; }
.ansi-yellow-bg { background-color: #DDB62B; }
.ansi-yellow-intense-fg { color: #B27D12; }
.ansi-yellow-intense-bg { background-color: #B27D12; }
.ansi-blue-fg { color: #208FFB; }
.ansi-blue-bg { background-color: #208FFB; }
.ansi-blue-intense-fg { color: #0065CA; }
.ansi-blue-intense-bg { background-color: #0065CA; }
.ansi-magenta-fg { color: #D160C4; }
.ansi-magenta-bg { background-color: #D160C4; }
.ansi-magenta-intense-fg { color: #A03196; }
.ansi-magenta-intense-bg { background-color: #A03196; }
.ansi-cyan-fg { color: #60C6C8; }
.ansi-cyan-bg { background-color: #60C6C8; }
.ansi-cyan-intense-fg { color: #258F8F; }
.ansi-cyan-intense-bg { background-color: #258F8F; }
.ansi-white-fg { color: #C5C1B4; }
.ansi-white-bg { background-color: #C5C1B4; }
.ansi-white-intense-fg { color: #A1A6B2; }
.ansi-white-intense-bg { background-color: #A1A6B2; }

.ansi-bold { font-weight: bold; }

    </style>


<style type="text/css">
/* Overrides of notebook CSS for static HTML export */
body {
  overflow: visible;
  padding: 8px;
}

div#notebook {
  overflow: visible;
  border-top: none;
}@media print {
  div.cell {
    display: block;
    page-break-inside: avoid;
  } 
  div.output_wrapper { 
    display: block;
    page-break-inside: avoid; 
  }
  div.output { 
    display: block;
    page-break-inside: avoid; 
  }
}
</style>

<!-- Custom stylesheet, it must be in the same directory as the html file -->
<link rel="stylesheet" href="custom.css">

<!-- Loading mathjax macro -->
<!-- Load mathjax -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_HTML"></script>
    <!-- MathJax configuration -->
    <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            inlineMath: [ ['$','$'], ["\\(","\\)"] ],
            displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
            processEscapes: true,
            processEnvironments: true
        },
        // Center justify equations in code and markdown cells. Elsewhere
        // we use CSS to left justify single line equations in code cells.
        displayAlign: 'center',
        "HTML-CSS": {
            styles: {'.MathJax_Display': {"margin": 0}},
            linebreaks: { automatic: true }
        }
    });
    </script>
    <!-- End of mathjax configuration --></head>
<body>
  <div tabindex="-1" id="notebook" class="border-box-sizing">
    <div class="container" id="notebook-container">

<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h1 id="Addtive-Noise-Linear-Model-Learning">Addtive Noise Linear Model Learning<a class="anchor-link" href="#Addtive-Noise-Linear-Model-Learning">&#182;</a></h1><p>A common assumption for data generation is that all variables are influenced by some independent noise sources and such noise sources are additive to each variable.
A collection of $p$ equations can be used to represent such models:</p>
$$\mathcal{S}_j: \quad X_j = f_j(\mathbf{PA}_j) + N_{j}, \quad j = 1, \ldots ,p, $$<p>where the $\mathbf{PA}_j$ correspond to the direct parents of $X_j$ and the noise variables $N_j$ are jointly independent.</p>
<p>For each node $X_j$ the corresponding noise variable $N_j$ is independent of all non-descendants of $X_j$.
In particular, for each sink node $X_j$ we have that $N_j$ is independent of $\mathbf{X} \backslash \{X_j\}$.</p>
<p>In what follows, we aim to experimentally justify this argument.
The question we ask and try to answer is: how can we reliably identify sink nodes based on additive noise assumption? If we cannot, identify the painpoint.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Get-Started">Get Started<a class="anchor-link" href="#Get-Started">&#182;</a></h2><h3 id="Data-Generation-and-Checks">Data Generation and Checks<a class="anchor-link" href="#Data-Generation-and-Checks">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[1]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">numpy</span> <span class="k">as</span> <span class="nn">np</span>
<span class="kn">import</span> <span class="nn">logging</span>
<span class="n">logger</span> <span class="o">=</span> <span class="n">logging</span><span class="o">.</span><span class="n">getLogger</span><span class="p">(</span><span class="s1">&#39;matplotlib&#39;</span><span class="p">)</span>
<span class="n">logger</span><span class="o">.</span><span class="n">setLevel</span><span class="p">(</span><span class="s1">&#39;WARNING&#39;</span><span class="p">)</span>

<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="kn">from</span> <span class="nn">private.classes</span> <span class="k">import</span> <span class="n">BNGraph</span><span class="p">,</span> <span class="n">DataSet</span>

<span class="o">%</span><span class="k">matplotlib</span> inline
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[2]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># variable setting</span>
<span class="n">n_nodes</span> <span class="o">=</span> <span class="mi">100</span>
<span class="n">sparse_level</span> <span class="o">=</span> <span class="mf">0.2</span>
<span class="n">n_samples</span> <span class="o">=</span> <span class="mi">1000</span>
<span class="n">noise_raio</span> <span class="o">=</span> <span class="mf">0.2</span>
<span class="n">noise_type</span> <span class="o">=</span> <span class="s1">&#39;laplace&#39;</span>
<span class="n">seed</span> <span class="o">=</span> <span class="mi">213</span>

<span class="c1"># randomly generate the digraph</span>
<span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">seed</span><span class="p">(</span><span class="n">seed</span><span class="p">)</span>
<span class="n">G</span> <span class="o">=</span> <span class="n">BNGraph</span><span class="p">()</span>
<span class="n">G</span><span class="o">.</span><span class="n">random_uniform_digraph</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="p">,</span> <span class="n">n_nodes</span><span class="p">,</span> <span class="n">sparsity</span><span class="o">=</span><span class="n">sparse_level</span><span class="p">)</span>


<span class="c1"># sample data from the graph</span>
<span class="n">data1</span><span class="p">,</span> <span class="n">coeffM1</span><span class="p">,</span> <span class="n">nsM1</span> <span class="o">=</span> <span class="n">G</span><span class="o">.</span><span class="n">sample_linear</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="p">,</span> <span class="n">n_samples</span><span class="p">,</span>
                                       <span class="n">noise_scale</span><span class="o">=</span><span class="n">noise_raio</span><span class="p">,</span>
                                       <span class="n">noise_type</span><span class="o">=</span><span class="n">noise_type</span><span class="p">)</span>

<span class="c1"># we pass the data to the DataSet class for easy processing</span>
<span class="n">d</span> <span class="o">=</span> <span class="n">DataSet</span><span class="p">()</span>
<span class="n">d</span><span class="o">.</span><span class="n">adjM</span> <span class="o">=</span> <span class="n">coeffM1</span>
<span class="n">d</span><span class="o">.</span><span class="n">nsM</span> <span class="o">=</span> <span class="n">nsM1</span>
<span class="n">d</span><span class="o">.</span><span class="n">data</span> <span class="o">=</span> <span class="n">data1</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[3]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># normalize and confirm the data generation process</span>
<span class="n">d</span><span class="o">.</span><span class="n">l2_normalize</span><span class="p">()</span>
<span class="k">if</span> <span class="n">d</span><span class="o">.</span><span class="n">check_data_gen</span><span class="p">():</span>
    <span class="nb">print</span><span class="p">(</span><span class="s1">&#39;Data are indeed generated by the linear additive noise model&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Data are indeed generated by the linear additive noise model
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[4]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># percive the data statistics by visualization</span>
<span class="n">vmin</span> <span class="o">=</span> <span class="o">-</span><span class="mi">7</span>
<span class="n">vmax</span> <span class="o">=</span> <span class="o">-</span><span class="mi">3</span>

<span class="n">fig</span><span class="p">,</span> <span class="n">axn</span> <span class="o">=</span> <span class="n">plt</span><span class="o">.</span><span class="n">subplots</span><span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span> <span class="n">sharex</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="n">sharey</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>
<span class="n">cbar_ax</span> <span class="o">=</span> <span class="n">fig</span><span class="o">.</span><span class="n">add_axes</span><span class="p">([</span><span class="o">.</span><span class="mi">91</span><span class="p">,</span> <span class="o">.</span><span class="mi">3</span><span class="p">,</span> <span class="o">.</span><span class="mi">03</span><span class="p">,</span> <span class="o">.</span><span class="mi">4</span><span class="p">])</span>

<span class="c1"># for observational variables</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">imshow</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="p">:])),</span> <span class="n">cmap</span><span class="o">=</span><span class="s1">&#39;jet&#39;</span><span class="p">,</span> <span class="n">aspect</span><span class="o">=</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span> <span class="n">vmin</span><span class="o">=</span><span class="n">vmin</span><span class="p">,</span> <span class="n">vmax</span><span class="o">=</span><span class="n">vmax</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">set_title</span><span class="p">(</span><span class="s1">&#39;Data&#39;</span><span class="p">)</span>

<span class="c1"># for noise variables</span>
<span class="n">im</span> <span class="o">=</span> <span class="n">axn</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">imshow</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="p">:])),</span>  <span class="n">cmap</span><span class="o">=</span><span class="s1">&#39;jet&#39;</span><span class="p">,</span> <span class="n">aspect</span><span class="o">=</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span> <span class="n">vmin</span><span class="o">=</span><span class="n">vmin</span><span class="p">,</span> <span class="n">vmax</span><span class="o">=</span><span class="n">vmax</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">set_title</span><span class="p">(</span><span class="s1">&#39;Noise&#39;</span><span class="p">)</span>

<span class="n">fig</span><span class="o">.</span><span class="n">colorbar</span><span class="p">(</span><span class="n">im</span><span class="p">,</span> <span class="n">cax</span><span class="o">=</span><span class="n">cbar_ax</span><span class="p">)</span>

<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[5]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># histogram plot</span>
<span class="n">n_bins</span> <span class="o">=</span> <span class="mi">100</span>

<span class="n">fig</span><span class="p">,</span> <span class="n">axn</span> <span class="o">=</span> <span class="n">plt</span><span class="o">.</span><span class="n">subplots</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="n">sharey</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="n">tight_layout</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>

<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="o">.</span><span class="n">flatten</span><span class="p">(),</span> <span class="n">bins</span><span class="o">=</span><span class="n">n_bins</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">set_title</span><span class="p">(</span><span class="s1">&#39;Data&#39;</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="o">.</span><span class="n">flatten</span><span class="p">(),</span> <span class="n">bins</span><span class="o">=</span><span class="n">n_bins</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">set_title</span><span class="p">(</span><span class="s1">&#39;Noise&#39;</span><span class="p">)</span>

<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stderr output_text">
<pre>/home/yuwu/.local/share/virtualenvs/causal-learning-project-nttkXiIi/lib/python3.7/site-packages/matplotlib/figure.py:2362: UserWarning: This figure includes Axes that are not compatible with tight_layout, so results might be incorrect.
  warnings.warn(&#34;This figure includes Axes that are not compatible &#34;
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[6]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># Also check the range of the coefficients</span>
<span class="kn">import</span> <span class="nn">seaborn</span> <span class="k">as</span> <span class="nn">sns</span>

<span class="n">sns</span><span class="o">.</span><span class="n">heatmap</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">adjM</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s1">&#39;Coefficient Values&#39;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">f</span><span class="s1">&#39;ranges from {np.min(d.adjM)} to {np.max(d.adjM)}&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>ranges from -1.1367640228168934 to 1.2841084379526215
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[7]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># Also we check about non zeros</span>
<span class="n">adj</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">adjM</span><span class="p">[</span><span class="n">d</span><span class="o">.</span><span class="n">adjM</span> <span class="o">!=</span> <span class="mi">0</span><span class="p">]</span>

<span class="n">plt</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">adj</span><span class="p">,</span> <span class="n">bins</span><span class="o">=</span><span class="n">n_bins</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s1">&#39;Coefficient Values&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

<span class="n">thresh</span> <span class="o">=</span> <span class="mf">0.1</span>
<span class="nb">print</span><span class="p">(</span><span class="n">f</span><span class="s1">&#39;The number of elements smaller than </span><span class="si">{thresh}</span><span class="s1"> is {np.where(abs(adj) &lt; thresh)[0].shape[0]},&#39;</span>
      <span class="s1">&#39; which suggest weak direct causal relations. </span><span class="se">\n</span><span class="s1">&#39;</span>
      <span class="s1">&#39;Could be hard to learn&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>The number of elements smaller than 0.1 is 149, which suggest weak direct causal relations. 
Could be hard to learn
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[8]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># If central limit theorem takes effect, the sink variables will be close to Gaussian</span>
<span class="n">sink_node</span> <span class="o">=</span> <span class="mi">97</span>

<span class="n">his_parents</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">sink_node</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">his_parents</span><span class="p">)</span>  <span class="c1"># He indeed is a sink node</span>

<span class="n">plt</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="n">sink_node</span><span class="p">],</span> <span class="n">bins</span><span class="o">=</span><span class="mi">100</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s1">&#39;Gaussianity Check for Sink Node&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;Sink node does not show very strong Gaussianity&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>{1, 4, 5, 6, 11, 13, 20, 22, 23, 24, 25, 27, 35, 38, 44, 56, 61, 63, 69, 75, 82, 84, 86, 90, 92, 94, 96}
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Sink node does not show very strong Gaussianity
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="The-Rightness-of-HSIC-Conditional-Independence">The Rightness of HSIC Conditional Independence<a class="anchor-link" href="#The-Rightness-of-HSIC-Conditional-Independence">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[9]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># import it and do general checks for the robustness of p-value</span>
<span class="kn">from</span> <span class="nn">private.algorithms</span> <span class="k">import</span> <span class="n">hsic_test_gamma</span>

<span class="c1"># example usage</span>
<span class="n">n_samples</span> <span class="o">=</span> <span class="mi">1000</span>
<span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">)</span>
<span class="n">y_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">randn</span><span class="p">(</span><span class="n">n_samples</span><span class="p">)</span>

<span class="n">ci_stat</span> <span class="o">=</span> <span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">y_data</span><span class="p">,</span> <span class="n">alpha</span><span class="o">=</span><span class="mf">0.05</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="n">ci_stat</span><span class="p">)</span>  <span class="c1"># a namedtuple</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1"> High p-value suggest strong independence&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>HSICStats(p_value=0.3454278194659821, test_stat=0.358846331358252, threshold=0.6173665692690444, sigma_x=0.21272619078961438, sigma_y=0.6703800016601291)

 High p-value suggest strong independence
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h4 id="Various-Experiments-to-validate-HSIC">Various Experiments to validate HSIC<a class="anchor-link" href="#Various-Experiments-to-validate-HSIC">&#182;</a></h4>
</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[10]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">np</span><span class="o">.</span><span class="n">set_printoptions</span><span class="p">(</span><span class="n">precision</span><span class="o">=</span><span class="mi">8</span><span class="p">)</span>

<span class="c1"># always normalize data</span>
<span class="n">x_data</span> <span class="o">=</span> <span class="n">x_data</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x_data</span><span class="p">)</span>
<span class="n">y_data</span> <span class="o">=</span> <span class="n">y_data</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">y_data</span><span class="p">)</span>

<span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">y_data</span><span class="p">,</span> <span class="n">alpha</span><span class="o">=</span><span class="mf">0.05</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[10]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>0.3454278194659821</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[11]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># for dependent data</span>
<span class="n">pvals</span> <span class="o">=</span> <span class="p">[]</span>

<span class="c1"># linear combinations</span>
<span class="n">x1</span> <span class="o">=</span> <span class="n">x_data</span> <span class="o">**</span> <span class="mi">2</span> 
<span class="n">x2</span> <span class="o">=</span> <span class="n">x_data</span> <span class="o">+</span> <span class="n">y_data</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x1</span><span class="p">),</span> <span class="n">x2</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x2</span><span class="p">))[</span><span class="mi">0</span><span class="p">])</span>

<span class="c1"># apply functions</span>
<span class="n">x1</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">x_data</span><span class="p">))</span> <span class="o">+</span> <span class="mi">2</span>
<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">tanh</span><span class="p">(</span><span class="n">x_data</span> <span class="o">**</span> <span class="mi">3</span> <span class="o">+</span> <span class="n">y_data</span><span class="p">)</span> <span class="o">+</span> <span class="mi">10</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x1</span><span class="p">),</span> <span class="n">x2</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x2</span><span class="p">))[</span><span class="mi">0</span><span class="p">])</span>

<span class="c1"># mixes</span>
<span class="n">x1</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">tanh</span><span class="p">(</span><span class="n">x_data</span>  <span class="o">+</span> <span class="n">np</span><span class="o">.</span><span class="n">exp</span><span class="p">(</span><span class="n">y_data</span><span class="p">))</span> 
<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">y_data</span> <span class="o">-</span> <span class="n">x_data</span><span class="o">**</span><span class="mi">2</span><span class="p">))</span> 
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x1</span><span class="p">),</span> <span class="n">x2</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x2</span><span class="p">))[</span><span class="mi">0</span><span class="p">])</span>

<span class="nb">print</span><span class="p">(</span><span class="n">pvals</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;Exellent!&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>[0.0, 0.0, 0.0]
Exellent!
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[12]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># multi-dimensional: vector agains array</span>
<span class="n">pvals</span> <span class="o">=</span> <span class="p">[]</span>

<span class="c1"># dependence</span>
<span class="n">x1</span> <span class="o">=</span>  <span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">x_data</span><span class="p">))</span> <span class="o">+</span> <span class="mi">2</span>
<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">tanh</span><span class="p">(</span><span class="n">x_data</span> <span class="o">**</span> <span class="mi">3</span> <span class="o">+</span> <span class="n">y_data</span><span class="p">)</span> <span class="o">+</span> <span class="mi">10</span>
<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">30</span><span class="p">),</span> <span class="n">x2</span><span class="p">[:,</span> <span class="kc">None</span><span class="p">]</span><span class="o">/</span><span class="mi">10000</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">3</span><span class="p">)))</span>

<span class="c1"># if not normalize each variable</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span><span class="p">,</span> <span class="n">x2</span><span class="p">)[</span><span class="mi">0</span><span class="p">])</span>

<span class="c1"># normalize</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x1</span><span class="p">),</span> <span class="n">x2</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x2</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">,</span> <span class="n">keepdims</span><span class="o">=</span><span class="kc">True</span><span class="p">))[</span><span class="mi">0</span><span class="p">])</span>

<span class="c1"># independence</span>
<span class="n">x1</span> <span class="o">=</span> <span class="n">x1</span>
<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">30</span><span class="p">),</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">3</span><span class="p">)))</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x1</span><span class="p">),</span> <span class="n">x2</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x2</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">,</span> <span class="n">keepdims</span><span class="o">=</span><span class="kc">True</span><span class="p">))[</span><span class="mi">0</span><span class="p">])</span>

<span class="k">def</span> <span class="nf">pvals_check</span><span class="p">(</span><span class="n">independence_signal</span><span class="p">):</span>
    <span class="n">rlist</span> <span class="o">=</span> <span class="p">[]</span>
    
    <span class="k">for</span> <span class="n">ii</span><span class="p">,</span> <span class="n">item</span> <span class="ow">in</span> <span class="nb">enumerate</span><span class="p">(</span><span class="n">independence_signal</span><span class="p">):</span>
        <span class="n">rlist</span><span class="o">.</span><span class="n">append</span><span class="p">((</span><span class="n">pvals</span><span class="p">[</span><span class="n">ii</span><span class="p">]</span> <span class="o">&gt;</span> <span class="mf">0.05</span><span class="p">)</span> <span class="o">==</span> <span class="n">item</span><span class="p">)</span>
        
    <span class="k">return</span> <span class="p">[</span> <span class="s1">&#39;</span><span class="se">\u2713</span><span class="s1">&#39;</span> <span class="k">if</span> <span class="n">boolean</span> <span class="k">else</span> <span class="s1">&#39;</span><span class="se">\u2717</span><span class="s1">&#39;</span> <span class="k">for</span> <span class="n">boolean</span> <span class="ow">in</span> <span class="n">rlist</span><span class="p">]</span>
        

<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="si">{:&lt;21}{:&lt;21}{:&lt;21}</span><span class="s1">&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="o">*</span><span class="n">pvals</span><span class="p">))</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="si">{:&lt;21}{:&lt;21}{:&lt;21}</span><span class="s1">&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="o">*</span><span class="n">pvals_check</span><span class="p">([</span><span class="kc">False</span><span class="p">,</span> <span class="kc">False</span><span class="p">,</span> <span class="kc">True</span><span class="p">])))</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;Still excellent if normalization strategy is used&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>0.9515117267420188   0.0                  0.7001945970215253   
✗                    ✓                    ✓                    
Still excellent if normalization strategy is used
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[13]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">pvals</span> <span class="o">=</span> <span class="p">[]</span>

<span class="c1"># array against array</span>
<span class="n">x1</span> <span class="o">=</span>  <span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">x_data</span><span class="p">))</span> <span class="o">+</span> <span class="mi">2</span>
<span class="n">x1</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">tanh</span><span class="p">(</span><span class="n">x1</span><span class="p">[:,</span> <span class="kc">None</span><span class="p">]</span> <span class="o">+</span> <span class="n">x2</span> <span class="o">**</span> <span class="mi">2</span><span class="p">)</span> 

<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">tanh</span><span class="p">(</span><span class="n">x_data</span> <span class="o">**</span> <span class="mi">3</span> <span class="o">+</span> <span class="n">y_data</span><span class="p">)</span> <span class="o">+</span> <span class="mi">10</span>
<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">30</span><span class="p">),</span> <span class="n">x2</span><span class="p">[:,</span> <span class="kc">None</span><span class="p">]</span><span class="o">/</span><span class="mi">10000</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">3</span><span class="p">)))</span>
<span class="n">x2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">x2</span><span class="p">))</span>

<span class="c1"># if not normalize each variable</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span><span class="p">,</span> <span class="n">x2</span><span class="p">)[</span><span class="mi">0</span><span class="p">])</span>

<span class="c1"># normalize</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x1</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">,</span> <span class="n">keepdims</span><span class="o">=</span><span class="kc">True</span><span class="p">),</span> <span class="n">x2</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x2</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">,</span> <span class="n">keepdims</span><span class="o">=</span><span class="kc">True</span><span class="p">))[</span><span class="mi">0</span><span class="p">])</span>

<span class="c1"># scale each variables</span>
<span class="n">x1</span> <span class="o">=</span> <span class="n">x1</span>
<span class="n">x2</span> <span class="o">=</span> <span class="n">x2</span> <span class="o">*</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">x2</span><span class="o">.</span><span class="n">shape</span><span class="p">[</span><span class="mi">1</span><span class="p">])[</span><span class="kc">None</span><span class="p">,</span> <span class="p">:]</span>

<span class="c1"># if not normalize each variable</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span><span class="p">,</span> <span class="n">x2</span><span class="p">)[</span><span class="mi">0</span><span class="p">])</span>

<span class="c1"># normalize</span>
<span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">x1</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x1</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">,</span> <span class="n">keepdims</span><span class="o">=</span><span class="kc">True</span><span class="p">),</span> <span class="n">x2</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">x2</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">,</span> <span class="n">keepdims</span><span class="o">=</span><span class="kc">True</span><span class="p">))[</span><span class="mi">0</span><span class="p">])</span>


<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="si">{:&lt;21}{:&lt;21}{:&lt;21}{:&lt;21}</span><span class="s1">&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="o">*</span><span class="n">pvals</span><span class="p">))</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="si">{:&lt;21}{:&lt;21}{:&lt;21}{:&lt;21}</span><span class="s1">&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="o">*</span><span class="n">pvals_check</span><span class="p">([</span><span class="kc">False</span><span class="p">,</span> <span class="kc">False</span><span class="p">,</span> <span class="kc">False</span><span class="p">,</span> <span class="kc">False</span><span class="p">])))</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;This is why we should always normalize each variabls&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>0.3925845484022694   0.0                  0.8390543147257385   0.0                  
✗                    ✓                    ✗                    ✓                    
This is why we should always normalize each variabls
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p><em>Overall, HSIC independence test does not fail</em></p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Linear-Regression-and-Independence-Test">Linear Regression and Independence Test<a class="anchor-link" href="#Linear-Regression-and-Independence-Test">&#182;</a></h3><blockquote><p>This section studies to the core concept of the additive noise model learning.</p>
</blockquote>
<p>First consider the learning of a single linear equation, with either dependent or independent parents</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[14]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># linear model with only one equation</span>
<span class="n">n_samples</span> <span class="o">=</span> <span class="mi">1000</span>
<span class="n">n_nodes</span> <span class="o">=</span> <span class="mi">8</span>

<span class="n">X</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="n">n_nodes</span><span class="p">)</span>  <span class="c1"># independent parents</span>
<span class="n">B</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_nodes</span><span class="p">,</span> <span class="mi">1</span><span class="p">)</span>  <span class="c1">#  coefficients</span>
<span class="n">nsM</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">)</span> <span class="o">/</span> <span class="mi">10</span>  <span class="c1"># noise</span>

<span class="n">y</span> <span class="o">=</span> <span class="n">X</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">B</span><span class="p">)</span> <span class="o">+</span> <span class="n">nsM</span><span class="p">[:,</span> <span class="kc">None</span><span class="p">]</span>  

<span class="c1">#print(hsic_test_gamma(X, y))</span>
<span class="nb">print</span><span class="p">(</span><span class="n">B</span><span class="o">.</span><span class="n">flatten</span><span class="p">())</span>

<span class="c1"># do regression</span>
<span class="kn">from</span> <span class="nn">scipy</span> <span class="k">import</span> <span class="n">linalg</span>

<span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">1</span><span class="p">))))</span>  <span class="c1"># fit interception</span>

<span class="c1"># solve a least square regression problem</span>
<span class="n">B_est</span> <span class="o">=</span> <span class="n">linalg</span><span class="o">.</span><span class="n">lstsq</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">y</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
<span class="n">y_res</span> <span class="o">=</span> <span class="n">y</span> <span class="o">-</span> <span class="n">x_data</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">B_est</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">y_res</span><span class="p">,</span> <span class="n">X</span><span class="p">))</span>

<span class="c1"># as a comparison</span>
<span class="nb">print</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">nsM</span><span class="p">,</span> <span class="n">X</span><span class="p">))</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>[0.72763324 0.86695861 0.30224951 0.63601479 0.11237574 0.87436707
 0.98482923 0.13384283]
HSICStats(p_value=0.505412421666289, test_stat=0.35200888128874486, threshold=0.4754215297661267, sigma_x=0.019797864683287873, sigma_y=0.7915826604353089)
HSICStats(p_value=0.08731013013660471, test_stat=0.4532261073017923, threshold=0.4764917521315981, sigma_x=0.01990020222729075, sigma_y=0.7915826604353089)
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[15]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">nsM</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[15]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>0.02912362597806112</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[16]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">X</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[16]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>array([0.28341535, 0.28308863, 0.28738781, 0.29177184, 0.28695314,
       0.2933115 , 0.27652416, 0.27685354])</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[17]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># Though overfitting</span>
<span class="k">assert</span> <span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">y_res</span> <span class="o">**</span> <span class="mi">2</span><span class="p">)</span> <span class="o">&lt;</span> <span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">((</span><span class="n">nsM</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">nsM</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">))</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>

<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">y_res</span> <span class="o">**</span> <span class="mi">2</span><span class="p">)</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">((</span><span class="n">nsM</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">nsM</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">))</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>  

<span class="c1"># it has worse prediction power over test set</span>
<span class="kn">from</span> <span class="nn">sklearn.model_selection</span> <span class="k">import</span> <span class="n">KFold</span>

<span class="n">res_list</span> <span class="o">=</span> <span class="p">[]</span>
<span class="n">actu_res_list</span> <span class="o">=</span> <span class="p">[]</span>
<span class="n">nsM</span> <span class="o">=</span> <span class="n">nsM</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">nsM</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">)</span>

<span class="n">kf</span> <span class="o">=</span> <span class="n">KFold</span><span class="p">(</span><span class="n">n_splits</span><span class="o">=</span><span class="mi">10</span><span class="p">)</span>
<span class="k">for</span> <span class="n">train_indices</span><span class="p">,</span> <span class="n">test_indices</span> <span class="ow">in</span> <span class="n">kf</span><span class="o">.</span><span class="n">split</span><span class="p">(</span><span class="n">X</span><span class="p">):</span>
    <span class="n">train_X</span> <span class="o">=</span> <span class="n">X</span><span class="p">[</span><span class="n">train_indices</span><span class="p">,</span> <span class="p">:]</span>
    <span class="n">train_y</span> <span class="o">=</span> <span class="n">y</span><span class="p">[</span><span class="n">train_indices</span><span class="p">]</span>
    
    <span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">train_X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="nb">len</span><span class="p">(</span><span class="n">train_indices</span><span class="p">),</span> <span class="mi">1</span><span class="p">))))</span>
    <span class="n">B_est</span> <span class="o">=</span> <span class="n">linalg</span><span class="o">.</span><span class="n">lstsq</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">train_y</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
    
    <span class="n">test_X</span> <span class="o">=</span> <span class="n">X</span><span class="p">[</span><span class="n">test_indices</span><span class="p">,</span> <span class="p">:]</span>
    <span class="n">test_X</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">test_X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="nb">len</span><span class="p">(</span><span class="n">test_indices</span><span class="p">),</span> <span class="mi">1</span><span class="p">))))</span>
    <span class="n">test_y</span> <span class="o">=</span> <span class="n">y</span><span class="p">[</span><span class="n">test_indices</span><span class="p">]</span>
    <span class="n">y_res</span> <span class="o">=</span> <span class="n">test_y</span> <span class="o">-</span> <span class="n">test_X</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">B_est</span><span class="p">)</span>
    <span class="n">res_list</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">y_res</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>
    
    <span class="n">actu_res_list</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">nsM</span><span class="p">[</span><span class="n">test_indices</span><span class="p">]</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>

<span class="n">diff_list</span> <span class="o">=</span> <span class="p">[</span><span class="n">i</span> <span class="o">-</span> <span class="n">j</span> <span class="k">for</span> <span class="n">i</span><span class="p">,</span> <span class="n">j</span> <span class="ow">in</span> <span class="nb">zip</span><span class="p">(</span><span class="n">res_list</span><span class="p">,</span> <span class="n">actu_res_list</span><span class="p">)]</span>
<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">min</span><span class="p">(</span><span class="n">diff_list</span><span class="p">))</span>  <span class="c1"># sometimes a better-than-orcale model is learned</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>0.9861418855285614
-0.00292537808026426
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Simple regression is very successful in this case. Notice that we are using the same distribution for noise variables and the nodes, in order to have a control over the scale of the noise (In this example, noise ratio is 1 to 10).</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[18]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># repeat the experiments above and record pvals</span>
<span class="n">pvals</span> <span class="o">=</span> <span class="p">[]</span>

<span class="k">for</span> <span class="n">ii</span> <span class="ow">in</span> <span class="n">np</span><span class="o">.</span><span class="n">arange</span><span class="p">(</span><span class="mi">100</span><span class="p">):</span>
    <span class="c1"># generate the data</span>
    <span class="n">n_samples</span> <span class="o">=</span> <span class="mi">1000</span> <span class="o">+</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">randint</span><span class="p">(</span><span class="mi">50</span><span class="p">)</span>
    <span class="n">n_nodes</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">randint</span><span class="p">(</span><span class="n">low</span><span class="o">=</span><span class="mi">1</span><span class="p">,</span> <span class="n">high</span><span class="o">=</span><span class="mi">20</span><span class="p">)</span>

    <span class="n">X</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">,</span> <span class="n">n_nodes</span><span class="p">)</span>  <span class="c1"># independent parents</span>
    <span class="n">B</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_nodes</span><span class="p">,</span> <span class="mi">1</span><span class="p">)</span>  <span class="c1">#  coefficients</span>
    <span class="n">nsM</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">random</span><span class="o">.</span><span class="n">rand</span><span class="p">(</span><span class="n">n_samples</span><span class="p">)</span> <span class="o">/</span> <span class="mi">10</span>  <span class="c1"># noise</span>

    <span class="n">y</span> <span class="o">=</span> <span class="n">X</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">B</span><span class="p">)</span> <span class="o">+</span> <span class="n">nsM</span><span class="p">[:,</span> <span class="kc">None</span><span class="p">]</span>  

    <span class="c1"># do regression</span>
    <span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">1</span><span class="p">))))</span>  <span class="c1"># fit interception</span>

    <span class="c1"># solve the least square regression problem</span>
    <span class="n">B_est</span> <span class="o">=</span> <span class="n">linalg</span><span class="o">.</span><span class="n">lstsq</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">y</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
    <span class="n">y_res</span> <span class="o">=</span> <span class="n">y</span> <span class="o">-</span> <span class="n">x_data</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">B_est</span><span class="p">)</span>
    
    <span class="c1"># save</span>
    <span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">y_res</span><span class="p">,</span> <span class="n">X</span><span class="p">)[</span><span class="mi">0</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[19]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">arange</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="n">pvals</span><span class="p">)),</span> <span class="n">pvals</span><span class="p">,</span> <span class="s1">&#39;b&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">axhline</span><span class="p">(</span><span class="mf">0.05</span><span class="p">,</span> <span class="n">color</span><span class="o">=</span><span class="s1">&#39;r&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">legend</span><span class="p">([</span><span class="s1">&#39;pvals&#39;</span><span class="p">,</span> <span class="s1">&#39;p-0.05&#39;</span><span class="p">])</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>It is robust. However, there are situations it may fail, a comprehensive experiment is in debt!</p>
<p>We will now consider the covariate case. And the data sampled from a DAG graph is used, as the nodes are almost sure to share some ancestors.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[20]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">he</span> <span class="o">=</span> <span class="n">him</span> <span class="o">=</span> <span class="mi">55</span>

<span class="n">his_parents</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">him</span><span class="p">)</span>

<span class="c1"># weights from parents</span>
<span class="nb">print</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">reverse</span><span class="p">()[</span><span class="n">him</span><span class="p">])</span>

<span class="c1"># check about the noise level, be aware that the data is normalized</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1">Noise Level&#39;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="n">him</span><span class="p">]</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>{14: {&#39;weight&#39;: -0.21503785544391008}, 16: {&#39;weight&#39;: -0.09467348721886774}, 23: {&#39;weight&#39;: 0.1297780558775285}, 25: {&#39;weight&#39;: 0.17455273363889537}, 32: {&#39;weight&#39;: -0.4595236421379918}, 35: {&#39;weight&#39;: -0.7711905623469195}, 40: {&#39;weight&#39;: -0.2859098592307792}, 45: {&#39;weight&#39;: 0.7393001964419289}, 46: {&#39;weight&#39;: 0.24980662955364583}}

Noise Level
0.006835574627266166
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Spurious parents are prevailing (very weak connections for the normalized data)</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[21]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># Anyway, do regression</span>
<span class="n">X</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="nb">list</span><span class="p">(</span><span class="n">his_parents</span><span class="p">)]</span>
<span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="n">d</span><span class="o">.</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">1</span><span class="p">))))</span>

<span class="n">y</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="n">he</span><span class="p">]</span>

<span class="c1"># least square</span>
<span class="n">weight_est</span> <span class="o">=</span> <span class="n">linalg</span><span class="o">.</span><span class="n">lstsq</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">y</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
<span class="n">y_res</span> <span class="o">=</span> <span class="n">y</span> <span class="o">-</span> <span class="n">x_data</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">weight_est</span><span class="p">)</span>

<span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">y_res</span><span class="p">,</span> <span class="n">X</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[21]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>HSICStats(p_value=0.7217293473929409, test_stat=0.3449764764605251, threshold=0.5160190081665146, sigma_x=0.04204129604480008, sigma_y=2.4394279444633225)</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Surely, this is acceptable! Let's repeat the experiments</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[22]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">ppls</span> <span class="o">=</span> <span class="nb">range</span><span class="p">(</span><span class="mi">20</span><span class="p">,</span> <span class="mi">80</span><span class="p">)</span>  <span class="c1"># traversing these nodes</span>
<span class="n">pvals</span> <span class="o">=</span> <span class="p">[]</span>
<span class="n">ppl_list</span> <span class="o">=</span> <span class="p">[]</span>

<span class="k">for</span> <span class="n">ppl</span> <span class="ow">in</span> <span class="n">ppls</span><span class="p">:</span>
    <span class="n">his_parents</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">ppl</span><span class="p">)</span>
    
    <span class="c1"># some people might not born with ....</span>
    <span class="k">if</span> <span class="n">his_parents</span><span class="p">:</span>
        <span class="n">X</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="nb">list</span><span class="p">(</span><span class="n">his_parents</span><span class="p">)]</span>
        <span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="n">d</span><span class="o">.</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">1</span><span class="p">))))</span>

        <span class="n">y</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="n">ppl</span><span class="p">]</span>

        <span class="c1"># least square</span>
        <span class="n">weight_est</span> <span class="o">=</span> <span class="n">linalg</span><span class="o">.</span><span class="n">lstsq</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">y</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
        <span class="n">y_res</span> <span class="o">=</span> <span class="n">y</span> <span class="o">-</span> <span class="n">x_data</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">weight_est</span><span class="p">)</span>

        <span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">y_res</span><span class="p">,</span> <span class="n">X</span><span class="p">)[</span><span class="mi">0</span><span class="p">])</span>
        <span class="n">ppl_list</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">ppl</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[23]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">ppl_list</span><span class="p">,</span> <span class="n">pvals</span><span class="p">,</span> <span class="s1">&#39;b&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">axhline</span><span class="p">(</span><span class="mf">0.05</span><span class="p">,</span> <span class="n">color</span><span class="o">=</span><span class="s1">&#39;r&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">legend</span><span class="p">([</span><span class="s1">&#39;pvals&#39;</span><span class="p">,</span> <span class="s1">&#39;p-0.05&#39;</span><span class="p">])</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[24]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># plot the noise level, see if there are correlations between</span>
<span class="n">ns_vals</span> <span class="o">=</span> <span class="p">[]</span>
<span class="n">data_vals</span> <span class="o">=</span> <span class="p">[]</span>

<span class="k">for</span> <span class="n">ppl</span> <span class="ow">in</span> <span class="n">ppls</span><span class="p">:</span>
    <span class="n">his_parents</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">ppl</span><span class="p">)</span>
    
    <span class="c1"># some people might not born with ....</span>
    <span class="k">if</span> <span class="n">his_parents</span><span class="p">:</span>
        <span class="n">ns_vals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="n">ppl</span><span class="p">],</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">))</span>
        <span class="n">data_vals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">std</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="n">ppl</span><span class="p">],</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">))</span>

<span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">ppl_list</span><span class="p">,</span> <span class="n">data_vals</span><span class="p">,</span> <span class="s1">&#39;r&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">ppl_list</span><span class="p">,</span> <span class="n">ns_vals</span><span class="p">,</span> <span class="s1">&#39;b&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">legend</span><span class="p">([</span><span class="s1">&#39;data_level&#39;</span><span class="p">,</span> <span class="s1">&#39;noise level&#39;</span><span class="p">])</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>A lot of failing experiments, let's have a closer look</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[25]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">fail_child</span> <span class="o">=</span> <span class="mi">50</span>

<span class="n">his_parents</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">fail_child</span><span class="p">)</span>

<span class="c1"># check about the noise level, be aware that the data is normalized</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1">Noise Level&#39;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="n">him</span><span class="p">]</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>
Noise Level
0.006835574627266166
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[26]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">X</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="nb">list</span><span class="p">(</span><span class="n">his_parents</span><span class="p">)]</span>
<span class="n">ns</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="n">fail_child</span><span class="p">]</span> 

<span class="nb">print</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">ns</span><span class="p">,</span> <span class="n">X</span><span class="p">))</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;Everything OK, he has been raised up in a regular family&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>HSICStats(p_value=0.5069087565369532, test_stat=0.35579025748886806, threshold=0.4856033537758747, sigma_x=0.04011171795507559, sigma_y=2.0334792009443823)
Everything OK, he has been raised up in a regular family
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[27]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># But ... he is annoying</span>
<span class="n">y</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="n">fail_child</span><span class="p">]</span>
<span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="n">d</span><span class="o">.</span><span class="n">n_samples</span><span class="p">,</span> <span class="mi">1</span><span class="p">))))</span>

<span class="c1"># least square</span>
<span class="n">weight_est</span> <span class="o">=</span> <span class="n">linalg</span><span class="o">.</span><span class="n">lstsq</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">y</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
<span class="n">y_res</span> <span class="o">=</span> <span class="n">y</span> <span class="o">-</span> <span class="n">x_data</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">weight_est</span><span class="p">)</span>

<span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">y_res</span><span class="p">,</span> <span class="n">X</span><span class="p">)</span>  <span class="c1"># we need to save every child</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[27]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>HSICStats(p_value=0.5330665990297682, test_stat=0.3482764323433987, threshold=0.48262634018893524, sigma_x=0.04073676404988709, sigma_y=2.0334792009443823)</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[29]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># stability check</span>
<span class="c1"># it has worse prediction power over test set</span>
<span class="kn">from</span> <span class="nn">sklearn.model_selection</span> <span class="k">import</span> <span class="n">KFold</span>

<span class="n">pvals</span> <span class="o">=</span> <span class="p">[]</span>

<span class="n">kf</span> <span class="o">=</span> <span class="n">KFold</span><span class="p">(</span><span class="n">n_splits</span><span class="o">=</span><span class="mi">100</span><span class="p">)</span>
<span class="k">for</span> <span class="n">train_indices</span><span class="p">,</span> <span class="n">test_indices</span> <span class="ow">in</span> <span class="n">kf</span><span class="o">.</span><span class="n">split</span><span class="p">(</span><span class="n">X</span><span class="p">):</span>
    <span class="n">train_X</span> <span class="o">=</span> <span class="n">X</span><span class="p">[</span><span class="n">train_indices</span><span class="p">,</span> <span class="p">:]</span>
    <span class="n">train_y</span> <span class="o">=</span> <span class="n">y</span><span class="p">[</span><span class="n">train_indices</span><span class="p">]</span>
    
    <span class="n">x_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">hstack</span><span class="p">((</span><span class="n">train_X</span><span class="p">,</span> <span class="n">np</span><span class="o">.</span><span class="n">ones</span><span class="p">((</span><span class="nb">len</span><span class="p">(</span><span class="n">train_indices</span><span class="p">),</span> <span class="mi">1</span><span class="p">))))</span>
    <span class="n">B_est</span> <span class="o">=</span> <span class="n">linalg</span><span class="o">.</span><span class="n">lstsq</span><span class="p">(</span><span class="n">x_data</span><span class="p">,</span> <span class="n">train_y</span><span class="p">)[</span><span class="mi">0</span><span class="p">]</span>
    <span class="n">y_res</span> <span class="o">=</span> <span class="n">train_y</span> <span class="o">-</span> <span class="n">x_data</span><span class="o">.</span><span class="n">dot</span><span class="p">(</span><span class="n">B_est</span><span class="p">)</span>
    
    <span class="n">pvals</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">hsic_test_gamma</span><span class="p">(</span><span class="n">y_res</span><span class="p">,</span> <span class="n">x_data</span><span class="p">)[</span><span class="mi">0</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[30]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">arange</span><span class="p">(</span><span class="nb">len</span><span class="p">(</span><span class="n">pvals</span><span class="p">)),</span> <span class="n">pvals</span><span class="p">,</span> <span class="s1">&#39;b&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">axhline</span><span class="p">(</span><span class="mf">0.05</span><span class="p">,</span> <span class="n">color</span><span class="o">=</span><span class="s1">&#39;r&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">legend</span><span class="p">([</span><span class="s1">&#39;pvals&#39;</span><span class="p">,</span> <span class="s1">&#39;p-0.05&#39;</span><span class="p">])</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s1">&#39;repeat&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[31]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># weight estimated</span>
<span class="n">B_est</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[31]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>array([ 7.58781650e-01, -5.51093104e-01,  5.63324235e-01,  2.52627004e-01,
        3.60839077e-01, -1.73960964e-01,  7.32084370e-05])</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[32]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># weights from parents</span>
<span class="nb">print</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">reverse</span><span class="p">()[</span><span class="n">him</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>{14: {&#39;weight&#39;: -0.21503785544391008}, 16: {&#39;weight&#39;: -0.09467348721886774}, 23: {&#39;weight&#39;: 0.1297780558775285}, 25: {&#39;weight&#39;: 0.17455273363889537}, 32: {&#39;weight&#39;: -0.4595236421379918}, 35: {&#39;weight&#39;: -0.7711905623469195}, 40: {&#39;weight&#39;: -0.2859098592307792}, 45: {&#39;weight&#39;: 0.7393001964419289}, 46: {&#39;weight&#39;: 0.24980662955364583}}
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="To-be-Continued-...">To be Continued ...<a class="anchor-link" href="#To-be-Continued-...">&#182;</a></h2>
</div>
</div>
</div>
    </div>
  </div>
</body>

 


</html>
