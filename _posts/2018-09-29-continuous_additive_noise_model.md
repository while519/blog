---
layout: post
title: 'Continuous Additive Noise Model Analysis'
date: 2018-09-29 06:32:13
image: '/blog/images/noise_modelling.png'
description:
category: 'Core Ideas'
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
<span class="n">noise_raio</span> <span class="o">=</span> <span class="mf">1e-1</span>
<span class="n">noise_type</span> <span class="o">=</span> <span class="s1">&#39;lingam&#39;</span>
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

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>20 is a source node
6 is a source node
4 is a source node
3 is a source node
1 is a source node
0 is a source node
</pre>
</div>
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
<pre>ranges from -11.562026011016732 to 9.237413521716094
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
<span class="n">adj</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">adjM</span><span class="p">[</span><span class="n">d</span><span class="o">.</span><span class="n">adjM</span> <span class="o">&gt;</span> <span class="mi">0</span><span class="p">]</span>

<span class="n">plt</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">adj</span><span class="p">,</span> <span class="n">bins</span><span class="o">=</span><span class="n">n_bins</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">title</span><span class="p">(</span><span class="s1">&#39;Coefficient Values&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

<span class="n">thresh</span> <span class="o">=</span> <span class="mf">0.1</span>
<span class="nb">print</span><span class="p">(</span><span class="n">f</span><span class="s1">&#39;The number of elements smaller than </span><span class="si">{thresh}</span><span class="s1"> is {np.where(adj &lt; thresh)[0].shape[0]},&#39;</span>
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
<pre>The number of elements smaller than 0.1 is 307, which suggest weak direct causal relations. 
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
<pre>HSICStats(p_value=0.21197750552360262, test_stat=0.42242441699529487, threshold=0.5962796010989069, sigma_x=0.18463941129470593, sigma_y=0.773222703521225)

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
<pre>0.21197750552360217</pre>
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
<pre>0.2711256496773311   0.0                  0.7928493441581892   
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
<pre>0.45177469989957475  0.0                  0.4257896312007029   0.0                  
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
<pre>[0.4670114  0.58350237 0.75071734 0.59713554 0.40112319 0.93660639
 0.39165324 0.39122261]
HSICStats(p_value=0.9990726429322692, test_stat=0.17890344934705585, threshold=0.4712229971668682, sigma_x=0.020492681598438558, sigma_y=0.8083175102090997)
HSICStats(p_value=0.9123336056302718, test_stat=0.2651583088470395, threshold=0.4715131528041883, sigma_x=0.02057947141532408, sigma_y=0.8083175102090997)
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
<pre>0.9913885518937853
-0.0011533720921707985
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
<div class="prompt input_prompt">In&nbsp;[16]:</div>
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
<div class="prompt input_prompt">In&nbsp;[17]:</div>
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
<div class="prompt input_prompt">In&nbsp;[18]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">he</span> <span class="o">=</span> <span class="n">him</span> <span class="o">=</span> <span class="mi">55</span>

<span class="n">his_parents</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">him</span><span class="p">)</span>

<span class="c1"># weights from parents</span>
<span class="nb">print</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">reverse</span><span class="p">()[</span><span class="n">him</span><span class="p">])</span>

<span class="c1"># check about the noise level, be aware that the data is normalized</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1">Noise Level&#39;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="n">him</span><span class="p">]</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>{14: {&#39;weight&#39;: -0.010384730288207291}, 16: {&#39;weight&#39;: -0.012455662872712653}, 23: {&#39;weight&#39;: -0.010251916245717784}, 25: {&#39;weight&#39;: -0.011963237123295055}, 32: {&#39;weight&#39;: -0.052423692168846396}, 35: {&#39;weight&#39;: -0.3477895064084714}, 40: {&#39;weight&#39;: -0.24779494405713112}, 45: {&#39;weight&#39;: -1.2035919160283843}, 46: {&#39;weight&#39;: 0.1569605758460649}}

Noise Level
5.934711686656586e-07
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
<div class="prompt input_prompt">In&nbsp;[19]:</div>
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

    <div class="prompt output_prompt">Out[19]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>HSICStats(p_value=0.13207822518817236, test_stat=0.3678112591409877, threshold=0.4061375171503323, sigma_x=2.871023706518317e-06, sigma_y=0.04209649073554509)</pre>
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
<div class="prompt input_prompt">In&nbsp;[20]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">ppls</span> <span class="o">=</span> <span class="nb">range</span><span class="p">(</span><span class="mi">30</span><span class="p">,</span> <span class="mi">80</span><span class="p">)</span>  <span class="c1"># traversing these nodes</span>
<span class="n">pvals</span> <span class="o">=</span> <span class="p">[]</span>

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
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[21]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">ppls</span><span class="p">,</span> <span class="n">pvals</span><span class="p">,</span> <span class="s1">&#39;b&#39;</span><span class="p">)</span>
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
<p>A lot of failing experiments, let's have a closer look</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[22]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">fail_child</span> <span class="o">=</span> <span class="mi">50</span>

<span class="n">his_parents</span> <span class="o">=</span> <span class="n">d</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">fail_child</span><span class="p">)</span>

<span class="c1"># check about the noise level, be aware that the data is normalized</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1">Noise Level&#39;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">d</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="n">him</span><span class="p">]</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>
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
5.934711686656586e-07
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[23]:</div>
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
<pre>HSICStats(p_value=0.9108040754340381, test_stat=0.21642234383740347, threshold=0.40861545661163856, sigma_x=2.5678305366600005e-06, sigma_y=0.034425753255307806)
Everything OK, he has been raised up in a regular family
</pre>
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

    <div class="prompt output_prompt">Out[24]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>HSICStats(p_value=2.3314683517128287e-15, test_stat=1.130468889179203, threshold=0.40638162615217294, sigma_x=3.1989469570278593e-06, sigma_y=0.034425753255307806)</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[25]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># INFORMATION</span>
<span class="k">assert</span> <span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">y_res</span> <span class="o">**</span> <span class="mi">2</span><span class="p">)</span> <span class="o">&lt;</span> <span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">((</span><span class="n">nsM</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">nsM</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">))</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>

<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">(</span><span class="n">y_res</span> <span class="o">**</span> <span class="mi">2</span><span class="p">)</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">sum</span><span class="p">((</span><span class="n">nsM</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">nsM</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">))</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>  

<span class="c1"># it has worse prediction power over test set</span>
<span class="kn">from</span> <span class="nn">sklearn.model_selection</span> <span class="k">import</span> <span class="n">cross_validate</span>
<span class="kn">from</span> <span class="nn">sklearn</span> <span class="k">import</span> <span class="n">linear_model</span>

<span class="n">lr</span> <span class="o">=</span> <span class="n">linear_model</span><span class="o">.</span><span class="n">LinearRegression</span><span class="p">(</span><span class="n">fit_intercept</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>
<span class="n">res_cv</span> <span class="o">=</span> <span class="n">cross_validate</span><span class="p">(</span><span class="n">lr</span><span class="p">,</span> <span class="n">X</span><span class="p">,</span> <span class="n">y</span><span class="p">,</span> <span class="n">scoring</span><span class="o">=</span><span class="p">(</span><span class="s1">&#39;neg_mean_squared_error&#39;</span><span class="p">,),</span> <span class="n">cv</span><span class="o">=</span><span class="mi">10</span><span class="p">)[</span><span class="s1">&#39;test_neg_mean_squared_error&#39;</span><span class="p">]</span>

<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="o">-</span><span class="n">res_cv</span><span class="p">)</span> <span class="o">/</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">((</span><span class="n">ns</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">ns</span><span class="p">,</span> <span class="n">axis</span><span class="o">=</span><span class="mi">0</span><span class="p">))</span> <span class="o">**</span> <span class="mi">2</span><span class="p">))</span>  
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>3.3686260570042593e-07
1.008779524038608
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
<div class="prompt input_prompt">In&nbsp;[27]:</div>
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
<div class="prompt input_prompt">In&nbsp;[28]:</div>
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

    <div class="prompt output_prompt">Out[28]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>array([-1.60251384e-01,  9.76267058e-02,  1.00780156e+00, -2.00431953e-02,
        2.51833890e-02, -5.70678640e-02,  9.68028360e-09])</pre>
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
<pre>{14: {&#39;weight&#39;: -0.010384730288207291}, 16: {&#39;weight&#39;: -0.012455662872712653}, 23: {&#39;weight&#39;: -0.010251916245717784}, 25: {&#39;weight&#39;: -0.011963237123295055}, 32: {&#39;weight&#39;: -0.052423692168846396}, 35: {&#39;weight&#39;: -0.3477895064084714}, 40: {&#39;weight&#39;: -0.24779494405713112}, 45: {&#39;weight&#39;: -1.2035919160283843}, 46: {&#39;weight&#39;: 0.1569605758460649}}
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
