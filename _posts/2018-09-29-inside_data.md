---
layout: post
title: 'A Check for the Group Data'
date: 2018-09-29 06:31:38
image: '/blog/images/share_data.jpg'
description:
category: 'analysis'
tags:
- data
twitter_text:
introduction:
---
<html>
<head><meta charset="utf-8" />

<title>inside_data</title>

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

<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[1]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># load libraries</span>
<span class="kn">import</span> <span class="nn">networkx</span> <span class="k">as</span> <span class="nn">nx</span>
<span class="kn">import</span> <span class="nn">seaborn</span> <span class="k">as</span> <span class="nn">sns</span>
<span class="kn">import</span> <span class="nn">numpy</span> <span class="k">as</span> <span class="nn">np</span>
<span class="kn">import</span> <span class="nn">logging</span>
<span class="n">logging</span><span class="o">.</span><span class="n">basicConfig</span><span class="p">(</span><span class="n">level</span><span class="o">=</span><span class="n">logging</span><span class="o">.</span><span class="n">INFO</span><span class="p">)</span>

<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="kn">from</span> <span class="nn">private.classes</span> <span class="k">import</span> <span class="n">DataSet</span><span class="p">,</span> <span class="n">BNGraph</span>
<span class="kn">from</span> <span class="nn">definitions</span> <span class="k">import</span> <span class="n">DATA_ROOT_DIR</span>

