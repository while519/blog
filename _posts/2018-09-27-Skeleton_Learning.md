---
layout: post
title: 'Skeleton Learning'
date: 2018-09-27 02:56:54
image: '/blog/images/skeleton.png'
description:
category: ''
tags:
twitter_text:
introduction:
---
<html>
<head><meta charset="utf-8" />

<title>Skeleton_Learning</title>

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
<h2 id="Evaluation-for-the-skeleton-learning">Evaluation for the skeleton learning<a class="anchor-link" href="#Evaluation-for-the-skeleton-learning">&#182;</a></h2><p>In a skeleton graph, the neighbors of one node consist of its parents and children</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[&nbsp;]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">os</span>
<span class="kn">from</span> <span class="nn">definitions</span> <span class="k">import</span> <span class="n">DATA_ROOT_DIR</span>
<span class="kn">from</span> <span class="nn">functools</span> <span class="k">import</span> <span class="n">partial</span>
<span class="kn">import</span> <span class="nn">re</span>
<span class="kn">import</span> <span class="nn">pandas</span> <span class="k">as</span> <span class="nn">pd</span>
<span class="kn">import</span> <span class="nn">seaborn</span> <span class="k">as</span> <span class="nn">sns</span>

<span class="n">sns</span><span class="o">.</span><span class="n">set</span><span class="p">(</span><span class="n">style</span><span class="o">=</span><span class="s2">&quot;ticks&quot;</span><span class="p">)</span>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># read the data files</span>
<span class="n">df_data_location</span> <span class="o">=</span> <span class="n">DATA_ROOT_DIR</span> <span class="o">+</span> <span class="s1">&#39;/dat_v1/processed/&#39;</span>

<span class="n">files_list</span> <span class="o">=</span> <span class="n">os</span><span class="o">.</span><span class="n">listdir</span><span class="p">(</span><span class="n">df_data_location</span><span class="p">)</span>