<span class="n">logger</span> <span class="o">=</span> <span class="n">logging</span><span class="o">.</span><span class="n">getLogger</span><span class="p">(</span><span class="s1">&#39;matplotlib&#39;</span><span class="p">)</span>
<span class="c1"># set WARNING for Matplotlib</span>
<span class="n">logger</span><span class="o">.</span><span class="n">setLevel</span><span class="p">(</span><span class="n">logging</span><span class="o">.</span><span class="n">WARNING</span><span class="p">)</span>

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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># load the input data</span>
<span class="n">dat1</span> <span class="o">=</span> <span class="n">DataSet</span><span class="p">()</span>

<span class="n">dat1</span><span class="o">.</span><span class="n">load_input_data</span><span class="p">(</span><span class="n">path</span><span class="o">=</span><span class="n">DATA_ROOT_DIR</span> <span class="o">+</span><span class="s1">&#39;/dat_v1/raw/&#39;</span><span class="p">,</span> <span class="n">n_nodes</span><span class="o">=</span><span class="mi">100</span><span class="p">,</span> <span class="n">n_samples</span><span class="o">=</span><span class="mi">1000</span><span class="p">)</span>

<span class="n">dat1</span><span class="o">.</span><span class="n">l2_normalize</span><span class="p">()</span>
<span class="k">assert</span> <span class="n">dat1</span><span class="o">.</span><span class="n">check_data_gen</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>2018-09-29 14:27:27,041 - private.classes.dataset - INFO
Loading data:  error_type  sparsity  #nodes  #samples  repid 
               exp          0.2       100      1000       0&#39;
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># coefficent distribution after normalizing data</span>
<span class="n">sns</span><span class="o">.</span><span class="n">heatmap</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">adjM</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="n">f</span><span class="s1">&#39;data range: from {np.min(dat1.adjM)} to {np.max(dat1.adjM)}&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWUAAAD/CAYAAAApD8cqAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAADl0RVh0U29mdHdhcmUAbWF0cGxvdGxpYiB2ZXJzaW9uIDMuMC4wLCBodHRwOi8vbWF0cGxvdGxpYi5vcmcvqOYd8AAAIABJREFUeJztnXm4JVV16H/r3kvPTTeT2NJog4BKMHSwReLEbID4BPIIT42gBG0TNSIxCmq+QIzmoUGIiU+TdgRRERESgkyKAs88g0wtU0uYodtmaKShJ7r73rPeH1V1T93TdW7tmnedu3797a/rVu3atWs4u1atvQZRVQzDMAw/GGq6A4ZhGEYXG5QNwzA8wgZlwzAMj7BB2TAMwyNsUDYMw/AIG5QNwzA8wgZlwzAMjyg0KIvIUSJyn4g8ICJnltUpwzCMqYrkdR4RkWHgv4EjgZXALcA7VPXe8rpnGIYxtSgiKR8IPKCqD6nqFuBi4NhyumUYhjE1GSmw727A47G/VwKvm2yHNUcf7CSWS+xVoZ0cPTMMo/XsfPWNUrSNrWsechpzttt5z8LHKosig7ITIrIUWArwhd/Zm5N3X5C6T3wgHprWXe5sKbt31TDhpTIa29DAtGr8msWvZRLzvv3N8eXnTjoFgOE53Wd1bL27qivaL8s+aWQ5l6YZe6G7PDwj+/7x50Zy/EqLCjZDsT53Xuhfz3s6Y033IDNFBuVVwO6xvxeG6yagqsuAZeAuKRuGYZRCCz+1iwzKtwB7i8geBIPx24F3ltKrGG2RjuNseLJ7WWftMjpJzerJIlFG0nGcvJJumRJyhO/ScZw06Xjruq4ou93cbQeOPNJxnKJjUT/peNrC6QBsWbm52AHqojOFBmVVHRWRDwHXAsPAN1T1ntJ6ZhiGURAda1YoykOh97GqXgVcVVJfDMMwymWKqS9aRzR5UvTTMI28KouoX5rz5R4/r7xtTGXqnNxKUll4S6yraWqL0Q3BBO/IbHf1VaXPbYkTfSLyDeCtwFOqul9s/V8AHwTGgB+p6seLHGdKDcqGYUwxypWUvwV8CbgwWiEihxL4Z+yvqptF5EVFD1JoUBaRR4B1BG+IUVVdUrRDVVK1hFyUolJC1dLxyPzu5NTo2hZJeo60yfSrVlv+DKacWSTkiEqf2xIn+lT1JhFZ1LP6z4FzVHVzWOeposcpw3L2UFVd7PuAbBjG1EPHRp2KiCwVkVtjZanjIfYB3iQiN4vIjSLy2qJ99kZ2LGosXwaRTtFbiSl66ZfohJJF4kqTjtvk3JFEUw4T0bVKM/80T9ccOF6ouD9FRkaAHYGDgNcCl4jInlogI3XRn7cC14nIbRneLIZhGPXQGXMr+VkJXKYBvyQQnXYu0mDRQfmNqnoAcDTwQRF5c2+F+GfBhY+v7tuQjHRLU3Q2BiULtfZ7iNJdtbXTLUUZmtYtbaTzQrfIULdUftwtbk5See+Va/sDSfyiTVby82/AoQAisg8wDVhTpMFCj5yqrgr/fwq4nCByXG+dZaq6RFWXuMS9MAzDKI1Ox604ICLfA34BvEJEVorIqcA3gD1F5G6CSJnvLqK6gAI6ZRGZDQyp6rpw+S3Ap4t0pnFyvKLMHngwGSSdrY9fLrXNIZV4I1X1HX02vau0g1Bsom9X4HIRidr5rqpeU0qvDMMwSkDHtjbdhcwUiX3xELB/iX0xDMMolxZ+8nhjEjeB+HXMoVJou2nWVCI+kSbx2Nm+miVOwuV3dSPZHv/qxyepWTLh7yU+/jTtKJUWB722/k2lKHGGYRjeM4iSclIQDhHZEfg+sAh4BDhRVZ8trVcFzZCySMdmkN8s8WuuLZSO4xSVjnM/i0Pb7t803pjgtTDziMtt/BZwVM+6M4HrVXVv4Prwb8MwDL8YG3UrHpEqKfcJwnEscEi4fAFwA3BGWlun37sTAOfv+4x7DysmTSKZSpJ0necaBTeKu27nzQeYBx/DnBa95sOzYtdvY4bQmUPZjx9/Vtat6n6azlngi4gc0sIfbd4Pnl1VNXLPe4LAPC6RuEff/esfznk4wzCMHJToPFIXhSf6VFVFpO9rOR7o46nDD1YoV0ouKt2l7Z+0zkcpqwzqFCoiCTl+/auQjvve34LnmuT8UDSDdV6ic+y8kHL94vr7+PnnGAXi+5cpHW9aU7LtgWcDrgt5r8CTIrJAVVeLyAKgcAxRwzCMslFt30Rf3kH5CuDdwDnh///uslMVNsNFpbv4/pGkkyblxKWkOvWgg0jV0nm/9oseN8nONot0XKabcdq5PHLXDgAsenXXQMonS404M3cu+dNzECXlMAjHIcDOIrISOItgML4kDMjxKHBilZ00DMPIhWeWFS64WF/0C8JxeMl9aZw8esCmpePKLCZyBNQ3T0p36vS4i0vIU44WWl+YR59hGINLC9UXqXKQiHxDRJ4K44VG684WkVUisjwsx1TbTcMwjBxUH+S+dFwk5W/Rk1Y75HxVPbf0HhmpTDDDq+pbJ8dEUJrKoq2OOHmcKwxPaKGknNejzzAMw39aOCgXMYz5kIjcGao3diitR1OZDk5ODXXkBawiP52nX4uJxK+xN33u4PyMGCEtjH2R92f3FeDlwGJgNfCFfhVdE6cahmGUzoDqlLdBVZ+MlkXkq8CVk9Qdd7Nec/TBA+ddkSRN5r7HHhn0e/ac1o+P5+/R89Eapor6InStjjgeuLtfXcMwjMYYREm5j0ffISKyGFCCIPfvz3LQQQroU+b9jKTu0Y3ddUkOLTN+d6fx5RfuLC/A028fmTm+vOOiTcBEi4q/+1X3XfypV9WviqrTeqPO36lZd1RICyXlvB59X6+gL4ZhGOUyNnUCEhWi7dJxVUSSUj937+gLo0zpOE4kHceJu04XlY6LBm9qQnqt47jRNS7TmqbM/rfVvhwYTEnZMAyjtQzioCwiuxN48+1KoENepqpfzJM89bG75wPw0v3WFup0PzY8uR0As3fZ2l05QDPWTX9hFJ0LiEvH420lhE6F5gMa5ZEIp+89d3x58/3rttneT+IsTUKOB7EvqUnIKR3H92nyN9g60d7tco0CH1XVfYGDgA+KyL5Y8lTDMHynhemgUgdlVV2tqreHy+uAFcBuBMlTLwirXQAcV1UnDcMwcqHqVhwQkdNF5B4RuVtEvicilST9yvThFMbA+D3gZjIkT42oSm0RMXvXremVjNyUqT5JaqtplUVRklQWcSr/ku4jYiVlHqkcX9SGo+U8tCKyG/BhYF9V3SQilwBvJwjYVirOl05E5gA/BD6iqs/Ht6mq0keNZW7WhmE0RrnOIyPATBEZAWYBv6miy06SsohsRzAgf0dVLwtXOyVPrcTN2pdJhBKIS4ed8pICMzI/uDBR1mjDL+rM0uJj5pG6zOy0U86Qo6qrRORc4DFgE3Cdql5XSuM9uAS5FwJnkRWqel5sU5Q8FTIkTzUMw6gNx4m++Bd9WJbGmwkjYR4L7AG8BJgtIu+qossukvIbgJOAu0RkebjukzSZPLXl0nGcMqXjOCYh+03b9edFqc1SzfFA8S/6PhwBPKyqTwOIyGXA64GLinaxFxc3658D0mfzwCVPNQxjgChJfUGgtjhIRGYRqC8OB24tq/E45tFXIpH0k1f6bXtgmi3PdT9hps2r/yTK1NPWGTRreFYg84xt9DOybRb9b9HfQOmUZH2hqjeLyKXA7QS+G3cwuWSdGxuUDcMYXBxtkN2a0rMIomRWistE3+4i8jMRuTc0nD4tXN++jNYpqXR0NLtUFKVNkqFAOsgqIcT39zC0ayamze2MlyYYmtYtRYmehaqk5An3fVTRUT+lZMhmOZbnN1ApLfToc5GUIzfr20VkLnCbiPw43GYZrQ3D8JfydMq14TLRt5ogDx+quk5EIjfr/OS0My6sc005VqRH3G7n7mUZW98VlTov9O7RE1gmR//ynsuMV80D4IUVz+VrIAcvvv6B8eUnDt9r2woVW8W0KYRkvK9poTmTJMs6Q29GNu3QjNVOpffV9wclgUw/ox43a7CM1o0QDciGkYW08WkQzSh1dMyp+EQRN2unjNbmZm0YRmN01K14RG43a9eM1olu1jk/c+v6Etm6Jt/sTl39K0VlEfU1w71IVFnUSJu+RNPiJaedS5nn6qOEXJvJYZsempDcbtaW0dowDO8ZUEm5n5v1O4pktB4Ump4kyc0Auaob9bFpTTBkzNy5mHhbWxYdz8zdXCjiZn1V+d0xDMMoEc+kYBfMo68gadJxm8y4fMeuZfMUlZBrZ8wvywoXbFA2DGNg0UFUX4R5qG4Cpof1L1XVs0RkD+BiYCfgNuAkVfXJwdILUiU6TwP2R7PjWXR/0/eYNb68+eGNJfeoXum4ziD0RoW0UH3hMgxsBg5T1f0JbJKPEpGDgM8RuFnvBTwLnFpdNw3DMHIwiNYXYf699eGf24VFgcOAd4brLwDOJnAo8ZYoRKJM685bxnXCI9uHKZSer08kk5gUVtuMtAN5+rJuedcPfVoLnQ69l4gb+qqK6/Kj4/r0rE5KCycfnG6tiAyH5nBPAT8GHgTWqo7fmpUUjYdhGIZRNi2UlJ0GZVUdU9XFwELgQOCVrgcwN2vDMJpCRztOxScyWV+o6loR+Rnw+8B8ERkJpeWFwKo++5SWzbpolLjxzA59MjzUqbaIaM1noANNZBspE+/vRUMTwRN+b227xS20vnBxs95FROaHyzOBI4EVwM+AE8Jqls3aMAz/aKH6wkVSXgBcICLDBIP4Jap6pYjcC1wsIp8hyFf19Qr7CbRHZ//8yunjy9sv3NxgT/oTmXx5P7lVI215vowMeDbguuBifXEnQQzl3vUPEeiXDcMwvERLzNFXF+bRVwG+SsdxTEJultENXbPMkdntGzhag2eTeC7YoGwYxsCig6i+mMTN+lvAwUAUcf09qro8uRXDMOKYdFwTgzgo03WzXh9mIPm5iFwdbvuYql5aXfcMwzAK0D7tRSE363Lp50KasL5oCMfaUtEYXhHPUp435VddxHX+SdmuqyApAzf0z8LdBtqovsjlZq2qUTbrz4bZrM8XkemTNGEYhlE/LbRTzuVmLSL7AZ8gcLd+LbAjcEbSvs5u1kOxkrJeO92ShaEZQdHRbomzdd0QW9d5FD+Tbp+HZtR83Gl+W2jkuSZb14yOlzSGZ8l4aYLOlm5JYs2Ds8dLGtNeOoNpL02/WPHflYx0SxXIULdUea11VJ2KT2QagVR1LYEn31GquloDNgPfpI/NsqouU9Ulqrrk5N0XJFUxDMOoho5jcUBEjhKR+0TkARE5s5L+kt/N+tdRNusw2/VxWDZrwzA8QzvqVNIIPZr/D3A0sC9B4uh9q+hzETfrn4rILgRJVZcDf1ZFB8uk88Lk27eb699UbVqfKzuu5zlkqr4uY32CVvnCzi/f4Fx3y2MNPUQh0182c3x586ObgImqx0qvdXk/6QOBB0JPZkTkYuBY4N7SjhBSxM36sLI7YxiGUSYlxjPZDXg89vdK4HWltR6jcWOXPIFxtjzX1bq0PVxk24lPtjUl1TfN8Jxggmpsvd/SdVNE0nETuJq8ishSYGls1bIw7HDtND4oG4ZhVIajzBaP+96HVcDusb/7xpAvivOgHOqUbwVWqepby8pmncfsyqTjdIomBHClTum4qNNQVTQhIft6LXyjxGtzC7B3OO6tAt5ON0dpqWQxiTuNILh9hGWzNgzDa+K215OV1HaCDEsfAq4lGAcvUdV7quizq0ffQuAPga+FfwtBNuso7sUFBGZxBoGOMSpN4fqw+dBXV/I6DQ0iVVyLfk4ccUeWtjwrEWUNygCqepWq7qOqL1fVz1bVZ1f1xT8CHwfmhn/vhGWzNgzDd7Q9L5AIF+eRtwJPqepteQ5QNJt11e6eVTC2XseL77Spr5Hrt8/u321mbKOOlzjx696WZyWiMypOxSdchro3AG8TkWOAGcD2wBdpIJu1YRhGFtqo6kqVlFX1E6q6UFUXEcw4/lRV/4Sasln3Cx5UFm2UxKsiHiTGR9KC9KTh+/kZ5aMqTsUnijyeZwB/KSIPEOiYK89mbRiGkYUyJ/rqIpN8qKo3ADeEy5bN2jAMr9GOX1KwC418tPtk+N7KzCP9srQUpOl7UTWDfn7GtmgLZ7FMk2oYxsDSGW3fBIJzj8OUUHeIyJXh398SkYdFZHlYFru25asupzX0y9JiGB7SpIOSqlvxiSyScuRmvX1snWWzNgzDW9qoU87lZm0YhuFKkw5Kg2wSF7lZ9yocLJu1YRje0kaTuCJu1uVms54KZEjSWAVpzhNfu3f38RIxtknGSy4yJqf0EV+ci3I7vzhe/6qca5p02hnrDDkVn3DpTeRm/QhB/OTDROQiy2ZtGIbvaEecik+45Oj7BIFUjIgcAvyVqr5LRBao6mrLZp2BHC/kuIRW1KY67TPtvfs+vs264ZkF9YAVCSHRtahDgvXFlj33Z7bjPajqMz6t3Sr9FnyzrHChyCP9nbZlszYMY2rhmxTsQhE3a8tm7UA8zGSeQDpNS2lb13XFmO3m+qMY9kHHa5RDlRNtHc8sK1ywR9swjIHFN3M3F2xQNgxjYBkbVPVFaHmxDhgDRlV1iYjsCHwfWAQ8Apyoqs9O1s7cf/hrANZ97DO5O9w28qgsmgrYlHTceOZw3+w5If+1KnMCdSriU1CxyWijpJxlbvxQVV2sqkvCv88ErlfVvYHrw78NwzC8YdBjX/RyLHBIuHwBwQRgogNJRCQh55ZuhrLv00aaOr+k4/bry+iGQAIZmT35E121RDVByo0dK5KE48ePf7UMTetKUJ2OVta/eB/S2p/Yv2r6Uhbxvvo86drGiT5XSVmB60TkNhFZGq7bVVUjF70ngF2TdjSPPsMwmqKNsS9c33FvVNVVIvIi4Mci8uv4RlVVEUkUmZISp6Yak/fR9w26hNw0aVJtJB1DuoQ8WTsTjllQtzth/9ixorb69TIeHKdqSc/1uR2ekX2fpvBZOo7TRknZ6dKq6qrw/6dE5HICl+onY159C4CnKuynYRhGZsYGcVAWkdnAkKquC5ffAnwauIIgi/U5lJDNOo8UVjZR0J0srsVFnUOqYiiUujovuO+TJp1VcV+ySMeb1w6PL0+fPxbsn0GinHnAi8aXN93elSF8kUr79WP96uAhm7OgmQes6LxAk5YavqkmXHCRlHcFLg9CXDACfFdVrxGRW4BLRORU4FHgxOq6aRiGkR1P3reZcAlI9BCwf8L6Z4DDS+tICVLYpjXB6cyY3xW/sui+XCXkql2Py5AsskjIbSGSjl1IuoZx6bgKZr62GwVx0y3ZJ7X73fc0CXl8v/j+JdpeF5Vum/wSUeqRlMN0eP8CzABGgQ+o6i/ztOVXIFHDKBlfVBNGM3TUrZTA54G/VdXFwN+Ef+eiiEff2cD7gKfDap9U1avydsQwDKNsxuqTO5Vu/tJ5wG/yNpTFsOVQVV3Ts+58VT0378HLZubOk3+zpRrxR+tT7mPV0dLySndlTqi03VGniX7nUVnEydvn8f1aeq+qpMZL8hHgWhE5l2AEeX3ehlpibWgYhpEdV51y6BS3NLZqWehjEa/zE+DFCbt/imB+7XRV/aGInAh8HTgiT59dB+XIo0+Bf4119kMicjJwK/DRtIBETZMqiXioYR+KORSkTd6VKR22VUKugjUPzgZg55dvaLgnRlZcH+O4k9skdfoOsiJyIXBa+OcPgK85HnobXIehN6rqAcDRwAdF5M3AV4CXA4uB1cAX+nTW3KwNw2iEjmMpgd8AB4fLhwH3520ot0efqt4UbReRrwJX9tl3GzfrqUoePW2dpm3Dc7qfenE35IhPr+h+uf3Nq56opU8+YBJye6nLJI7A6OGLIjICvMBEVUgmcnv0RS7WYbXjscSphmF4xqjUMyir6s+B15TRVhGPvm+HBtNKEOT+/WV0qA5Gtu9qbUafr095miQhZ7GYiPqdt89p+ukk6TjOVJKO6yTtvkbu5TN27jrP1BmYP0vQqOFZwSA4tjE54FPdCQXa+GlexKPvpEp6ZBiGURJtnK/20iRuzl931THrPzPphGgu6pSO08iiXy7a7zz66X6S/G8fmQnAjos2FeqTkX5fx4MvVSRlpgWvynLcuITsun+VAYs6NakvysTLQdkwDKMMBlJ9ASAi8wns7vYjOM8/Be4jY+JUV8ZuuLaMZryjTC+5JN1dFfTr64Ijg0dnc27Dn2rJZN8dSnI+BW6vM9xlZ2PsD0cj2TL1xFWenz/fxO642il/EbhGVV9JoF9egSVObYxoQDbSGcRoeZXhofNUUUZFnIpPpN4GEZkHvJnAbRBV3aKqawkSp14QVrsAOK6qThqGYeRBHYtPuHyw7UEQCe6bIrI/cBuBO6FT4tQ8bPr5o2U15RVlfaZVrbJwYfP965ruwqRkkZB9UltElOoyn6aeySEh123alpeOX0KwEy63YwQ4APiKqv4esIEeVYWq9n3hmJu1YRhNUaObdWm4yAgrgZWqenP496UEg7JT4tQ8btYr7503vrxw3+dcdjH6UNWE0cj80OFhbXKjkvC6r3rCasIxo0nV0eTtWfpS1gRtluOXGoY1x5dA2vHj+SjjeSp9o/lvyuykSsqq+gTwuIi8Ilx1OHAv3cSpUELiVMMwjLIZFbfiE67v0L8AviMi04CHgFMIBvRKEqfGpeMmM+G64Hv/svQpypoM6Xnh+knIkx23ims1beH08eUtKzd3NyS0XziIfAaSznVoVnLApyRJvOlnKe34eaXjukw5Izz8SabiGiVuObAkYVNpiVMNwzDKRj2Tgl3wcN55Ik1LDGkk9S8uRXQmFzhLNcLPctwk0qTjolRxLydIxx6RdK79Aj75/oyXSd2WQ228tN4PyoZhGHlp46DsZKEoIvNF5FIR+bWIrBCR3xeRs0VklYgsD8sxVXe2LXS2dEsaOtot+Q7WLVmOazRL4ftuODGoziPQdbM+IZzsmwX8AZ5lszYMw4jjm2WFCy6ZRyI36/dA4GYNbBHP/MWnLAMYr2Aq4KMX4SAyqOqLuJv1HSLytTAtFATZrO8UkW+IyA7VddMwDCM7bVRfFHGztmzWhmF4TUfcik/kdrNW1SejCj5nsx7b1L3iwzPLObzvDiNtwNUN29dr3WTeuV7yuIH71P84oxvKHSE9emScye1mHca7iLBs1oZheEcb1RdF3Kz/qaps1pmko/j2hFdMWdJxHJ8ktjopU2qN9k+SmCccMy7R5TD169fnoueSJF0+93g33cm83beNHZp2zLx9Gq+b8luYEETIvfl8pPSlHyOzy/29jno35KZTxM3aslkbhuE17RuSPfDoSwrAnRoMJUP+tTYRSTK+hkKs4gshrc2ijjD92s9yLtNfsT0Am+97ftJ6SdJxlmMWvr4pEmmtz5Unpppt/KhtfFA2DMOoCt8sK1xwcR55BUHW6og9gb8BLqSEbNZ5jOgHSTqO46uEnESZmbl9J01C9oWmLFV8tZAB6LRQgeFifXGfqi5W1cXAa4CNwOVYNmvDMDxnzLH4RFbNz+HAg6r6KDVls64iyM7QtG6pAhnqljjDs2Q8yHdbmP6ymeMljnaqlYqqvD+DSnRP6pZWmzquCx3UqRRFRP5YRO4RkY6ILOnZ9rsi8otw+10iMqNfO5Bdp/x24HvhcmXZrA3DMMqgRuXF3cAfAf8aXykiI8BFwEmq+isR2QnYOllDzpJyaKP8NuAHvduqzGZdplQbSa86Wk2Iy7h0nCQ5jG3U2oN8F2Xzo5vGS530vT8+ph+uGl/TLreAurJZq+oKVb0vYdNbgDtV9VdhvWdUdVKNSRb1xdHA7TH36icjr760bNaqukRVl5y8+4KkKrVT9WeWj59xA8FUv66emJm1ibrUF5OwD6Aicq2I3C4iH0/bIcttfgdd1QVYNmvDMDzH1c06/kUflqW9bYnIT0Tk7oRy7CRdGAHeCPxJ+P/xIjJpblMnnXIYqvNIJrpSn0NF2ayrIo8EmyXvnWv7VQRJ6ktOd9eyyGsulWhyV3H/vTXtqvi8I2esQTQ1HXOUguOB0yapc0SOLqwEblLVNQAichVB1M3r++3g6ma9AdipZ90zWDZrwzA8xoN367XAx0VkFrAFOBg4f7IdzKMvhSry3VUuHcdpWA+ZV+JsQlL1SjqukUGUkCPqch4RkeOBfwZ2AX4kIstV9Q9U9VkROQ+4hUBTcpWq/miytmxQNgxjYKlL/FHVywmc6pK2XURgFudEETfr+cD7CFJFAXxSVa9yPfAgEjmGtM3szUigYl12PPSn5eurjja6Wac+DqHt3WIAERkGVhG8EU7BslkbhuExrhN9PpH1HT3uZj0o2azjbs+RhJu0zoWkumXO6DcRBMhbi4QSiSxsJswfVG3p4bl0PCj3vY1dz/roxd2swbJZG4bhMer4zyeKuFm3Lpu1jGwroUSuz3EpN2kdwPAcYXjOJF8ICT6bZQZrKdqOjnZL1mO6HDcKuBT/0hia0S1ZyLNPXr/ZNJf71PteE/0CXVVB3ufWt0BSdblZl0mWj6gJbtZtyWZtGMbUpaPtG3Jyu1lbNmvDMHxnYLNZ93Gz/nxV2az7EX1CdmJqhUxZfzN8ticxtj7h9sUzJCdczTInSaL2855Hlskl10nF+Kd00kRnXseEXPtV9FmfeN8LkmciLV5vZMfh8eXR3/oTpr0KZ6sijHmnnEiniJu1ZbM2DMNr2jckt8yjrwqJpTA1mg4VlfQzHSuH9Ga4U/S6+SQd+8xAOo8YhmG0Fd/M3Vxw0sKJyOlhfqm7ReR7IjJDRPYQkZtF5AER+X5oMmcYhuENbTSJSx2URWQ34MPAElXdDxgmcCL5HIGb9V7As8CpVXbUMAwjK6rqVHzCdb56BJgZJgGcReAschhwabg9UzbrvEbwdRnOT1kaEB3yOLS4EM/HmNa+PVfZiRyxsrqL132tR1Gn4hOpl0dVVwHnAo8RDMbPAbcBa1XHH/WVwG5VddIwDCMPA+lmHca0OBbYA3gJMBs4yvUAcTfri/fchdl//j9yu3CW5a7cFK5SQp3utBMYipW6DllitvI40bPiItG1/bkqSp5nLe8XTt3X2oPEqZlx+fg4AnhYVZ8GEJHLgDcA80VkJJTU2oR6AAAQRElEQVSWFxKE9NyGuJv1pivO9evsDcMYaHzTF7vgMig/BhwU5pjaRBC+81bgZ8AJwMU4ZrPe8JX/yN/TAcBsf7dlKp2rrwzyPWjjqbnolG8mmNC7Hbgr3GcZcAbwlyLyAIG339cr7KdhGEZmxug4FZ9wdbM+CzirZ/VDwIGl98gwDKMkBlV9YRiG0Up8m8RzwQZlwzAGFt/M3VxwDd15OvBegjCddxEkTf0X4GACu2WA96jq8sna2fh0cLhZu6TY0WTIJBzPThGFe4ybP1URxCcenrCKLAu+5keLn2vhEI3RecXOter7VjXT9547vrz5/nX1HTi8lhOuX43PTdJzUeqzUoA2BrlPHZRjbtb7quomEbmEwM0a4GOqemn/vQ3DMJqjfUOyu/oicrPeSuBm/Zs8B5v36iBI/dYnUipmMGSPS1Rbngt2nL5DMTEhTVIdqljp45N0HKdUiSe8xmlOC75Kz0lfaLphc0OdCY+f8tzEr1+Z2bSTngtfgt2PemZZ4UIuN2tVvS7c/Nkwm/X5IjK9wn4ahmFkpo0BiVzUF3E367XAD0TkXcAngCeAaXTtlj+dsP9SYCnAF35nb07efUFvlW2YddSrxpc3XrNi0rrxt/+0ecFbsaikmbp/Tjdk1xRLPlG1fntCmwnt95OOo35tfrbbwej+9yXDXEUaSemqtvzGE/GwD2VKx22hjdYXLo/muJu1qm4FLgNer6qrNWAz8E362Cyr6jJVXaKqS1wGZMMwjLKoKyCRiPyDiPw61BxcLiLze7a/VETWi8hfpbWV281aRBao6moREYKwnaVls06TjttKmyTkCF/7HPUrVTqO0/LwnCPzuycwura+GzOyfey4z3v6QPShRtXEj4FPqOqoiHyOQJNwRmz7ecDVLg2lDsqqerOIRG7Wo8AdBOqKq0VkF0CA5cCfZToFwzCMiqlLfRGbZwP4L4K4QACIyHHAw8AGl7aKuFkf5rLvlKdEPWZhKu5LVbP7TROdS17rj63rgou93dxiUmZcOk671mXOBVQtHVc5bzHWzKfenwLfBxCROQQS85FAquoCzKPPMIwBxlVfHDdICFkWhh2O1/kJ8OKE3T+lqv8e1vkUgUbhO+G2swnS5q0PNL3puHr0nQa8j0BV8VVV/UcR2ZHgbbAIeAQ4UVWfdTqqYRhGDbh69MXjvk9S54jJtovIe4C3AodrV5n9OuAEEfk8MB/oiMgLqvqlfu24mMTtRzAgHwhsAa4RkSsJ3irXq+o5InImcCYTFdsGVK6ySHJi6F+50q4MlMoiTlGnlaJqiyTSrvXQjK5UNraxWbOw4Tmxvqzfti9Vahjqin0hIkcBHwcOVtWN48dXfVOsztnA+skGZHD7mb4KuFlVN4ZZRm4E/ojAdvmCsE6mxKmGYRh10FF1KiXwJWAu8GMRWS4i/5K3IRfZ5m4Cz72dCEzijiHIPLKrqq4O6zwB7Jq3E0Z+UqVjY0rStHQcJ0k6rivoVl0Tfaq6l0Ods13acnGzXgF8DrgOuIbA/G2sp47SJ/ZHPHHqhY+vTqpiGIZRCW3MZu1qEvd1wnRPIvL3wErgyZgDyQLgqT77jivQ1xx9sNPZz3zzovHlTTc9Mr7ctJtyXccv07SsqTCgTd+rPPgaMrUJanWvr5A2hu50mvoRkReF/7+UQJ/8XeAKgoSp4Jg41TAMo04GVlIGfhjqlLcCH1TVtSJyDnCJiJwKPAqcmNbI0w/MBmCXvSZ3bIlLx3Gall7qOn48QHjlwZWytJVBgk87bnSORUM8liHR+SLV5z2Xos4tSaQdvy1fFepz5/rgqr54U8K6ZwjiYBiGYXhJG6PE1WpZmiYh18XwrGQbzqRUNk2Q++WetF9aEPkMEk/VgdHzkOVa3X57N0rhAQd0J52jNjLZfFdAlnPZvHZ4fHn6/LFJalZDWwTQhtysCzGg5v6GYRi1RokrDdeJvtNE5G4RuUdEPhKuO1tEVoWG0stF5Jhqu2oYhpGNGp1HSqOImzUEgTbOLbtTUVQtyOeimhb/tZ9hfdNqi8LkcKPO+8k8MiP4ZB6ekVy36cmzpNx/cZVFUsS8oiqL2e94/fjyhu/9v+wNZIjil6SyaEr90lScZxd8s6xwwUV9Me5mDSAikZu1YRiG17RRfVHEzfoZ4EMicnL490fLihJXOO5sy7IjtIUsE0pNz69UlWdxMnJJx3EqyBtYB75Jx3HaaH1RxM36K8DLgcUEWa6/kLS/uVkbhtEUY52OU/EJySreR27Wqvrl2LpFwJWqut9k+0Zu1nHTqjIN3qsgT36yoob1017SVW77niG5KnzSSTct9VdN9LyV8ayVed92vvpGt6jwk7DDnL2cBrhn1z9Q+Fhl4Rrk/kWq+lTMzfqgKO5FWOV4SkycahiGUQZtVF8UcbP+ZxFZTBAd7hHg/a4H9V06jpNHP11USpiq0nGcpqXTpo9fJ2U+b75dt0Gd6OvnZn1S+d0xDMMoD99skF0wjz7DSGAsZsnQzxZ7qhC33y/LPb4uzM3aMAzDIwZWfVEWkcdRVfaUVYQwTDzOFJqZr4qmrSvSSJWOE7zvmpYo8waXSvu95DkXX34jg+rRZxiG0UpMUjYMw/CINg7KqGqtBVjaZN2mj9+mvjZ9/Db1tenjt6mvWdqciqX+A8KtTdZt+vht6mvTx29TX5s+fpv6mqXNqVgqCMtiGIZh5MUGZcMwDI9oYlBe1nDdpo+fpe5UP36WulP9+Fnqtun4U47MUeIMwzCM6jD1hWEYhkfYoGwYhuERlTuPiMgrgWOB3cJVq4ArNMhoMtl+F6rqyQnrpwFvB36jqj8RkXcCrwdWAMtUdWupJ2AYhlEjleqUReQM4B3AxcDKcPVCgkH1YlU9J6x3Re+uwKHATwFU9W2xNr9D8DKZBawF5gCXAYcTnM+7qzqfMogSBjTdj0FDRHZS1WdKbrPxe1XFeTXNIJ5TqVRpBA38N7BdwvppwP2xv28HLgIOAQ4O/18dLh/cs++d4f8jwJPAcPi3RNtK7P9OfdbPA84Bfg38liCJ7Ipw3fxYvR17yk4ECQF2AHbsaXMJ8LPwOuwO/Bh4DrgF+L2eusMESQX+DnhDz7a/ji1/CNg5XN4LuIngRXYz8Oqe/UbCNq8B7gzL1cCfJd3DpHudsG5P4BvAZwhenl8lyFDzA2BRT93tgf8NfBt4Z8+2L/f8fU7svJYADwEPAI8mPC9N36vSz6uKe5XlflV1r6yE16zSxoMfwssS1r8MuC/29xBwevhwLw7XPdSnzbsJBvUdgHXRDwaYAaxIqO/0AGX8oV8LnAG8OLbuxeG662LrOsDDPWVr+P9DPW3+Ejia4MviceCEcP3hwC966n4N+C7wEeA24LzYtttjy/fEln8EHB8uHwL8Z0+b3yNIhnsQwdfMwnD5K8D3e+quA54Py7qwjEXrY/VuAv4cODO8bx8lGMROBX7a0+YPw3twHHBF+Pf03nMK/74rtvwz4LXh8j70eIt5cK9KP68q7lWW+1XVvbISXqdKG4ejCAa2qwlsE5cRvN0fAI5KqL+Q4K38JeCxPm2eTjBgPgp8GLie4I1+F3BWQn2nByjjD/2+Sc45/rL5aHi+r46te7jPfnfElh/rty38+87Y8kh4XS8Dpve0E+/LLf3aCP9OlJ6StgH/BFwI7DrZeWU8p+U9f38K+E8CibX3h74CGAmX/6tn2109fzd9r0o/ryruVZbzqupeWQmvS+UHCKTgg4D/GZaDCFUOk+zzh8DfT7L9JcBLwuX5wAnAgX3qOj1AGX/o1wEf73nQdyWQvn7SUzd60ZwHzKX/F8AvgLcAf0zwwjkuXH8w274Ufp2w/1nhecXVQp8FvkXwWfpJAsn6ZcApBNnH4/v/V3jsoZ5797+AmxOO9xoCnf+Hw3rbnBeBFL8P8FpgDbAkXL8X274UVsSPHa57D3AP8GjP+r8I78FhwNnAF8Pr9LfAtz27V6WfVxX3qud+Hdhzv/ZmoiBQyb2yEl6zpjtQ+Qk6PkAZf+g7AJ8jUM88S6CrXBGu27FPP94W/pie6LN9f4JP7auBV4bHXxv28/U9dS8i+UvjvcDWhHO9OfyRrQPuBf4emNdTbxHwfeBpgrmA+4GnwnV79OnzUPhD/78E1jC92w8H7guvzRsJvlKido/rqft54IiENo4i9qKJrT8k7NsdBF9JVwFL6dGp1nivng3vVa+OP+t5HZp2XrF79VR4r/676L1yuF/HlnCvbo+d0/t775WV8Ho13YHKTzDDAzTJD30kYf9XAkcAc3rbTah3OMHEyUxgv6R64bpXRXUnazNcdyBdFcu+wF8Cx6TU+x2Cz/Rt6vXss1NYLnK8xguAZxzrXknPS7JPvTeG5/QWh7pvCs9rm7rA6whfQAQWO58O+/A5Yi+msN72sXqfB37SWy+hzZn92gy3fxjY3fHaONUlmFN5N3BkeJ/+BPgy8MHegS6se3L0GwBOIlD/faBP3XfH6k7W7p7AXxG8kM4jmGTcvk9/9wQ+RqBKOX+yulZ0artZi8gpqvrNrPVE5MMED+oKYDFwmqr+e7jtdlU9IEu9WN0PEEh0aXXPIphoGiGYHH0dgR78SOBaVf1sn3oHAjf01gvr9polQvDVkGSW6FQ3Y5u/VNUDw+X3hdftcgI1wX9oaD6ZUPe9Yd1/61P3HmB/VR0VkWXABgIJ8PBw/R9lqZej7nPh9gcJJuh+oKpPJ1yX3rrfDeuuSagXmYXOJLD6mB1eq23MQhNMSF3qTtpu+Ky+lWBi8BgCIWYtcDzwAVW9IdbmaQTqyNS6RkjTb4UmC30mE9PqEUjRc8LlRcCtBIMoTJwQcaqXs+4wwQ/teboS3kwm6v6c6oXrspglOtUl+AG6thm/brcAu4TLs9lWp5+l7op4v3u2Lc9aL0fdOwhUB28Bvk6gHrqGQCKdm6cuGcxCq6gbPVfh8izghnD5pfR5Vl3qWgnKwLtZi8idfcpdBBM+meqFDKnqegBVfYRgsDlaRM4jeICz1stad1RVx1R1I/Cgqj4f7reJiSk9XetBYAZ4G8FE6HMaSDCbVPVGVb0xZ93XZGhzSER2EJGdCKSyp8O+bgB6U3tmqXu3iJwSLv9KRJYAiMg+BCZvWetlrauq2lHV61T1VIJJ6i8TqM8eyll3KPRsnUsw0M0L108Htku4VlXUHYltmxN2/rGEelnrGk2/FaouBG/8xQRWB/GyiNiEh2u9sO5PCe2pY+tGCEyPxrLWy1H3ZmBWuByfgZ/HRIsSp3o9baeaJWat61KPwFHjIUK7YGBBuH4O20qfWerOI7BAeTC8HlvDfW4kUDVkqpejbl9pMLo3WeuSwSy0irrAaQQOK18lULedEq7fBbipp03nulbCa9Z0Byo/weAz8I19tn03a73w74XEnBF6tr0ha70cdaf3qbczE+1sner1qTOpWWKeulnajO0ziz4WBVnqEjgR7U8gve86SRtO9VzrAvtkONcsdbOYhZZel2DS+ATglQ59da5rZYpP9BmGYfjGwOuUDcMw2oQNyoZhGB5hg7JhGIZH2KBsGIbhETYoG4ZheMT/B7tKmULv3rfsAAAAAElFTkSuQmCC
"
>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>data range: from -29.775010730900686 to 18.18007611576003
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># visualize the adjacency information</span>
<span class="n">p</span> <span class="o">=</span> <span class="nb">list</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">true_permutation</span><span class="p">)</span>

<span class="n">adjM_permu</span> <span class="o">=</span> <span class="n">dat1</span><span class="o">.</span><span class="n">adjM</span><span class="p">[</span><span class="n">p</span><span class="p">,</span> <span class="p">:]</span>
<span class="n">adjM_permu</span> <span class="o">=</span> <span class="n">adjM_permu</span><span class="p">[:,</span> <span class="n">p</span><span class="p">]</span>

<span class="n">np</span><span class="o">.</span><span class="n">fill_diagonal</span><span class="p">(</span><span class="n">adjM_permu</span><span class="p">,</span> <span class="mi">0</span><span class="p">)</span>

<span class="n">sns</span><span class="o">.</span><span class="n">heatmap</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">asarray</span><span class="p">(</span><span class="n">adjM_permu</span><span class="p">,</span> <span class="n">dtype</span><span class="o">=</span><span class="nb">bool</span><span class="p">))</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>
<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;CONCLUSION: Data can be permuted into an upper triangluar matrix&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWAAAAD/CAYAAADPJgxuAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAADl0RVh0U29mdHdhcmUAbWF0cGxvdGxpYiB2ZXJzaW9uIDMuMC4wLCBodHRwOi8vbWF0cGxvdGxpYi5vcmcvqOYd8AAAIABJREFUeJztnXm0JVV1/z/f7gZkUEYlbYMCAaP8yAK1BQwmIoMB4gIHQsDEoBLRKIMxMaDJEoKSNEYl+BP11yiCoIJM2iHIEAZJsmLbzSACDQgtU9s0gw0iovD67d8fdZ4Ut++9darq1K267+1Pr1qvhl3nnLr1+rx999mDzAzHcRxn9MxqewCO4zgzFZ+AHcdxWsInYMdxnJbwCdhxHKclfAJ2HMdpCZ+AHcdxWsInYMdxnAgknSnpYUm3DrguSZ+XdLekWyS9pqjNWhOwpP0k3Rk6PL5OW47jOB3nLGC/Idf3B3YI25HAl4oarDwBS5oNnB463RE4TNKOVdtzHMfpMmZ2PfDzISIHAV+3jB8Am0iaO6zNOhrwrsDdZrbczJ4BzgsDcBzHmYnMAx7IHT8Yzg1kTuLOdhva2brzDODpn/1XjW4Hs/5L/zBKrqj/Qe1M3VfUz6D2p+6r2n8R+XarttHbVqp2eon9DOt+1mUY9Pml+iyK+k3Zfr9nSfn7UdRXCiaeWaG6bTz76PKoXAvrvvh3309mNphioZktrNt/EXUm4CgkHUl4MM3emFmzNuz7y52Cfm3V/Y9Y5Xpb/1GLJo2i/5SD2qpD1XZi70vxu1Tmc41pZ9C4ynwWTUxqTf1eNtVuEibXRImFybbuhLsC2Dp3vFU4N5A6JoiozsxsoZnNN7P5s2ZtWKM7x3Gckthk3JaGRcBfBm+I3YEnzGzlsBtUNRuapDnAXcDeZBPvEuCdZnbboHumTBCDaMo0MUWsCaDfPYMoo6m0oTlX1aRiNehRjKUrtDX+pk0gKUk51iQmiJXLoia4dea+qrAvSd8C9gS2AFYBJwDrAJjZlyUJ+AKZp8SvgPeY2dJhbVY2QZjZhKSjgCuA2cCZwybfIpqefB3HmXnYmol0bZkdVnDdgA+VabOWDdjMLgMuq9OG4zhOY6QzLzRCZRNEFYpMEFOM0ksiZV+pVvbL3N/UIlrRWEflJdH0ImEKqix4NmHC6aqJp+q4UpggnrnvxjgviJe/pnZfVWjcC8JxHKc1prMGLOle4ElgDTBhZvOHycdqwHnKLFzVdUOL1fqKSOknXMW1bFBfTS/y9SPlImYT/Y8DqdwrB7XZ9uLvINkkGvDyH8ZpwNvtOrYa8JvM7NEE7TiO4yQl5SJcE3TeBFFGA+xHFRtvXbtk0V//th3yY9qvonVVCYoYh+CApm33VYJOYvscdF/KQJF+7ZZZO2j0W0rHTRB101EacKWkG0LEm+M4TneYXBO3tURdG/A8M1sh6SXAVcDRIWNQXiYfivzaJqPhYu2BVW2s/e5JSVdCVgeNpen8AnWDWlJqqHUZ5e/NdCWFDfg3y66NmuDWe9WbWrEB19KAzWxF+PkwcAlZhrReGQ9FdhynHSYn47aWqGwDlrQhMMvMngz7bwZOSjaySMokmKlCFc+CMnbVIlLak8u030RfRVRpP8WYmvAe6ffeU4aFD5Mb1H8b4dOj7nctOm4DrrMItyVwSRb+zBzgm2Z2eZJROY7jJMDWPNv2EIZSJxfEcmDnhGNxHMdJyzTWgDtByq/4se2Ucceqcn2UC1t1F66qUjeopGlSfm2um0+47liaDtCpsng6MrNEi/bdGMZ+AnYcxxlIxzXgQjc0SWcCbwEeNrOdwrnNgPOBbYB7gUPMbHVRZ1VCkavQ1ZJDTSSYSRmKnDKst4l8ws7MIoUb2q+XXBQ157zgde/orBvaWaxdivl44Goz2wG4Ohw7juN0izUTcVtLFJogzOx6Sdv0nD6ILDM8wNnAdcBxCcdViyK7cF1bYhM2uTKkDB9OOa5+VHXJG1UKxzJtNHV/G6k9u/QNpNFxddwEUdUGvGWu1tFDZC5pfelXlNNxHGckTPdFODMzSQPtLPlqo6OyAeepEmpcN13koP7rUqQp1fUIKeqrzPNVSTBT1H5XNbgpqo4v1bPU9b7JM8rPutH2p+kEvErSXDNbKWku8HDKQTmO46TArL1EOzFUnYAXAYcDC8LP7yYbUYOkSieZp4rWW8YLomoCnFjZqppy076lsX02cU/VNlJ+A8nTRijxtGHcNeB8KWZJD5KVYl4AfFvSEcB9wCFNDtJxHKcSHU/I3sminF2lSkL4UaZVrEvT5Y2qfFYpfabL0ESkmGuw/Rn0jtfZYrvavrlP/+eXo+ac9ff5wNiWJHIcx+km426CcBzHGVs67gdcNRT5ROB9wCNB7ONmdllRZ+Nigqib77fpihl5mg7qaMPNrmr7TefbnU6Mw2eVIhT56e99Ps4Esf8xYxWKDHCqme0StsLJ13EcZ+SMe0WMAaHIM5Kma4dVcXdK0e+wPrrukJ9ifF1JgtRU0EmqJFOD2mh68bYWHfeCqFMT7ihJt0g6U9Kmg4QkHSlpqaSlk5NP1ejOcRynJDYZt7VElBta0IAvzdmAtwQeJStL/0lgrpm9t6idcbEBN03VQIwiqiR6T5k6s4uhwm25sfWjrcRCo1ybqJJ8Pk/+/iQ24EsWxNmA33b8+LihmdmqqX1JZwCXJhuR4zhOKjruBVFpAp7KAxEO3wbcmm5I3SVlwvLYfupqxWVKEpVJhhPrsdBU6Zt+FD1f1b7qJtJPpYGO0sbdVPtekuj5VA1F3lPSLmQmiHuB9zc4RsdxnGqsGfNkPGZ2WJ/TX21gLJ2nSBNKFZacMpVhSk2jSMPtpzVWXdnv91k05fMcyziFP3eVqp4YlRl3DdhxHGds8Ql4+lFUWqbM/VXSTTblL1ol6m8QdW19VVbTiz6XppOkDxrLqDTnlEmiyvQ1TK5OX0lIuAgnaT/gNGA28BUzW9Bz/WVkJdo2CTLHFwWpFfoBS9pa0rWSbpd0m6Rjw/nNJF0l6Sfh50BfYMdpi+n6Vd6JJFEknKTZwOnA/sCOwGGSduwR+0fg22b2auBQ4ItF7cYEYkwAf2tmOwK7Ax8KHXtlZMdxuo1Z3FbMrsDdZrbczJ4BziMrTvy83oAXhf2NgZ8VNRqzCLcSWBn2n5S0DJhHxysjjzNFJo6UochVF/FSucc1paG2ofmWMQ01ndgopWtY1aosVegJxKjf4ERcKHK+eHBgYahnOcU84IHc8YPAbj3NnAhcKeloYENgn6J+S9mAQ0Tcq4HFRFZG9qrIjuO0RqQNOF88uAaHAWeZ2WclvR44R9JOZoMHET0BS9oIuAj4sJn9Qnoucm9YZeS2qyKPkqZdm5rQNOqm3ixqf9C5VO5GKQMtiq6X0fqadg8cZbKfKgEuXVmks8lkU84KYOvc8VbhXJ4jCJkjzex/Jb0A2IIhRYujkvFIWods8v2GmV0cTq8KFZHxysiO43SSdOkolwA7SNpW0rpki2yLemTuB/YGkPQq4AU8lzO9LzGRcCILvFhmZp/LXRrLysijpuu1xVLagOv226XUl01o61VpwqWvbe+QkfWfyA3NzCYkHQVcQeZidqaZ3SbpJGCpmS0C/hY4Q9LfkC3IvdsKsp3FmCD2AN4F/FjSzeHcx/HKyI7jdJ10JgiCT+9lPec+kdu/nWy+jMarIo8hMZpi7Mp2W0nAU2nzKcZcdyx1gxNS9T+IukEtTRDTV4p0lL867QNRc84Gx355fNJROo7jjAUjVDCr4BNwC5RJgp7S7tev36b9OYvCc5tKMj7KtIex9uxR2tPL0EZRUk9HmVEnFPlESSsk3Ry2A5ofruM4TgkmLW5riZiy9HPJSg7dKOmFwA3AW8kW3X5pZp+J7cxtwGvTVMLyUXkZVPFHHSRbxkZatwxOExpYF4pTNm3bHyVJbMD/+t44G/BHz+ymDXhIKLLjNM6oqpBMB/yzWhubWNP2EIZSqipyTygyRFRG9qrIjuO0xribIH4rmIUifx842cwurlIZ2U0Qw2mjzlrRWJr+Ktv01/Yy+YKbou6CYROLZE1XaE7x+aYwQTz1qb+ImnM2/Mdzu2mCgP6hyF4Z2XGcztOidhtDzCKcyNJN/tzMPpw7/9vKyCH0bjczO3RYW64B16OMJlQlOCBPG4t049RXG7S9iDgK8mNYZ4vt6mvAJx4WpwGf+K3OasCDQpEP88rIjuN0mo5rwDFeEP8N9PvrMLTWkZOGphPBjDJ8t2nXsba0/VHZaJt2w+vCt4bkCdnHvSy94zjOuGIdj4TzZDxjRJnSMf0oE9zQ757Y8VW9v19bXbBFVgmbHmUZnyqMMgCo6v0pvCB+edzbo+acjU65uBUbcEwo8gsk/VDSj0Io8j+F89tKWizpbknnhyTFjuM43WHc/YCDF8SGZvbL4I7238CxwEeAi83sPElfBn5kZl8a1pZrwOlouqhjG9S1aw6iDT/fLmm7TdPU72ISDfjvDorTgD/z3W5qwJbxy3C4TtgM2Au4MJw/myw/hDMC2q7QME5M98nPKaDjGnBsTbjZwQXtYeAq4B7gcTObqvn8IAPyQ3gosuM4bWETk1FbW0R5QZjZGmAXSZsAlwCvjO1gJlVFHhVNu36VaStl+1XuT/FZ1A0F7vdZlLl/OtG5Z+y4F0QpNzQze1zStcDrgU0kzQlacL8SzY7jOO0y7oEYkl4MPBsm3/WBfYFTgGuBg4Hz8KrInaDphZ8yzvtdDNRIcV/s/V3M7dx09ZNOMu4TMDAXOFvSbDKb8bfN7FJJtwPnSfoUcBNZ6XrHcZzOMMo4hyp4IIYzNoy7a1fTWvcoaWosqZPx/OKIfaPmnBd99arOJuNxHMcZS2zcTRCSXgBcD6wX5C80sxMknQW8EXgiiL7bzG7u34rTFjEJyYcxylDlMu23EfzQVAXnWEaZfD+FbBWSJ+MZ9wkY+A2wVz4STtL3wrWPmtmFQ+51HMdpj257oUWlozSgXyScMwakTGE4qN0qY4m9XjUdZRWtrsy4yrTZRlmpptJ4djF15zC6boKoFAlnZlNFOU8ORTlPlbReY6N0HMepQsdDkUt5QeQi4Y4GHgMeAtYli3S7x8xO6nPPkcCRAJq98WtnzdowwbCdunQlOqtIw64avVam3ya0uraTJXXJY6IqKZLxrP7TPaMmuE0vuK6byXjymNnjZAEY+5nZypCo5zfA14BdB9yz0Mzmm9l8n3wdxxkpk5FbS8TkA35x0HzJRcLdIWluOCeyTGi3NjlQx3GcstikRW1tUScS7poQpizgZuADDY7TSUxXvpZWXSBqeuGqTF9drK82yioXnTZ3TAMviFuAV/c5v1cjI3Icx0mEjfsE7DhtUDdFZBFNJxYaJbHja8o1rssa8m8zlneUUotwjuM4Y0XCRThJ+0m6M9TBPH6AzCGSbg/1M79Z1Ga0BhxswEuBFWb2FknbkqWi3By4AXiXmT0T257TbaqUParrJtavzy7YF9tO91hEqr5StNPvvZfRtlOX20plggjz3+lkTggPAkskLTKz23MyOwAfA/Yws9WSXlLUbhkN+FhgWe74FOBUM9seWA0cUaItx3GcxrHJuC2CXYG7zWx5UDTPAw7qkXkfcLqZrQYws4eLGo3SgCVtBfwJcDLwkeB6thfwziByNnAiMLQqsjM+pEocU9eumDIUuoi6QR9FYd9Nl4cqImXQyqD+Y+3BowtFTtbUPOCB3PGDwG49Mq8AkPQ/wGzgRDO7fFijsSaIfwP+HnhhON6cyKKcjuM4rWFxAW75iN3AwlDPsgxzgB2APcnKtF0v6fdDANvAG4oG9hbgYTO7QdKeJQfUG4qMR8ONL3W1rlFqbWUYlVY2yjJAVUKh6yY+yp+vqiGnTkc5ORE3AeeLBw9gBbB17rhfHcwHgcVm9izwU0l3kU3ISwY1GmMD3gM4UNK9ZHaPvYDTCEU5hwwG8FBkx3HaI6ENeAmwg6RtJa0LHAos6pH5Dpn2i6QtyEwSy4c1WjYZz57A3wUviAuAi8zsPElfBm4xsy8Ou99LEk0f6qZwbNrPNyV1k7+3kTy+68Q8f4pkPCtev1fUnDPvf68p7EvSAWTm2NnAmWZ2sqSTgKVmtiisjX0W2A9YA5xsZucNa7NOIMZxeFFOx3E6TMpIODO7DLis59wncvsGfCRsUZSagM3sOuC6sL+cARnQHMdxuoBNtpJlMhqviuzUoql8vf3az1Pk3D9MLqavtqtUpGyrDXNPimdNYYK4f/7eUXPOy5Ze7VWRHcdxUjI50e1sC9EacJ9Q5LMoWRXZNeDpzSgXlka5SFelgnSZNqtU/2i75twgUr6XFBrwT3feN2rO2fZHV3VeA54KRX5R7pxXRXYcp7N03QZcKRS50RE5Y0sTNsS6CdlTaIKpnqtoLClDmbuUuKjVdJSRkXBtEWsgmQpF7nXq8KrIjuN0loSBGI1QJxT5Yzy/KvJxQFFVZA9FnmFUDdioouH2u7+pFItNUDe4ZVBbqT7LqrQZaLJmstuLcJVCkSWd61WRHcfpOjapqK0t6oQizzWzlSH87lTg12bWN0v8FO4F4cSSKvw3T5dCflP68TbZZy9NpNYc1O86W2xXe2ZctsMBUXPOq35yWee9IHr5hldFdhyny3TdC8Ij4RwnkjJldLqkbReR0vackhR+wLdu95aoOWen5ZeOnQbsOI7TabruhuYTsOM405Y1HTdBxAZi3As8SZbjcsLM5kvaDDgf2Aa4Fzhkqhid48TSRvhy1b6qusw1vYgW237VKhVl6FIeZ+i+BlzGSe5NZraLmc0Px8cDV5vZDsDV4dhxHKczmMVtbVHHBHEQofwGWVXk68iCMRwnmpRVJsr0NUpS9duUBt41rTUlk9NEAzbgSkk3hMg2gC3NbGXYfwjYst+Nko6UtFTS0snJp2oO13EcJx4zRW1tEeWGJmmema2Q9BLgKuBoYJGZbZKTWW1mmw5rx93QnFjG3bWriJleEy6GFG5oi1/69qg5Z7efXdxdNzQzWxF+PizpErKw41W5aLi5wMMNjtNxHKc0azpugohJxrMhMMvMngz7byZLurMIOBxYEH5+t8mBOjOLcU0iHkvdUOquatBdsyd33QsiRgPeErgkS/nAHOCbZna5pCXAtyUdAdwHHNLcMB3HccrTYqbJKAon4FD9eOc+5x8D9m5iUI7Tj7paX1PpFmP7reqnG6sNN+1nHNNHVzTfKYzx14Adx3HGksmOL/v7BOw4zrRlTalYs9ET64Z2L2uHIp8IvA94JIh93MwuG9aOu6E5TdJ0vuBxCptuqs1RLrKlcEO7ass/i5pz9l11fnfd0AJvMrNHe86damafSTkgx3GcVLgN2HEapCiX7SBSJuMpIlbbLtJQu+p61mW67gVRJxQZ4KhQFflMSX2j4DwU2XGctpiM3NoiVgN+Qz4UWdIdwJeAT5JNzp8EPgu8t/dGM1tIVjXZbcBOcorctcq4ntVN91hE3WQ4bdmdx1nz7roJIkoDzociA5cAu5rZKjNbY2aTwBkMqIrsOI7TFhNS1NYWlUORp/JABLG3Abc2OE7HKaSM1lrGdlzXHlv3/lTpJKteHzetN0/Xv3LXCUU+R9IuZM94L/D+xkbpOI5Tga4vwnlVZMdx1qKMR0aelNpyCj/gC+f+edScc/DKb3TeD9hxHGes6LrG5xOwM2Mo4+XQhE9uSm+ClImJmvDuqKpBpyalCULSfsBpwGzgK2a2YIDcO4ALgdeZ2dJhbUZ5QUjaRNKFku6QtEzS6yVtJukqST8JP4dWw3Acxxk1qbwgJM0GTgf2B3YEDpO0Yx+5FwLHAotjxhcbiHEacLmZvZIsNeUyvCqy4zgdxyK3CHYF7jaz5Wb2DHAeWWHiXj4JnAL8OqbRGDe0jYE/At4NEDp/RpJXRXbGiiITQ9N5b+u6xOXvb8LskPL5U1RgnnhmRaFMEZORS2shwjcf5bswBJFNMQ94IHf8ILBbTxuvAbY2s/+Q9NGYfmNswNuSZTz7mqSdgRvIVOzoqsiEB9PsjZk1a8OYcTmO49Qm1gacj9itgqRZwOcIimosMRPwHOA1wNFmtljSafSYG8zMJPXV5D0U2ekiTYQa16Xp/tsOdY7pI/XiXMIJZwWwde54q3BuihcCOwHXhZiJ3wEWSTpw2EJcjA34QeBBM5syKl9INiGvCtWQ8arIjuN0kQnFbREsAXaQtK2kdYFDyQoTA2BmT5jZFma2jZltA/wAGDr5QlxNuIckPSDp98zsTrI6cLeHzasiO2PPdNd8u84g23MSG3DtFjLMbELSUcAVZG5oZ5rZbZJOApaa2aLhLfQn1g/4aOAbYeZfDryHTHv2qsiO43SWlFXpQ8Wfy3rOfWKA7J4xbUZNwGZ2MzC/zyWviuw4iahaUqltj4i6NNl+13NBeCSc4zjTFp+AHceJooyfcFPJ4WOvjyIZTwq67nZVJxT5REkrJN0ctgOaHqzjOE4ZEnpBNEKsBjwVinxwWIjbAPhjvCqyM4Oom8Q9ZV9tJ/YpKgXVRJ9VGHsTxJBQ5GZH5jjOSOma+SAF08EEkQ9FvknSV0JpIvCqyI7jdJhJxW1tUVgRQ9J8sqiOPXKhyL8AvgA8ynNVkeea2VpVkfN4KLLjVKdLOYBHQYqKGAte/hdRc87x953byjRcORTZqyI7jtN1EqajbITKocheFdlxxotx0HpTM9FxK3CdUOTPe1Vkx3G6TLen33qhyO9KPxzHGV+atrGWaXPc7L1NMfZuaI7jOONKmx4OMcT4Af8ecH7u1HbAJ4Cvh/PbkJkgDjGz1emH6DjjQVVNMzbUuEz470zWevNMdtwIUegFYWZ3mtkuZrYL8FrgV8AleFFOx3E6zprIrS3KmiD2Bu4xs/u8KKfjxFGl5FGRVpy6dE9ZBtmYY591VMl8uq4Bl52ADwW+FfajinI6juO0Rben3xITcHBBOxD4WO+1YUU5vSqyM9Mp0hDH0bthUN+jSuYTS9e9IKLSUQb2B240s1XhOKoop5ktNLP5ZjbfJ19nJlN3ounK5DtOTGJRW1uUmYAP4znzA2QVQQ8P+16U03GczjH2ocgAIfvZvjw/2m0BXpTTcaIp+tpdt0pFlyhTc65J1nTcChwbCfcUsHnPucfwopyO43SYrtuAPRLOcVqgi9psShtzV7T56eaG5jiOMzZ0e/qtF4q8CfA+smoZAB83s8uSj9BxnEapEiiSqs+m+x17DTjkAN4FQNJsYAVZKPJ78KKcjuN0mGmxCJcjH4rcxHgcxxkxXbRHp6Lri3Bl/IDh+aHIEFGU03Ecpy0s8l9b1AlF/hJZMc6popyfBdYqyumhyI5Tj1HaaPv11c9eWzeZTlH7qei6BlzGBPG8UORcSDKSzgAu7XeTmS0EFoJXRXacLtN2hrUmmCyo+t42lUORp/JABLwop+M4nWM6hyJ/2otyOk7zpPraX7f//BhS9tnk+Nd03AhRJxTZi3I6jtNpuj39eiSc44wNKTXFfgtfMe03oa02uwg3fWzAjuM4Y0VKNzRJ+0m6U9LdktaqgSnpI5JuD665V0t6eVGbsTbgvwH+isze+2OyKLi5wHlkpokbgHeZ2TNRT+I4TjKK7LJVUl82RVFFkNSeGKlMECEK+HSytbAHgSWSFpnZ7Tmxm4D5ZvYrSX8NfBr4s2HtFmrAkuYBx4SGdwJmkwVknEIWirw9sBo4ovxjOY7jNIeZRW0R7ArcbWbLg6J5HnBQT1/XmtmvwuEPgK2KGo21Ac8B1pf0LLABsBLYC3hnuH42cCJZcIbjOCOkn5dE1ZpzU9S1y1b12Mhfn3hmRel+e5lIZwOeBzyQO34Q2G2I/BHA94oaLdSAzWwF8BngfrKJ9wkyk8PjZjaRG8y8orYcx3FGSawNWNKRkpbmtiOr9inpL4D5wL8Wycako9yUTNXeFngcuADYr8RgPBTZcUZAyvDeInvyuCTwifWCyEfsDmAFsHXueKtw7nlI2gf4B+CNZvabon5jvCD2AX5qZo+Y2bPAxcAewCaSpibwvoMBr4rsOE57JLQBLwF2kLRtyItzKFlh4t8i6dXA/wMONLO+VeJ7ibEB3w/sLmkD4GmylJRLgWuBg8mM0V4V2XE6RJnotaJkO1XsyV3RkFN5QZjZhKSjgCvIHBHONLPbJJ0ELDWzRWQmh42AC0K63vvN7MBh7cYkZF8s6ULgRmCCzNViIfAfwHmSPhXOfbXy0zmO0zpdmTRTkjIUOVT8uazn3Cdy+/uUbTM2FPkE4ISe08vJXDMcx3E6SaR5oTU8FNlxpjmxZoVR1WkbJV0PRfYJ2HGcaUub1S5iqBOK/GXgjWR+wQDvNrObmxik4zj1KXJTK7NIN4iuual1PSF7jB/wVCjyjmb2tKRvk7lgAHzUzC5scoCO4zhV6fb0Wz0U+WfNDclxnKYp46ZWRputq/mmTsYz0fGMwJVCkc3synD55JB67VRJ6zU4TsdxnNIkDMRohEqhyCHW+WPAQ8C6ZH7BxwEn9bnfQ5Edp8PE2nVjZFOOJUUynq57QVQNRf4DM1tpGb8BvsYAn2APRXYcpy1SJmRvgsqhyJLmmtlKZTF3b8WrIjvOtKQrHg1VGPtAjCGhyN+T9GJAwM3AB5ocqOM4Tlm6boKoE4q8V/rhOI7TNcY5Qm6NddsLwiPhHMeZtkyLSDjHcZxxZOwj4QAkHQu8j8zee4aZ/ZukzYDzgW2Ae4FDzGx1Q+N0HKclxs3skKfrGnBMVeSdyCbfXYGdgbdI2h44HrjazHYArg7HjuM4nWHSLGprixgN+FXA4qlyy5K+D7ydLDhjzyBzNnAdWTCG4zjTnKoLc6NO1tP1RbiYQIxbgT+UtHnwBT6ArDjdlma2Msg8BGzZ7+Z8tdHJyaeSDNpxHCeGrgdiKMZRWdIRwAeBp4DbgN+QpZ/cJCez2sw2HdbOnHXnddsg4zhOafol0Emh4U48s0J12/jdLV4TNefc8+iNtfuqQowGjJl91cxea2Z/BKwG7gJWSZoLEH5GVQF1HMcZFV3XgGO9IF5iZg9LehmZ/Xd3suQ8hwML8KrIjjNjqaLtjiq4wzpuA471A75I0ubAs8CHzOxxSQuAbwfzxH3AIU0N0nFmRcu9AAALIElEQVQcpwrTJRR5rT9RZvYYWWIex3GcUrgXRIZHwjmOM20Z+2xojuM440rXQ5GjvCAkHSvpVkm3SfpwOHeipBWSbg7bAc0O1XGc6cLTP/uv325NMvZeED2hyM8Al0u6NFw+1cw+0+D4HMdxKjMdTBCDQpEdx3FK0S8UuUktuOteEHVCkQGOClWRzwzFO9fCQ5Edx2mLNZOTUVtb1AlF/hfgUcCATwJzzey9w9rxUGTHcSAuECNFKPKmG20fNees/uXd4xWKbGarzGyNZaEmZzCgKrLjOE5bTGJRW1tUDkWeqoocRN6GV0V2HCeSUQViTIdFOOgfivx/Je1CZoK4F3h/Q2N0HMepRNf9gOuEIr8r/XAcx3HS4aHIjuM4LdF1E0TUIpzjOM44kjISTtJ+ku6UdLektWpgSlpP0vnh+mJJ2xS16ROw4zjTFjOL2oqQNBs4Hdgf2BE4TNKOPWJHAKvNbHvgVOCUonZ9AnYcZ9qSagImc7O928yWm9kzwHlkhYnzHERWoBjgQmBvScP9i2MHmGoDjmxTtu3+x2msbfc/TmNtu/9xGmuZNke1AUcCS3PbkT3XDwa+kjt+F/CFHplbga1yx/cAWwztt4UHXdqmbNv9j9NY2+5/nMbadv/jNNYybXZla2oCdhOE4zhOMSt4LgcOwFbhXF8ZSXOAjYHHhjXqE7DjOE4xS4AdJG0raV3gUGBRj8wisgLFkGnM11hQhQfRhh/wwpZl2+6/jOxM77+M7Ezvv4zsOPXfCcxsQtJRwBXAbOBMM7tN0klkJpVFwFeBcyTdDfycbJIeSlQ2NMdxHCc9boJwHMdpCZ+AHcdxWsInYMdxnJZofBFO0ivJIkTmhVMrgEVmtqzgvq+b2V/2OT+1AvkzM/tPSe8E/gBYBiw0s2eTPkBipnIrtz2O6Yakzc1sqMtPhTZbf1dNPFfbTMdnqkqjGrCk48hC9gT8MGwCvpVPZiFpUc/278Dbp457mv0a8CfAsZLOAf4UWAy8DvhK4vFvPuD8xpIWSLpD0s8lPSZpWTi3SU5us55tc+CHkjaVtFlPm/MlXSvpXElbS7pK0hOSlkh6dY/sbEnvl/RJSXv0XPvH3P5RkrYI+9tLul7S4yFRyO/33DcntHl5qPN3i6TvSfqApHUiPqu7+pzbLtQL/JSkjSSdIelWSRf0JiqR9CJJ/yLpnPBHNX/tiz3HC3LPNV/ScmCxpPskvbFHtu13lfy5mnhX4XzU+2rqXc1IGo4euQtYp8/5dYGf5I5vBM4F9gTeGH6uDPtv7Ln3lvBzDrAKmB2ONXWtR/5FZPXrzgHe2XPti7n9BYSoFWA+sBy4G7ivzxiuAI4Dfid37nfCuStz5yaBn/Zsz4afy3va/CFZoo/DgAeAg8P5vYH/7ZH9CvBN4MPADcDn8p9lbv+23P5/AG8L+3sC/9PT5reALwG7kzmZbxX2vwSc3yP7JPCLsD0ZtjVT53Ny1wN/DRxPFiX0t2SO6keQ+Ujm27wovIO3kvlTXgSs1/tM4fjHuf1rgdeF/VfQE2XVgXeV/LmaeFdl3ldT72ombs02DncAL+9z/uXAnbnjWcDfAFcBu4Rzywe0eSvZBL5p+CXaLJx/AbCsj3zUL0vJ/9R39htb77XwC3w58Pu5cz8dcN9Nuf37B10Lx7fk9ueQ+VVeDKzX005+LEsGtRGO7xryTHf1HH8e+Dqw5bDnKvlMN/cc/wPwP8Dmff5TLwPmhP0f9Fz7cc9x2+8q+XM18a7KPFdT72ombk3bgD8MXC3pJ2SaAsDLgO2Bo6aELCvseaqkC8LPVQy2T3+VbGKfTfbiLwhfa3YnM3f08rtm9o6w/x1J/wBcI+nAHrk5kuaY2QSwvpktCWO7S9J6PbL3Sfp74GwzWwUgaUvg3bnnxMw+K+n88EwPACfAwOSjv5b0ZrLwRZP0VjP7TviatqZHdt1cHxPAkZJOAK4BNsrJXSjpLOAk4BJJHwYuAfYC7u9p8+eS/hS4KLwPJM0iM/Gszgua2TGSXktmSvoO8IUBzzUp6RXhmTaQNN/Mlkranuz95VlP0qypvs3sZEkryLSyjXpkvwhcJmkBcLmk08j+AO0F3Nwj2/a7auK5mnhX8Nz72oTnv68deP77aupdzTyanuHJtNvdgXeEbXeC2WDIPX8C/POQ6y8FXhr2NyEL+9t1gOwyYFbPuXcDtwH35c4dDVxJ9otxInAamQnkn4Bzeu7flCzX5x1kv/A/D/2cQtDI+4zjQOAHwEMDru9M9nX5e8ArQ/+Ph3H+QY/sucB+fdr4K+DZPs+6GHiU7BvD7cA/Axv3yG0DnA88QmY6+gnwcDi37ZB3ewzwX2SLor3X9wbuDJ/NG8i+fUy1+9Ye2U8D+/RpYz9y5qrc+T3D2G4CfgxcRpbRap0euVG9q9XhXe1R87neVPRcuXf1cHhXd9V9VxHv66AE7+rG3DO9v/ddzcSt9QE0/oAlflmG/Kee0+f+VwL7ABv1tttHbm8yzWB9YKd+cuHcq6Zkh7UZzu3Kc2aSHYGPAAcUyP0fsq/aa8n13LN52M6N/IznAo9Fyl5Kzx/EAXJvCM/05gjZPwzPtZYssBvhjw2wAdm3gUvJJuCNe+RelJP7NPCfvXJ92lx/UJvh+jHA1pGfTZQs2Tegw4F9w3v6czJN80O9k1qQ/cup/wNkWbyWAx8cIHt4TnZYu9sBf0f2x+dzwAemPr8+490O+CiZOeTUYbIzbZvRociS3mNmXysrJ+kYsl/KZcAuwLFm9t1w7UYze00ZuZzsB8k0tSLZE8gWgeaQ2c13I7Nb7wtcYWYnD5DbFbiuVy7I9nqbQPZt4BoAMzuwrGzJNn9oZruG/feFz+0S4M3Av5vZggGyfxVkvzNA9jZgZ8ti+RcCT5FpdnuH828vI1dB9olw/R6yxbMLzOyRPp9Lr+w3g+yjfeS+QfZO1weeADYMn9XeZOkFDu8juwHZN6oY2aHtht/Vt5CZHA4gU1geB94GfNDMrsu1eSzZN9pC2RlJ238B2tzoWWiIlSPTjjcK+9uQJXA+NhzfVFauouxssv9Uv+A5zW19nr9AFyUXzpXxRImSJfvPFttm/nNbArw47G/I2gtrZWSX5cfdc+3msnIVZG8i+/r/ZrL1i0fIFvsOB15YRZYSnkBNyE79XoX9DYDrwv7LGPC7GiM7E7dpHwmX85Ps3X4MbFlWLjDLzH4JYGb3kk0s+0v6HNkva1m5srITZrbGzH4F3GNmvwj3PU3mTlVWDjLXuxvIFjafsEwzedrMvm9m368o+9oSbc5S5nO7OZm29UgY61PARA3ZWyW9J+z/SNJ8gLDY9GwFubKyZmaTZnalmR1Btn7xRTIT2PKKsrOUBSS9kGxS2zicXw/o9QNuSnZO7tpGYfD395ErKzuzaPsvQNMb2V/yXchc3/LbNuQWI2Llguw1BHe53Lk5ZO4+a8rKVZBdDGwQ9mflzm/M813rouR62t4KuIBstXzoN4RY2Rg54F6ySean4efccH4j1tYqy8huDJxF9rV+MdkEuRz4Ppm5oJRcBdmBWt7UuykrS+ayuZzMR/0Y4GrgDDJt84Se+5LLAscCt4RrdwDvCedfDFzf02a07EzcWh9A4w+YfZV7w4Br3ywrF463IufY33Ntj7JyFWTXGyC3Bc/3Y42SGyAz1BOlimyZNnP3bMCAlf0ysmQBOTuTaeVbDmkjSi5WFnhFiWctI1vGEyi5LNmC7sHAKyPGGi0707YZvQjnOI7TJtPeBuw4jtNVfAJ2HMdpCZ+AHcdxWsInYMdxnJbwCdhxHKcl/j/6Ir9rfmpiewAAAABJRU5ErkJggg==
"
>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>CONCLUSION: Data can be permuted into an upper triangluar matrix
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Gaussianity-check-for-leaf-nodes">Gaussianity check for leaf nodes<a class="anchor-link" href="#Gaussianity-check-for-leaf-nodes">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[5]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># find the most significant leaf nodes</span>
<span class="n">nx</span><span class="o">.</span><span class="n">dag_longest_path</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">graph</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[5]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>[66,
 85,
 67,
 84,
 8,
 94,
 69,
 10,
 49,
 0,
 75,
 62,
 96,
 17,
 1,
 39,
 35,
 76,
 18,
 48,
 23,
 57,
 30,
 15,
 40,
 38,
 68,
 65,
 87,
 89,
 32,
 37,
 95]</pre>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">plt</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span><span class="mi">95</span><span class="p">])</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;CONCLUSION: The Gaussianity effect due to CLT is not significant&#39;</span><span class="p">)</span>
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
<pre>CONCLUSION: The Gaussianity effect due to CLT is not significant
</pre>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># percive the data statistics by visualization</span>
<span class="n">vmin</span> <span class="o">=</span> <span class="o">-</span><span class="mi">7</span>
<span class="n">vmax</span> <span class="o">=</span> <span class="o">-</span><span class="mi">3</span>

<span class="n">fig</span><span class="p">,</span> <span class="n">axn</span> <span class="o">=</span> <span class="n">plt</span><span class="o">.</span><span class="n">subplots</span><span class="p">(</span><span class="mi">2</span><span class="p">,</span><span class="mi">1</span><span class="p">,</span> <span class="n">sharex</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="n">sharey</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>
<span class="n">cbar_ax</span> <span class="o">=</span> <span class="n">fig</span><span class="o">.</span><span class="n">add_axes</span><span class="p">([</span><span class="o">.</span><span class="mi">91</span><span class="p">,</span> <span class="o">.</span><span class="mi">3</span><span class="p">,</span> <span class="o">.</span><span class="mi">03</span><span class="p">,</span> <span class="o">.</span><span class="mi">4</span><span class="p">])</span>

<span class="c1"># for observational variables</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">imshow</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="p">:])),</span> <span class="n">cmap</span><span class="o">=</span><span class="s1">&#39;jet&#39;</span><span class="p">,</span> <span class="n">aspect</span><span class="o">=</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span> <span class="n">vmin</span><span class="o">=</span><span class="n">vmin</span><span class="p">,</span> <span class="n">vmax</span><span class="o">=</span><span class="n">vmax</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">set_title</span><span class="p">(</span><span class="s1">&#39;Data&#39;</span><span class="p">)</span>

<span class="c1"># for noise variables</span>
<span class="n">im</span> <span class="o">=</span> <span class="n">axn</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">imshow</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">log</span><span class="p">(</span><span class="nb">abs</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="p">:])),</span>  <span class="n">cmap</span><span class="o">=</span><span class="s1">&#39;jet&#39;</span><span class="p">,</span> <span class="n">aspect</span><span class="o">=</span><span class="s1">&#39;auto&#39;</span><span class="p">,</span> <span class="n">vmin</span><span class="o">=</span><span class="n">vmin</span><span class="p">,</span> <span class="n">vmax</span><span class="o">=</span><span class="n">vmax</span><span class="p">)</span>
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
<div class="prompt input_prompt">In&nbsp;[8]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># histogram plot</span>
<span class="n">n_bins</span> <span class="o">=</span> <span class="mi">100</span>

<span class="n">fig</span><span class="p">,</span> <span class="n">axn</span> <span class="o">=</span> <span class="n">plt</span><span class="o">.</span><span class="n">subplots</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">2</span><span class="p">,</span> <span class="n">sharey</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="n">tight_layout</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>

<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">data</span><span class="o">.</span><span class="n">flatten</span><span class="p">(),</span> <span class="n">bins</span><span class="o">=</span><span class="n">n_bins</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">set_title</span><span class="p">(</span><span class="s1">&#39;Data&#39;</span><span class="p">)</span>
<span class="n">axn</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">hist</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">nsM</span><span class="o">.</span><span class="n">flatten</span><span class="p">(),</span> <span class="n">bins</span><span class="o">=</span><span class="n">n_bins</span><span class="p">)</span>
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
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="least-square-regression-check">least square regression check<a class="anchor-link" href="#least-square-regression-check">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[9]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># training residules</span>
<span class="n">est_res_ss</span> <span class="o">=</span> <span class="p">[]</span>
<span class="n">oracle_res_ss</span> <span class="o">=</span> <span class="p">[]</span>

<span class="k">for</span> <span class="n">node</span> <span class="ow">in</span> <span class="n">dat1</span><span class="o">.</span><span class="n">nodes</span><span class="p">():</span>
    <span class="n">pa</span> <span class="o">=</span> <span class="nb">list</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">predecessors</span><span class="p">(</span><span class="n">node</span><span class="p">))</span>
    
    <span class="c1"># let go the root nodes</span>
    <span class="k">if</span> <span class="n">pa</span><span class="p">:</span>
        <span class="n">X</span> <span class="o">=</span> <span class="n">dat1</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="nb">list</span><span class="p">(</span><span class="n">pa</span><span class="p">)]</span>
        <span class="n">y</span> <span class="o">=</span> <span class="n">dat1</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="n">node</span><span class="p">]</span>
        <span class="n">est</span> <span class="o">=</span> <span class="n">dat1</span><span class="o">.</span><span class="n">lstsq_fit</span><span class="p">(</span><span class="n">X</span><span class="p">,</span> <span class="n">y</span><span class="p">)</span>
        <span class="n">est_res_ss</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">est</span><span class="o">.</span><span class="n">resid</span><span class="o">**</span><span class="mi">2</span><span class="p">))</span>
        <span class="n">oracle_res_ss</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">nsM</span><span class="p">[:,</span> <span class="n">node</span><span class="p">]</span><span class="o">**</span><span class="mi">2</span><span class="p">))</span>