<span class="n">filter1</span> <span class="o">=</span> <span class="n">partial</span><span class="p">(</span><span class="n">re</span><span class="o">.</span><span class="n">search</span><span class="p">,</span> <span class="sa">r</span><span class="s1">&#39;_skeleton&#39;</span><span class="p">)</span>
<span class="n">files_list</span> <span class="o">=</span> <span class="nb">list</span><span class="p">(</span><span class="nb">filter</span><span class="p">(</span><span class="n">filter1</span><span class="p">,</span> <span class="n">files_list</span><span class="p">))</span>

<span class="k">for</span> <span class="n">file</span> <span class="ow">in</span> <span class="n">files_list</span><span class="p">:</span>
    <span class="nb">print</span><span class="p">(</span><span class="n">file</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>aracne_skeleton_mi-g.csv
cam-&gt;sel_skeleton_gam.csv
cam-&gt;sel_skeleton_gamboost.csv
cam-&gt;sel_skeleton_lasso.csv
cam-&gt;sel_skeleton_lm.csv
cam-&gt;sel_skeleton_lmboost.csv
chow.liu_skeleton_mi-g.csv
hiton-pc_skeleton_cor.csv
hiton-pc_skeleton_mi-sh.csv
hiton-pc_skeleton_mi.csv
hiton-pc_skeleton_zf.csv
mmpc_skeleton_cor.csv
mmpc_skeleton_mi-sh.csv
mmpc_skeleton_mi.csv
mmpc_skeleton_zf.csv
pc_skeleton.csv
proposed1_skeleton_corr.csv
</pre>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># concatinate all dataframes</span>
<span class="n">df</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">DataFrame</span><span class="p">()</span>

<span class="k">for</span> <span class="n">file_id</span> <span class="ow">in</span> <span class="n">files_list</span><span class="p">:</span>
    <span class="n">df4concatinate</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="n">df_data_location</span> <span class="o">+</span> <span class="n">file_id</span><span class="p">,</span>
                 <span class="n">sep</span><span class="o">=</span><span class="s2">&quot;,&quot;</span><span class="p">,</span> <span class="n">header</span><span class="o">=</span><span class="s1">&#39;infer&#39;</span><span class="p">)</span>
    <span class="n">df</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">concat</span><span class="p">([</span><span class="n">df</span><span class="p">,</span> <span class="n">df4concatinate</span><span class="p">])</span>

<span class="n">df</span><span class="o">.</span><span class="n">head</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stderr output_text">
<pre>/home/yuwu/Desktop/env1/lib/python3.6/site-packages/ipykernel_launcher.py:7: FutureWarning: Sorting because non-concatenation axis is not aligned. A future version
of pandas will change to not sort by default.

To accept the future behavior, pass &#39;sort=False&#39;.

To retain the current behavior and silence the warning, pass &#39;sort=True&#39;.

  import sys
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt output_prompt">Out[5]:</div>



<div class="output_html rendered_html output_subarea output_execute_result">
<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>CI/Score Type</th>
      <th>FN</th>
      <th>FP</th>
      <th>Graph Type</th>
      <th>Method</th>
      <th>TN</th>
      <th>TP</th>
      <th>error type</th>
      <th>n_nodes</th>
      <th>n_samples</th>
      <th>precision</th>
      <th>recall</th>
      <th>repid</th>
      <th>sparsity</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>mi-g</td>
      <td>4644</td>
      <td>59</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>195</td>
      <td>52</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.468468</td>
      <td>0.210526</td>
      <td>0</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>1</th>
      <td>mi-g</td>
      <td>4648</td>
      <td>55</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>187</td>
      <td>60</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.521739</td>
      <td>0.242915</td>
      <td>1</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>2</th>
      <td>mi-g</td>
      <td>4657</td>
      <td>46</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>180</td>
      <td>67</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.592920</td>
      <td>0.271255</td>
      <td>2</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>3</th>
      <td>mi-g</td>
      <td>3884</td>
      <td>76</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>954</td>
      <td>36</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.321429</td>
      <td>0.036364</td>
      <td>0</td>
      <td>0.20</td>
    </tr>
    <tr>
      <th>4</th>
      <td>mi-g</td>
      <td>3881</td>
      <td>79</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>956</td>
      <td>34</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.300885</td>
      <td>0.034343</td>
      <td>1</td>
      <td>0.20</td>
    </tr>
    <tr>
      <th>5</th>
      <td>mi-g</td>
      <td>3878</td>
      <td>82</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>960</td>
      <td>30</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.267857</td>
      <td>0.030303</td>
      <td>2</td>
      <td>0.20</td>
    </tr>
    <tr>
      <th>6</th>
      <td>mi-g</td>
      <td>972</td>
      <td>18</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>3877</td>
      <td>83</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.821782</td>
      <td>0.020960</td>
      <td>0</td>
      <td>0.80</td>
    </tr>
    <tr>
      <th>7</th>
      <td>mi-g</td>
      <td>965</td>
      <td>25</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>3885</td>
      <td>75</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.750000</td>
      <td>0.018939</td>
      <td>1</td>
      <td>0.80</td>
    </tr>
    <tr>
      <th>8</th>
      <td>mi-g</td>
      <td>979</td>
      <td>11</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>3870</td>
      <td>90</td>
      <td>Gaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.891089</td>
      <td>0.022727</td>
      <td>2</td>
      <td>0.80</td>
    </tr>
    <tr>
      <th>9</th>
      <td>mi-g</td>
      <td>4643</td>
      <td>60</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>193</td>
      <td>54</td>
      <td>MixGaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.473684</td>
      <td>0.218623</td>
      <td>0</td>
      <td>0.05</td>
    </tr>
    <tr>
      <th>10</th>
      <td>mi-g</td>
      <td>4639</td>
      <td>64</td>
      <td>skeleton</td>
      <td>aracne</td>
      <td>205</td>
      <td>42</td>
      <td>MixGaussian</td>
      <td>100</td>
      <td>1000</td>
      <td>0.396226</td>
      <td>0.170040</td>
      <td>1</td>
      <td>0.05</td>
    </tr>
  </tbody>
</table>
</div>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># pruning the dataframe</span>
<span class="n">new_df</span> <span class="o">=</span> <span class="n">df</span><span class="o">.</span><span class="n">groupby</span><span class="p">([</span><span class="s1">&#39;Method&#39;</span><span class="p">,</span> <span class="s1">&#39;CI/Score Type&#39;</span><span class="p">,</span> <span class="s1">&#39;error type&#39;</span><span class="p">,</span> <span class="s1">&#39;sparsity&#39;</span><span class="p">])</span><span class="o">.</span><span class="n">mean</span><span class="p">()</span>

<span class="n">new_df</span><span class="o">.</span><span class="n">reset_index</span><span class="p">(</span><span class="n">inplace</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>
<span class="n">new_df</span> <span class="o">=</span> <span class="n">new_df</span><span class="o">.</span><span class="n">dropna</span><span class="p">()</span><span class="o">.</span><span class="n">reset_index</span><span class="p">(</span><span class="n">drop</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>

<span class="n">new_df</span><span class="o">.</span><span class="n">drop</span><span class="p">([</span><span class="s1">&#39;n_nodes&#39;</span><span class="p">,</span> <span class="s1">&#39;n_samples&#39;</span><span class="p">,</span> <span class="s1">&#39;repid&#39;</span><span class="p">,</span> <span class="s1">&#39;TP&#39;</span><span class="p">,</span> <span class="s1">&#39;TN&#39;</span><span class="p">,</span> <span class="s1">&#39;FP&#39;</span><span class="p">,</span> <span class="s1">&#39;FN&#39;</span><span class="p">],</span> <span class="n">axis</span><span class="o">=</span><span class="mi">1</span><span class="p">,</span> <span class="n">inplace</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">new_df</span><span class="o">.</span><span class="n">head</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[17]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>&lt;bound method NDFrame.head of         Method CI/Score Type   error type  sparsity  precision    recall
0       aracne          mi-g  Exponential      0.05   0.562302  0.257760
1       aracne          mi-g  Exponential      0.20   0.280361  0.029966
2       aracne          mi-g  Exponential      0.80   0.874515  0.022306
3       aracne          mi-g     Gaussian      0.05   0.527709  0.241565
4       aracne          mi-g     Gaussian      0.20   0.296724  0.033670
5       aracne          mi-g     Gaussian      0.80   0.820957  0.020875
6       aracne          mi-g  MixGaussian      0.05   0.452050  0.201080
7       aracne          mi-g  MixGaussian      0.20   0.328534  0.037037
8       aracne          mi-g  MixGaussian      0.80   0.827327  0.020960
9     cam-&gt;sel           gam  Exponential      0.05   0.538807  0.533063
10    cam-&gt;sel           gam  Exponential      0.20   0.424202  0.451515
11    cam-&gt;sel           gam  Exponential      0.80   0.830650  0.504798
12    cam-&gt;sel           gam     Gaussian      0.05   0.527122  0.566802
13    cam-&gt;sel           gam     Gaussian      0.20   0.427725  0.457912
14    cam-&gt;sel           gam     Gaussian      0.80   0.835593  0.477104
15    cam-&gt;sel           gam  MixGaussian      0.05   0.515592  0.740891
16    cam-&gt;sel           gam  MixGaussian      0.20   0.443122  0.514141
17    cam-&gt;sel           gam  MixGaussian      0.80   0.811756  0.648316
18    cam-&gt;sel      gamboost  Exponential      0.05   0.213673  0.600540
19    cam-&gt;sel      gamboost  Exponential      0.20   0.277489  0.203030
20    cam-&gt;sel      gamboost  Exponential      0.80   0.874728  0.120370
21    cam-&gt;sel      gamboost     Gaussian      0.05   0.196021  0.558704
22    cam-&gt;sel      gamboost     Gaussian      0.20   0.284943  0.209428
23    cam-&gt;sel      gamboost     Gaussian      0.80   0.853459  0.118350
24    cam-&gt;sel      gamboost  MixGaussian      0.05   0.198883  0.561404
25    cam-&gt;sel      gamboost  MixGaussian      0.20   0.287411  0.211785
26    cam-&gt;sel      gamboost  MixGaussian      0.80   0.871937  0.126515
27    cam-&gt;sel         lasso  Exponential      0.05   0.155220  0.685560
28    cam-&gt;sel         lasso  Exponential      0.20   0.252238  0.234007
29    cam-&gt;sel         lasso  Exponential      0.80   0.830801  0.123653
..         ...           ...          ...       ...        ...       ...
107       mmpc           cor  MixGaussian      0.80   0.854167  0.004040
108       mmpc            mi  Exponential      0.05   0.848515  0.245614
109       mmpc            mi  Exponential      0.20   0.638588  0.017508
110       mmpc            mi  Exponential      0.80   0.908750  0.004672
111       mmpc            mi     Gaussian      0.05   0.816012  0.233468
112       mmpc            mi     Gaussian      0.20   0.476753  0.016498
113       mmpc            mi     Gaussian      0.80   0.916839  0.005556
114       mmpc            mi  MixGaussian      0.05   0.843201  0.232119
115       mmpc            mi  MixGaussian      0.20   0.565359  0.015825
116       mmpc            mi  MixGaussian      0.80   0.850658  0.003956
117       mmpc         mi-sh  Exponential      0.05   0.587719  0.271255
118       mmpc         mi-sh     Gaussian      0.05   0.608887  0.275304
119       mmpc            zf  Exponential      0.05   0.845186  0.248313
120       mmpc            zf  Exponential      0.20   0.629143  0.018519
121       mmpc            zf  Exponential      0.80   0.913919  0.003914
122       mmpc            zf     Gaussian      0.05   0.811042  0.230769
123       mmpc            zf     Gaussian      0.20   0.508075  0.017172
124       mmpc            zf     Gaussian      0.80   0.916667  0.005387
125       mmpc            zf  MixGaussian      0.05   0.830143  0.228070
126       mmpc            zf  MixGaussian      0.20   0.567453  0.015488
127       mmpc            zf  MixGaussian      0.80   0.904625  0.004293
128  proposed1          corr  Exponential      0.05   0.297939  0.630229
129  proposed1          corr  Exponential      0.20   0.401405  0.520202
130  proposed1          corr  Exponential      0.80   0.798256  0.939310
131  proposed1          corr     Gaussian      0.05   0.341395  0.682861
132  proposed1          corr     Gaussian      0.20   0.397936  0.526599
133  proposed1          corr     Gaussian      0.80   0.796521  0.933165
134  proposed1          corr  MixGaussian      0.05   0.352154  0.843455
135  proposed1          corr  MixGaussian      0.20   0.387752  0.646801
136  proposed1          corr  MixGaussian      0.80   0.794604  0.911953

[137 rows x 6 columns]&gt;</pre>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># see the effect of the conditional independence</span>

<span class="n">new_df1</span> <span class="o">=</span> <span class="n">new_df</span><span class="o">.</span><span class="n">groupby</span><span class="p">([</span><span class="s1">&#39;CI/Score Type&#39;</span><span class="p">])</span><span class="o">.</span><span class="n">mean</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="n">new_df1</span><span class="o">.</span><span class="n">loc</span><span class="p">[:,</span> <span class="p">[</span><span class="s1">&#39;precision&#39;</span><span class="p">,</span> <span class="s1">&#39;recall&#39;</span><span class="p">]])</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1"> corr method from the proposed algorithm has the best precision recall&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>               precision    recall
CI/Score Type                     
cor             0.777706  0.079789
corr            0.507551  0.737175
gam             0.594952  0.543838
gamboost        0.450949  0.301125
lasso           0.415926  0.340864
lm              0.613274  0.595533
lmboost         0.451710  0.297482
mi              0.774361  0.079801
mi-g            0.557470  0.093349
mi-sh           0.573807  0.139067
zf              0.787724  0.079951

 corr method from the proposed algorithm has the best precision recall
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># against different noise types</span>
<span class="n">new_df1</span> <span class="o">=</span> <span class="n">new_df</span><span class="o">.</span><span class="n">groupby</span><span class="p">([</span><span class="s1">&#39;error type&#39;</span><span class="p">])</span><span class="o">.</span><span class="n">mean</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="n">new_df1</span><span class="o">.</span><span class="n">loc</span><span class="p">[:,</span> <span class="p">[</span><span class="s1">&#39;precision&#39;</span><span class="p">,</span> <span class="s1">&#39;recall&#39;</span><span class="p">]])</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1"> no comment&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>             precision    recall
error type                      
Exponential   0.642214  0.234204
Gaussian      0.606992  0.234826
MixGaussian   0.629075  0.250900

 no comment
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># sparsity</span>
<span class="n">new_df1</span> <span class="o">=</span> <span class="n">new_df</span><span class="o">.</span><span class="n">groupby</span><span class="p">([</span><span class="s1">&#39;sparsity&#39;</span><span class="p">])</span><span class="o">.</span><span class="n">mean</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="n">new_df1</span><span class="o">.</span><span class="n">loc</span><span class="p">[:,</span> <span class="p">[</span><span class="s1">&#39;precision&#39;</span><span class="p">,</span> <span class="s1">&#39;recall&#39;</span><span class="p">]])</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;</span><span class="se">\n</span><span class="s1"> no comment&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>          precision    recall
sparsity                     
0.05       0.573482  0.380854
0.20       0.442602  0.151743
0.80       0.864468  0.180830

 no comment
</pre>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># plot all data</span>
<span class="n">g</span> <span class="o">=</span> <span class="n">sns</span><span class="o">.</span><span class="n">pairplot</span><span class="p">(</span><span class="n">df</span><span class="p">,</span> 
                 <span class="n">height</span><span class="o">=</span><span class="mi">6</span><span class="p">,</span>
                 <span class="n">hue</span><span class="o">=</span><span class="s1">&#39;CI/Score Type&#39;</span><span class="p">,</span>
                  <span class="n">x_vars</span><span class="o">=</span><span class="p">[</span><span class="s2">&quot;recall&quot;</span><span class="p">],</span>
                  <span class="n">y_vars</span><span class="o">=</span><span class="p">[</span><span class="s2">&quot;precision&quot;</span><span class="p">])</span>

<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;too many points and colors, hard to distinguish anything&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>lm maybe acceptable
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
<div class="prompt input_prompt">In&nbsp;[27]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># plot all data</span>
<span class="n">df</span> <span class="o">=</span> <span class="n">df</span><span class="p">[</span><span class="n">df</span><span class="p">[</span><span class="s1">&#39;Method&#39;</span><span class="p">]</span> <span class="o">!=</span> <span class="s1">&#39;cam-&gt;sel&#39;</span><span class="p">]</span>

<span class="n">df</span><span class="p">[</span><span class="s1">&#39;Method Long Name&#39;</span><span class="p">]</span> <span class="o">=</span> <span class="n">df</span><span class="p">[</span><span class="s2">&quot;Method&quot;</span><span class="p">]</span> <span class="o">+</span> <span class="n">df</span><span class="p">[</span><span class="s2">&quot;CI/Score Type&quot;</span><span class="p">]</span>

<span class="n">g</span> <span class="o">=</span> <span class="n">sns</span><span class="o">.</span><span class="n">pairplot</span><span class="p">(</span><span class="n">df</span><span class="p">,</span> 
                 <span class="n">height</span><span class="o">=</span><span class="mi">6</span><span class="p">,</span>
                 <span class="n">hue</span><span class="o">=</span><span class="s1">&#39;Method Long Name&#39;</span><span class="p">,</span>
                  <span class="n">x_vars</span><span class="o">=</span><span class="p">[</span><span class="s2">&quot;recall&quot;</span><span class="p">],</span>
                  <span class="n">y_vars</span><span class="o">=</span><span class="p">[</span><span class="s2">&quot;precision&quot;</span><span class="p">])</span>
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
    </div>
  </div>
</body>

 


</html>