<span class="c1">#est.summary()</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[10]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">([</span><span class="n">i</span> <span class="o">-</span> <span class="n">j</span> <span class="k">for</span> <span class="n">i</span><span class="p">,</span><span class="n">j</span> <span class="ow">in</span> <span class="nb">zip</span><span class="p">(</span><span class="n">est_res_ss</span><span class="p">,</span> <span class="n">oracle_res_ss</span><span class="p">)])</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">est_res_ss</span><span class="p">)</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">oracle_res_ss</span><span class="p">))</span>

<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;CONCLUSION: Overfitting always overfitting&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYAAAAEDCAYAAAA849PJAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAADl0RVh0U29mdHdhcmUAbWF0cGxvdGxpYiB2ZXJzaW9uIDMuMC4wLCBodHRwOi8vbWF0cGxvdGxpYi5vcmcvqOYd8AAAHhBJREFUeJzt3XuUHOV55/HvU9UzoxlJaIQEkkYjIXGPAsbAGHOxWV+wF1gbbAMOOMniy0Z/bLxrJ5v1wYfN2uuze06yyW42OSZ2tLY3sMFgApaRbe7YDvGamwQCS1xsgRHSSCABkpA00sx097N/dPWopa7WXKq7Z+bt3+ccHXVX1/RbrXdUTz/v+7xV5u6IiEjriSb7AEREZHIoAIiItCgFABGRFqUAICLSohQARERalAKAiEiLmvIBwMy+Y2Y7zGxDHd7r/Wa2vuLPQTP7WD2OU0RkurGpvg7AzC4G9gG3uPsZdXzfY4FNQK+7D9TrfUVEpospnwG4+yPAW5XbzOwkM7vPzNaZ2T+b2ekTeOurgXt18heRVjXlA0ANq4B/5+7nAn8C/O0E3uNa4La6HpWIyDSSm+wDGC8zmwVcCPyjmZU3dySvfQL4WsqP9bv7v6x4j0XAmcD9jT1aEZGpa9oFAEpZy253f+eRL7j794Hvj+E9Pgmsdvfheh+ciMh0Me2GgNz9beA3ZnYNgJWcNc63uQ4N/4hIi5vyAcDMbgMeBU4zs61m9jngd4HPmdkzwEbgynG83zJgCfBP9T9aEZHpY8qXgYqISGNM+QxAREQaY0pPAs+fP9+XLVs22YchIjJtrFu37g13P24s+07pALBs2TLWrl072YchIjJtmNnmse6rISARkRalACAi0qIUAEREWpQCgIhIi1IAEBFpUXUJAGZ2qZm9aGabzOyGlNc7zOx7yeuPJ6txRURkEmUOAGYWAzcBlwErgOvMbMURu30O2OXuJwN/Bfx51nZFRCSbeqwDOA/Y5O4vA5jZ7ZSuzfNcxT5XAl9NHt8JfN3MzJtwHYqfvbiDpzbvSn/RjNiMXFy6rHSx6OSLTq3DiiKjp7uTZfNmsnz+TI6b3VG1z30btvOr1/fRnovoyEW4w2C+yFC+SKFYrMtniiLj2nctZeGcGYdt/8kLr7P+1d11aWPKMiMyiJJLgRfdKTpQ0Wed7Tl653bSO7eTYzrb2PH2IK+/fZA39w8xlC8yXCiSL4y/L7q72lmcvK87bN11gK27BjgwVGDWjByzOnLkYmPfYIF9B/MUikUWzemkp7uTY2e28/rbB+nffYDX3z5IsTiBX30zrPTX4Z+5Yrs7NX9/jxRHEde9ewnHzz789+iRX+2kp3sGJx8/+7DtG7ft4f4Nr43/uDPIxREzO3LM7sgRRcb+wTz7BvMMDhdq/oyZkYuMzvaYT717KV3th5/m7l7fz0s79o3/YCp+99riiLbYiCNjuFD6/z1UcNoioy0X0RZHFIqHtjOGPjn/xHlcePL88R9XBvUIAIuBLRXPtwLvrrWPu+fNbA8wD3jjyDczs5XASoClS5dmPrivrNnI5jcHOHTrgEOO1iej7W8GN33qHC4/c9HItp17B/n8d58mX+M/d9p7lt+3Vnu1tm956wD/45OHLoK6e2CIP7z1aQ4MF2q200y1jr0e75umsq2xfq0Yz/HV+6vKePp7Iu2P5bO5w66BIb56xW+PbNtzYJg/uGUtHz2rh7+85vCL7H7jZy/xo2e3j/vYs8jyfxRKXxBWXnzSyPMtbw3whdvX1/z5iRzHWIzWljvcu+E1Hvzjf5GtoXGaciuB3X0VpTt+0dfXl/m/3d6DeX7v/KX814+dmdYWRYdC0Sm6k4tKEd1q9Fa+UGTb7oO88uZ+vvrDjdz0001cdsbCkf3vemor+aLzwB9dzJK5XRwcLhCZ0Z6LaM9FxFF9/od85e4N3PbEFm647PSRLOT2J7dwYLjAvV94L7+16Ji6tDNVuTuFomPJN7Ij+2vfYJ7+XQfY8tYAeweHOX72DBYcM4PjZnXQ0Vb6djbevnB3dg8Ms3XXAbbsGiAy6J3bRe/cTmZ25Ng/mGfvwTzDhSKzZuQ4ZkYbANv3HKR/1wHeGhhiwewOFs/tZOExM8jFExt9dXfcS1lg2nZL+feo5fPffYrVT/dzw2WnM6MtBmDN+v6RjPVIQ/kipy+czX1fvHhCxz4Rw4UiA4MF9g4OUyg6szpyzOzI0ZGLan7OYtEpuHPNNx/lrnX9/MF7TxzZd/XT/QD885fez5Jju8Z9PO6lUYJ8wRkuFikUnLYk289FRqHoDBWKDOedODbak0xhtD752g+f4/YnX8Xdx9x/9VCPANBP6fLKZb3JtrR9tppZDpgDvFmHtke1fzDPzPb0j2lmxMaYTwa5OGLpvC6WzuviMxct509/sIGnXt3NuSfMpVh0bn/iVc5bfiynLiilzp3tcd0+R6VPX7Scmx/dzK2Pb+aLl5xKvlDkll+8woUnzQv+5A9Jih/X7rNZHTlOWzib0xbOrrnPRNqcO7OduTPbObN3TtXr3V3tdHe1V21fPr80XFjP40g7P9TafjS/864l/OjZ7Tzw3OtccVYPAN9bW0rmCylZbKHoR/13b4S2OGJOV8ScrrYx/0wUGRHG1ef28p9+sIEN/W9zZu8c3J27ntrKBSfOm9DJH0r/zm2x0RZDJ9X/v3OxlYJ79a/CUfV0z2BgqMCeA8Opv0eNUo8qoCeBU8xsuZm1U7rX7poj9lkDXJ88vhr4STPG//OFIoP5YtUYYD184uzFzO7IccujrwDw2Mtv8sqbA3zqvOzDVqNZPn8mHzj9eP7hsc0M5gvcv/F1tu05yGcvWt7wtiUcF500n8XdndzxZOmkv3HbHjb0vw1APmW+Kl904mj6VI5/9B09tOci7lxX+nxrN+9i85sDXHVu7yQfWbWe7k4Atu0+2NR2M/emu+eBz1O6v+7zwB3uvtHMvmZmVyS7fRuYZ2abgD8GqkpFG2H/UGmiaGZH/b+Jz+zIcXVfL/f8cjs79h7ku0+8ypzONi49Y2Hd20rz2YuW88a+IX74zHa+8/9+wwnzuvjA6cc3pW0JQxQZ1/T18vNNb7DlrQHueHIL7bmIxd2dtTOAOg1jNsOcrjY+vGIBdz+zjcF8gbvWbaWrPeayJv0fHY9DAeBAU9utSzh393vc/VR3P8nd/1uy7T+7+5rk8UF3v8bdT3b388oVQ402MJQHSifrRvj9809guOD87U9f4v6Nr3HVOb0jY6mNdtHJ8zh1wSz++30vsG7zLj594bKqcWGR0VzTtwQz+IfHN/OD9du49LcXMm9We2ohQ75YrNs8VrNcdW4vuweGufeXr/HjZ7dz2RmLGnY+yKKnu1SJtW3PNAwAU9X+wcYGgBOPm8XFpx7H3//iFYYLznXnLRn9h+rEzPjMRcvZsXeQ2R05rulrXtsSjsXdnbzn5Pn870deZs+BYT7Zt4Q4mcw80nTLAADee/J8jp/dwVfWbGTvYJ6rzl082YeUav7MDtrjiP7pmAFMVfsHkyGgBk3GAlx/wQkAvGvZXE5ZUL9Jx7H4+NmLWXjMDH7/ghOYNQW/1cj08DvvWkLRoXduJxeeNI9cZOQLaRmAT7sMIBdHfPycxew5MMzi7k7OXz5vsg8pVRQZi7pnNH0OIOizRjkDaMQkcNn7Tjueq8/t5RNnN/+bxYy2mJ/9x/fRPsGSQhGAD61YwInzZ/J7559AlJRCh5IBAFx9Ti9/908vc9W5vVN6mLRnTmfT5wDCDgDJJHAjvx3HkVUtmGmmZs05SLg6cjE/+ZP3jTzPRRED+XzVfvnC9KoCKjtlwWxW/9sLp3yJdE93J4++VLU2tqGCDgDlSeCuBlQBiYQqtAwA4Oylcyf7EEbV0z2D194+SL5QnPBCwfGafuF8HPYlQ0AaHxcZu1xktauAmrwQrJX0dHdSdHh972DT2gw6AAwkk8BdDZwEFglNiBnAdDAZawGCDgD7mjAJLBKaXFwrA5h+VUDTyeLyWgAFgPoYGMrT2Rbrl1ZkHOIoUgYwCRbNKWUAzVwLEHQA2D9UaMhlIERCVpoDmP7XAppuZnbk6O5qUwZQL/sH81Ny2bfIVBZHRiFlIZgygMbrmdPJ9iYuBgs8ABQ0/i8yTjWrgArT71pA001Pd6eGgOqldC8ADQGJjIeqgCZPT/cMDQHVy8CQhoBExqv2OgDXOoAG6+nu5O2DefYeHG5Ke0EHAE0Ci4yfqoAmT3ktwPY9zZkHCDsAHOV2kCKSrrQO4PAqoPK9cFUF1FjltQDNmgcIujdVBSQyfmlzAOWnygAaayQDaFIlULABwN3ZP1TQZSBExqktZQ6gnBGoCqixjp89gziypk0EBxsABvNFCkVXBiAyTnEU4Q7FiiBQzgiUATRWHBkLj2leJVCwAWBgqPF3AxMJUS6p9KnMAsqPlQE03uImrgUINgA0+n7AIqEqn+Qr5wHKK4OVATTeou4ZTbs5fLBnx/1DCgAiE1E+yZfG/ePkcZIB6PajDXfxKccxt6u9KW0Fe3Y8dD9gDQGJjEdqBqA5gKa56txerjq3tyltBRvO9w82/n7AIiE6lAFUzgGoCihEwQaAkfsBayGYyLiUF3spAwhfsAFgnzIAkQlJzwBUBRSiYAPASAagawGJjMvIHEAhLQMI9pTRkjL1ppkda2YPmtmvk7/n1tivYGbrkz9rsrQ5VuX7AetaQCLjc2gdwKHrAeULygBClDWc3wA87O6nAA8nz9MccPd3Jn+uyNjmmAwMFogMZrTpG4vIeKgKqHVkPTteCdycPL4Z+FjG96ub/UOlK4Ga6RdWZDyOWgWk+wEEJWsAWODu25PHrwELauw3w8zWmtljZnbUIGFmK5N91+7cuXPCB6YrgYpMjKqAWseoZ0gzewhYmPLSjZVP3N3NrPouEiUnuHu/mZ0I/MTMfunuL6Xt6O6rgFUAfX19td5vVPuHCpoAFpkAVQG1jlEDgLtfUus1M3vdzBa5+3YzWwTsqPEe/cnfL5vZz4CzgdQAUC+6GYzIxByaAzg0CawqoDBl7c01wPXJ4+uBu4/cwczmmllH8ng+cBHwXMZ2RzUwqNtBikzESAZQUAYQuqwB4M+AD5nZr4FLkueYWZ+ZfSvZ57eAtWb2DPBT4M/cveEBoDwJLCLjk14FVMoGNAcQlkxnSHd/E/hgyva1wL9JHv8CODNLOxOhSWCRiUm9H4DWAQQp2AG9/UMaAhKZiKNWAakMNCjhBoDBvC4EJzIB5WGe4cKhSeBhlYEGKcgAUCw6A0MFDQGJTMDR5gBiVQEFJcjePDCs+wGLTFTqOgDdEjJIQQYA3Q9YZOKOei0gzQEEJcwAMJRkAJoEFhm38mIvrQQOX5gBYFB3AxOZqPIF37QSOHxB9mY5AOhuYCLjp2sBtY4wA8DI/YA1BCQyXloJ3DrCDAC6H7DIhOlaQK0jyABw6H7ACgAi45WaAagMNEhBBoB9g1oHIDJRqgJqHUEGgAFVAYlMWK37AcSR6RargQkyAOwbytMeR7Tngvx4Ig1VqwpI3/7DE+QZUjeDEZm4KDLMqquANP4fniADwP4hXQlUJItcZMoAWkCYAWAwrwxAJIM4sqprASkDCE+QAUCXghbJJhdFVesAdCno8ATZo/sGdT9gkSxKGUBFFVBBGUCIggwAmgQWyUZzAK0hyACwf0gZgEgW1XMARd0LIEBhBoDBPF3KAEQmTBlAawgzAGgSWCSTXBypCqgFBHmWfOpPP4R+VUUmLj0DCPL7YksLMgDoMtAi2VRVASkDCJJCuohUiSNLWQegABAaBQARqZKLU6qAFACCkykAmNk1ZrbRzIpm1neU/S41sxfNbJOZ3ZClTRFpvDiKDp8DKCgDCFHWDGAD8AngkVo7mFkM3ARcBqwArjOzFRnbFZEGyqVdC0jrAIKTKQC4+/Pu/uIou50HbHL3l919CLgduDJLuyLSWHFk5CsmgVUFFKZm9OhiYEvF863JtlRmttLM1prZ2p07dzb84ESkWmoGoCGg4IwaAMzsITPbkPKnId/i3X2Vu/e5e99xxx3XiCZEZBSxVgK3hFEL5t39koxt9ANLKp73JttEZIqqzgBUBRSiZgwBPQmcYmbLzawduBZY04R2RWSC4tT7ASgAhCZrGejHzWwrcAHwYzO7P9neY2b3ALh7Hvg8cD/wPHCHu2/Mdtgi0kiaA2gNma6Z4O6rgdUp27cBl1c8vwe4J0tbItI8cXxEFVBBVUAhUo+KSBVlAK1BAUBEqqRWAWkhWHAUAESkiqqAWoMCgIhUqboWkKqAgqQAICJVNAfQGhQARKRK6X4AuhZQ6NSjIlJFGUBrUAAQkSqldQClAODuFDQHECQFABGpUpkBlP9WBhAeBQARqVKuAnL3kUxA6wDCowAgIlXK3/aLrgwgZAoAIlKlPN4/XCiOXBVUVUDhUY+KSJXyt/1C0UcuCqcMIDwKACJSpZwB5Is+MgSkKqDwKACISJXDMwDNAYRKAUBEqsRx6dSQLxYPTQLHOl2ERj0qIlWUAbQGBQARqTIyB1BwCskksOYAwqMAICJVlAG0BgUAEalSWQV0aB2AAkBoFABEpEouWfRVqCgDzelSEMFRABCRKocygOKhawFpJXBw1KMiUqVyDkDXAgqXAoCIVClf+TNfcSkIzQGERwFARKooA2gNCgAiUqVyHUBe1wIKlgKAiFQ5rAqo4Idtk3Bk6lEzu8bMNppZ0cz6jrLfK2b2SzNbb2Zrs7QpIo2Xi9OqgJQBhCaX8ec3AJ8A/m4M+77f3d/I2J6INEHqHIDWAQQnUwBw9+cBzPSLIRKSw1YCqwooWM0a1HPgATNbZ2Yrj7ajma00s7Vmtnbnzp1NOjwRqZS6ElgBIDijZgBm9hCwMOWlG9397jG28x537zez44EHzewFd38kbUd3XwWsAujr6/Mxvr+I1NHhGYDmAEI1agBw90uyNuLu/cnfO8xsNXAekBoARGTyHZoDqLghjKqAgtPwHjWzmWY2u/wY+DClyWMRmaK0DqA1ZC0D/biZbQUuAH5sZvcn23vM7J5ktwXAz83sGeAJ4Mfufl+WdkWkscoVP6V1AKVJYM0BhCdrFdBqYHXK9m3A5cnjl4GzsrQjIs2VOgegMtDgaFBPRKqoCqg1KACISBVVAbUGBQARqaIqoNagHhWRKmkZgBKA8CgAiEiVkQyg4BSKRXKR6ZIvAVIAEJEqR2YAGv8PkwKAiFQxM+LIRu4HoAqgMCkAiEiqODJlAIFTABCRVLnIRqqAcrFOFSFSr4pIKmUA4VMAEJFUufIcQFIFJOFRABCRVHEUKQMInAKAiKTKRZasA1AVUKgUAEQkleYAwqcAICKpcnFSBVRwXQcoUOpVEUmlDCB8CgAikuqwKiDdDCZICgAikkpVQOFTABCRVIcyAFUBhUoBQERSaQ4gfAoAIpLqsGsBqQooSOpVEUkVR0a+oAwgZAoAIpIqFydDQAVdCyhUCgAikqpcBVRQBhAsBQARSVWeA8gXXesAAqUAICKpynMAmgQOl3pVRFKV1wHkdT+AYGUKAGb2F2b2gpk9a2arzay7xn6XmtmLZrbJzG7I0qaINEflTeE1BxCmrBnAg8AZ7v4O4FfAl4/cwcxi4CbgMmAFcJ2ZrcjYrog0WK5iIZjmAMKUKQC4+wPunk+ePgb0pux2HrDJ3V929yHgduDKLO2KSOPFUTRyKQhlAGGq5xzAZ4F7U7YvBrZUPN+abEtlZivNbK2Zrd25c2cdD09ExqOUASRVQJoEDlJutB3M7CFgYcpLN7r73ck+NwJ54NasB+Tuq4BVAH19fZ71/URkYuLYlAEEbtQA4O6XHO11M/s08BHgg+6edsLuB5ZUPO9NtonIFNY2MgegKqBQZa0CuhT4EnCFuw/U2O1J4BQzW25m7cC1wJos7YpI48VRNHJTeGUAYco6sPd1YDbwoJmtN7NvAphZj5ndA5BMEn8euB94HrjD3TdmbFdEGmzkWkC6H0CwRh0COhp3P7nG9m3A5RXP7wHuydKWiDRXHBnDhSLupWxAwqNeFZFU5XUAgNYBBEoBQERSVY77aw4gTAoAIpKqctxfcwBhUgAQkVSV4/7KAMKkACAiqZQBhE8BQERSHT4HoFNFiNSrIpKqsvJHGUCYFABEJJWqgMKnACAiqQ6bA9A6gCApAIhIKlUBhU8BQERSqQoofAoAIpJKVUDhU6+KSCplAOFTABCRVKoCCp8CgIik0jqA8CkAiEgqVQGFTwFARFJpHUD4FABEJJWqgMKnXhWRVKoCCp8CgIikUhVQ+BQARCRVrmLYRxlAmBQARCSVMoDwKQCISKrD1wHoVBEi9aqIpDosA1AZaJAUAEQklaqAwqcAICKpNAcQvlyWHzazvwA+CgwBLwGfcffdKfu9AuwFCkDe3fuytCsijacqoPBlzQAeBM5w93cAvwK+fJR93+/u79TJX2R6UAYQvkwBwN0fcPd88vQxoDf7IYnIVHD4HIBGi0NUz179LHBvjdcceMDM1pnZyjq2KSINUln5owwgTKPOAZjZQ8DClJdudPe7k31uBPLArTXe5j3u3m9mxwMPmtkL7v5IjfZWAisBli5dOoaPICKNoCqg8I0aANz9kqO9bmafBj4CfNDdvcZ79Cd/7zCz1cB5QGoAcPdVwCqAvr6+1PcTkcYrf+s3g0gBIEiZhoDM7FLgS8AV7j5QY5+ZZja7/Bj4MLAhS7si0njlcX99+w9X1jmArwOzKQ3rrDezbwKYWY+Z3ZPsswD4uZk9AzwB/Njd78vYrog0WPm8r/H/cGVaB+DuJ9fYvg24PHn8MnBWlnZEpPnMjFxkqgAKmHpWRGqKI9PtIAOmACAiNZUyAAWAUCkAiEhNuTjSHEDAFABEpCbNAYRNPSsiNcWRKQMImAKAiNSkOYCwKQCISE1xrAwgZAoAIlJTLtIkcMgUAESkJq0DCJsCgIjUlIuMWFVAwVLPikhNsSaBg6YAICI15VQGGjQFABGpKY6M2BQAQpXpaqAiEraVF59EmyaBg6UAICI1XXpG2t1gJRQaAhIRaVEKACIiLUoBQESkRSkAiIi0KAUAEZEWpQAgItKiFABERFqUAoCISIsyd5/sY6jJzHYCmyf44/OBN+p4ONOFPndr0eduLWP53Ce4+3FjebMpHQCyMLO17t432cfRbPrcrUWfu7XU+3NrCEhEpEUpAIiItKiQA8CqyT6ASaLP3Vr0uVtLXT93sHMAIiJydCFnACIichQKACIiLSq4AGBml5rZi2a2ycxumOzjaRQzW2JmPzWz58xso5l9Idl+rJk9aGa/Tv6eO9nH2ghmFpvZ02b2o+T5cjN7POn375lZ+2QfYyOYWbeZ3WlmL5jZ82Z2QSv0uZn9UfJ7vsHMbjOzGSH2uZl9x8x2mNmGim2p/Wslf5N8/mfN7JzxthdUADCzGLgJuAxYAVxnZism96gaJg/8B3dfAZwP/GHyWW8AHnb3U4CHk+ch+gLwfMXzPwf+yt1PBnYBn5uUo2q8vwbuc/fTgbMo/RsE3edmthj490Cfu58BxMC1hNnnfw9cesS2Wv17GXBK8mcl8I3xNhZUAADOAza5+8vuPgTcDlw5ycfUEO6+3d2fSh7vpXQiWEzp896c7HYz8LHJOcLGMbNe4F8B30qeG/AB4M5kl1A/9xzgYuDbAO4+5O67aYE+p3T72k4zywFdwHYC7HN3fwR464jNtfr3SuAWL3kM6DazReNpL7QAsBjYUvF8a7ItaGa2DDgbeBxY4O7bk5deAxZM0mE10v8CvgQUk+fzgN3unk+eh9rvy4GdwP9Jhr++ZWYzCbzP3b0f+EvgVUon/j3AOlqjz6F2/2Y+34UWAFqOmc0C7gK+6O5vV77mpRrfoOp8zewjwA53XzfZxzIJcsA5wDfc/WxgP0cM9wTa53MpfdtdDvQAM6keJmkJ9e7f0AJAP7Ck4nlvsi1IZtZG6eR/q7t/P9n8ejkNTP7eMVnH1yAXAVeY2SuUhvg+QGlcvDsZHoBw+30rsNXdH0+e30kpIITe55cAv3H3ne4+DHyf0u9BK/Q51O7fzOe70ALAk8ApSXVAO6WJojWTfEwNkYx7fxt43t3/Z8VLa4Drk8fXA3c3+9gayd2/7O697r6MUv/+xN1/F/gpcHWyW3CfG8DdXwO2mNlpyaYPAs8ReJ9TGvo538y6kt/78ucOvs8Ttfp3DfCvk2qg84E9FUNFY+PuQf0BLgd+BbwE3DjZx9PAz/keSqngs8D65M/llMbDHwZ+DTwEHDvZx9rAf4P3AT9KHp8IPAFsAv4R6Jjs42vQZ34nsDbp9x8Ac1uhz4H/ArwAbAD+L9ARYp8Dt1Ga5ximlPF9rlb/Akap6vEl4JeUqqTG1Z4uBSEi0qJCGwISEZExUgAQEWlRCgAiIi1KAUBEpEUpAIiItCgFABGRFqUAICLSov4/gsf4GeqEUYcAAAAASUVORK5CYII=
"
>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>-4.5356929983541155e-09
CONCLUSION: Overfitting always overfitting
</pre>
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
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># predictive performance check</span>

<span class="kn">from</span> <span class="nn">sklearn</span> <span class="k">import</span> <span class="n">linear_model</span>
<span class="n">lr</span> <span class="o">=</span> <span class="n">linear_model</span><span class="o">.</span><span class="n">LinearRegression</span><span class="p">()</span>

<span class="n">pred_res_ss</span> <span class="o">=</span> <span class="p">[]</span>

<span class="k">for</span> <span class="n">node</span> <span class="ow">in</span> <span class="n">dat1</span><span class="o">.</span><span class="n">nodes</span><span class="p">():</span>
    <span class="n">pa</span> <span class="o">=</span> <span class="nb">list</span><span class="p">(</span><span class="n">dat1</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">predecessors</span><span class="p">(</span><span class="n">node</span><span class="p">))</span>

    <span class="k">if</span> <span class="n">pa</span><span class="p">:</span>
        <span class="n">X</span> <span class="o">=</span> <span class="n">dat1</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="nb">list</span><span class="p">(</span><span class="n">pa</span><span class="p">)]</span>
        <span class="n">y</span> <span class="o">=</span> <span class="n">dat1</span><span class="o">.</span><span class="n">data</span><span class="p">[:,</span> <span class="n">node</span><span class="p">]</span>
        <span class="n">est</span> <span class="o">=</span> <span class="o">-</span> <span class="n">dat1</span><span class="o">.</span><span class="n">score_cv</span><span class="p">(</span><span class="n">lr</span><span class="p">,</span> <span class="n">X</span><span class="p">,</span> <span class="n">y</span><span class="p">)</span>  <span class="c1"># mean</span>
        <span class="n">pred_res_ss</span><span class="o">.</span><span class="n">append</span><span class="p">(</span><span class="n">est</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[12]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">([</span><span class="n">i</span> <span class="o">-</span> <span class="n">j</span> <span class="k">for</span> <span class="n">i</span><span class="p">,</span><span class="n">j</span> <span class="ow">in</span> <span class="nb">zip</span><span class="p">(</span><span class="n">pred_res_ss</span><span class="p">,</span> <span class="n">oracle_res_ss</span><span class="p">)])</span>
<span class="n">plt</span><span class="o">.</span><span class="n">show</span><span class="p">()</span>

<span class="nb">print</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">pred_res_ss</span><span class="p">)</span> <span class="o">-</span> <span class="n">np</span><span class="o">.</span><span class="n">mean</span><span class="p">(</span><span class="n">oracle_res_ss</span><span class="p">))</span>

<span class="nb">print</span><span class="p">(</span><span class="s1">&#39;CONCLUSION: As what is said, Overfitting!!&#39;</span><span class="p">)</span>
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
<pre>5.683732975881978e-09
CONCLUSION: As what is said, Overfitting!!
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="overfitting-can-be-alleviate-through-various-techniques">overfitting can be alleviate through various techniques<a class="anchor-link" href="#overfitting-can-be-alleviate-through-various-techniques">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[13]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="c1"># # for example Bayessian linear regression (equivalent to ridge regression)</span>

<span class="c1"># lr = linear_model.Lasso (alpha = 1e-2)</span>

<span class="c1"># pred_res_ss = []</span>

<span class="c1"># for node in dat1.nodes():</span>
<span class="c1">#     # node count from 0 to 99</span>
<span class="c1">#     pa = list(dat1.graph.predecessors(node))</span>

<span class="c1">#     if pa:</span>
<span class="c1">#         X = dat1.data[:, list(pa)]</span>
<span class="c1">#         y = dat1.data[:, node]</span>
<span class="c1">#         est = - dat1.score_cv(lr, X, y)  # mean</span>
<span class="c1">#         pred_res_ss.append(est)</span>

<span class="c1"># plt.plot([i - j for i,j in zip(pred_res_ss, oracle_res_ss)])</span>
<span class="c1"># plt.show()</span>

<span class="c1"># print(np.mean(pred_res_ss) - np.mean(oracle_res_ss))</span>

<span class="c1"># print(&#39;CONCLUSION: Noise is not Gaussian, may need fine tuning the model for countering overfitting!!&#39;)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="markov-blanket-validation">markov blanket validation<a class="anchor-link" href="#markov-blanket-validation">&#182;</a></h3><p>comments: usually, even in linear models, we should not expect the markov blanket of a node to block the predicative information from the rest nodes in a simple linear fit</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[14]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">target_node</span> <span class="o">=</span> <span class="mi">95</span>

<span class="n">list_of_interests</span> <span class="o">=</span> <span class="p">[</span><span class="n">dat1</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">target_node</span><span class="p">),</span> 
                     <span class="n">dat1</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">ancestors</span><span class="p">(</span><span class="n">target_node</span><span class="p">)</span> <span class="o">-</span> <span class="n">dat1</span><span class="o">.</span><span class="n">graph</span><span class="o">.</span><span class="n">parents</span><span class="p">(</span><span class="n">target_node</span><span class="p">)]</span>

<span class="n">_</span> <span class="o">=</span> <span class="n">dat1</span><span class="o">.</span><span class="n">accumulate_cv</span><span class="p">(</span><span class="n">target_node</span><span class="p">,</span><span class="n">list_of_interests</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>2018-09-29 14:27:41,683 - private.classes.dataset - INFO
position marks:  [10 84]&#39;
2018-09-29 14:27:41,919 - private.classes.dataset - INFO
bar values:  [-6.409733653774449e-15, -2.7580064933029135e-14]&#39;
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
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="independence-properties">independence properties<a class="anchor-link" href="#independence-properties">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[15]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">dat1</span><span class="o">.</span><span class="n">accumulate_ci</span><span class="p">(</span><span class="n">target_node</span><span class="p">,</span><span class="n">list_of_interests</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>2018-09-29 14:28:25,695 - private.classes.dataset - INFO
position marks:  [10 84]&#39;
2018-09-29 14:28:26,767 - private.classes.dataset - INFO
bar values:  [0.36562459862533436, 0.8027557027657102]&#39;
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
    </div>
  </div>
</body>

 


</html>
