<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <base href=".">


  <title>山高主页</title>
  <link rel="Bookmark" href="http://diy.yuday.top/geren_jianyuexingkong/favicon.ico">
  <link href="./index/index.css" rel="stylesheet" type="text/css">
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- index.css -->
  <style>
    body {
      margin: 0 auto;
      overflow: hidden;
    }

    /*=============第一页=============*/
    .header {
      margin: 0 auto;
      width: 100%;
      height: 640px;
      background-color: #000;
      position: relative;
    }

    .header canvas {
      width: 100%;
      height: auto
        /*默认全屏显示 可自己设置高度640px*/
      ;
      display: inline-block;
      vertical-align: baseline position:absolute;
      z-index: -1;
    }

    .header .canvaszz {
      /*用来解决视频右键菜单，用于视频上面的遮罩层*/
      width: 100%;
      background-image: url(../images/in_top_bj.jpg);
      height: 640px;
      position: absolute;
      z-index: 10;
      filter: alpha(opacity=40);
      -moz-opacity: 0.4;
      -khtml-opacity: 0.4;
      opacity: 0.4;
    }

    .audio {
      /*设置音乐显示位置*/
      width: 45px;
      position: fixed;
      top: 65px;
      left: 94%;
      z-index: 100;
      filter: alpha(opacity=30);
      -moz-opacity: 0.3;
      -khtml-opacity: 0.3;
      opacity: 0.3;
    }

    .header .top_logo {
      background-image: url(../images/top_logo.png);
      margin: 0 auto;
      width: 750px;
      height: 200px;
      position: absolute;
      z-index: 30;
      top: 10px;
      left: 52%;
      margin-left: -390px;
    }

    .header .nav {
      width: 540px;
      height: auto;
      position: absolute;
      z-index: 30;
      top: 420px;
      left: 50%;
      margin-left: -270px;
    }

    .header .nav a.gv {
      text-decoration: none;
      background: url(../images/nav_gv.png) repeat 0px 0px;
      width: 130px;
      height: 43px;
      display: block;
      text-align: center;
      /*水平居中*/
      line-height: 43px;
      /*上下居中*/
      cursor: pointer;
      float: left;
      /*左浮动*/
      margin: 8px 2px 8px 2px;
      font: 18px/43px 'microsoft yahei';
      color: #066197;
    }

    .header .nav a.gv span {
      display: none;

    }

    .header .nav a.gv:hover {
      background: url(../images/nav_gv.png) repeat 0px -43px;
      color: #1d7eb8;
      -webkit-box-shadow: 0 0 6px #1d7eb8;
      transition-duration: 0.5s;
    }

    .header .topcn {
      width: 980px;
      top: 200px;
      left: 50%;
      margin-left: -490px;
      position: absolute;
      z-index: 20;

    }
  </style>

  <style>
    html,
    * {
      -webkit-user-select: text !important;
      -moz-user-select: text !important;
    }
  </style>

  <style>
    div.JDialog>div.JDialog-dialog>div.JDialog-content>div.JDialog-body {
      background: url('data:image/png;base64,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');
    }

    .ilst {
      width: 100%;
      height: 100%;
      position: relative;
      display: none
    }

    .lst {
      display: block;
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .lst li {
      display: inline-block;
      list-style: none;
      width: auto;
      height: auto;
      margin: 0px 20px 20px 0px;
      background-color: #eee;
      overflow: hidden;
      cursor: pointer;
      position: relative;
      vertical-align: middle;
      border: 3px solid rgba(255, 255, 255, 0)
    }

    .lst li .imageItemResolution {
      position: absolute;
      left: 0px;
      bottom: 0px;
      background: #16fd0061;
      font-size: small;
      text-align: center;
      line-height: normal;
    }

    .lst li.select-item.selecting-item,
    .lst li.select-item.selected-item,
    .lst li.select-item:hover {
      border: 3px solid #1094fa;
      box-shadow: #1094fa 0 0 8px 0
    }

    .lst li.select-item.unselecting-item {
      border: 3px solid #83b6ff;
      box-shadow: #83b6ff 0 0 8px 0
    }

    .lst li.select-item.selected-item.success {
      border: 3px solid #00FF00;
      box-shadow: #00FF00 0 0 8px 0
    }

    .lst li.select-item.selected-item.fail {
      border: 3px solid #FF0000;
      box-shadow: #FF0000 0 0 8px 0
    }
  </style>
  <style>
    #Fun #btn .button {
      display: inline-block;
      color: #333;
      background-color: #fff;
      padding: 6px 12px;
      margin-bottom: 0;
      font-size: 12px;
      font-weight: 400;
      line-height: 1.42857143;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -ms-touch-action: manipulation;
      touch-action: manipulation;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      background-image: none;
      border: 1px solid #ccc;
      margin-left: 7px;
      border-bottom-left-radius: 4px;
      border-top-left-radius: 4px;
      border-bottom-right-radius: 4px;
      border-top-right-radius: 4px
    }

    #Fun .caret {
      display: inline-block;
      width: 0;
      height: 0;
      margin-left: 2px;
      vertical-align: middle;
      border-top: 4px dashed;
      border-right: 4px solid transparent;
      border-left: 4px solid transparent
    }

    .JDialog-backdrop {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      z-index: 9000;
      background-color: #000;
      opacity: .5
    }

    .JDialog-open {
      overflow: hidden
    }

    .JDialog {
      position: fixed;
      left: 50%;
      top: 50%;
      z-index: 9999;
      overflow: hidden;
      -webkit-overflow-scrolling: touch;
      outline: 0;
      font-family: arial, sans-serif;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none
    }

    .JDialog>.JDialog-dialog {
      position: relative
    }

    .JDialog>.JDialog-dialog .JDialog-resizable-handle {
      position: absolute;
      font-size: .1px;
      display: block;
      -ms-touch-action: none;
      touch-action: none;
      z-index: 999
    }

    .JDialog>.JDialog-dialog .JDialog-resizable-handle.JDialog-resizable-n {
      cursor: n-resize;
      height: 7px;
      width: 100%;
      top: -5px;
      left: 0
    }

    .JDialog>.JDialog-dialog .JDialog-resizable-handle.JDialog-resizable-e {
      cursor: e-resize;
      width: 7px;
      right: -5px;
      top: 0;
      height: 100%
    }

    .JDialog>.JDialog-dialog .JDialog-resizable-handle.JDialog-resizable-s {
      cursor: s-resize;
      height: 7px;
      width: 100%;
      bottom: -5px;
      left: 0
    }

    .JDialog>.JDialog-dialog .JDialog-resizable-handle.JDialog-resizable-w {
      cursor: w-resize;
      width: 7px;
      left: -5px;
      top: 0;
      height: 100%
    }

    .JDialog>.JDialog-dialog .JDialog-resizable-handle.JDialog-resizable-se {
      cursor: se-resize;
      width: 16px;
      height: 16px;
      right: 2px;
      bottom: 0;
      background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAACXBIWXMAAC4jAAAuIwF4pT92AAAElUlEQVR42u3dPWsUQRzA4WtsrGysg4K9pZVoVDSFb6VaiKAhNgqKaJLCK8y9ZA/SCdFaP4DfQLCxUvAT2AgWNiKKCMY5SJXbHeLc5HK79/zgD2mS6M4+N5tkN2m1JEmSJEmSJEmSJEmSJEmSdtlgMJhzFKSS1tfXn/T7/bYjIe0owHgcgGwBIlXgAESK4ABEiuAARIrgAESK4ABEcERwACI4IjgAERyASGk4ABEcgEhpOAARHIAIjjQcgAgOQAQHINJOHKvj4hhOURSnHE3ZOUZ3jt+9Xu+8oyk44BAccAgOOCQ4JDgkOCQ4JDgkOCQ4JDgkOOBQ83Es57grN8wFR1N2jow7R1EU88O/EWIlBMfo5z8d5pcHpgRHBQ5PFAqOCA5ABEcEByCCI4IDEMERwQGI4IjgAERwRHAAIjj84jjBkYYDEMEBiOBIwwGI4ABEcKThAERwACI4/H0QNRDHcAKOhcTPfy7H5w8f56bVVNbCiXW/7jvH9r/hodUUHHAIDjgEBxyCAw7BAYfggENwwCE44JDgkOCQ4JDggENwwCE44NBUFU7qB014niPMyjjHoSiKI84G2TnKj0PhiULBUYHDI7eCI4IDEMERwQGI4IjgAERwRHAAAgccERyAwAFHBAcgcMDhNysKjjQcgMABByCCIw0HIHDAAQgccKThAAQOOACBAw5/QEdwZMcBCBxwAAIHHIDAAUd2HIDAAQcgcMABCBxwbAEiOCaIAxA44AAEDjgAgQMOQOCAY5I4AIEDDkDggAMQOOAABA44ABEcU4IDkCksLMgSHNOBAxA44AAEDjgAgQMOQOCAAxA44ABEcEw/DkDggAMQOOAABA44AIEDDkDggAMQOOAABA44ao0DEDjgAAQOOACBAw5A4IADEDjgAAQOOACBY/eL8AcOQOCowFEUxUU4AIEDDkDggAMQOOCYARyAwAEHIHDAAQgccAACBxyAwAEHIHDAAQgccAACBxyAwAEHIHDAAQcgcMABCBxwAAIHHIDAAQcgcMABCBxwAAIHHIDAAQcgcMBhmg8EDjgAgQMOQP77pLib4wAFHJcTcZzJgSPMypgvEs+c6GOt/1M7h53DVK/BIzjgMNXrsOSyymWVqZ5rTdk5btk57Bx7sIOcaAqOv3DAkXva7fbBWuPo9Xp39vOyKrzf2UyvVMtjvkh0nNDZd4/Pdg47h6meV3DAYapn0WWVyypTMd1u96idw85hytfnLRxwmOo1ugEHHKZ8vm5ubh6AAw5Tvk6rdbp9ZHGfvyCfd/vITM2PjY2NQ3YOO4cpX6t7cMBhytfqPRxwmPK1+j4YDObggMOUr9elmfkJeep/dvg8R3j/n/v9E/LwMdactBOdNTuHncOUr9cLO4edw5TPSzuHncOUz3M7h53D7MF62TnsHE2db+FF+SQccJjRed3pdA7X4d6q25m2yStjXFZ52Gl25tNwzWvxE/KMTwJeTb3xMMfXHG48rMW8C+fbQm3uyoUDjgnMh+1veBxr1alcl1VwmHAMv4T5GN5+M7xMDWt7Pbx9vCVJkiRJkiRJkiRJkiRJalT/AICd/NRG4DAVAAAAAElFTkSuQmCC);
      background-size: 14px 14px;
      background-repeat: no-repeat
    }

    .JDialog>.JDialog-dialog .JDialog-resizable-handle.JDialog-resizable-sw {
      cursor: sw-resize;
      width: 16px;
      height: 16px;
      left: 3px;
      bottom: 0;
      background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAADICAYAAACtWK6eAAAACXBIWXMAAC4jAAAuIwF4pT92AAAFBElEQVR42u3dMWsTYRjA8SwuTi7OouDu6CTaKupg1VEdRNBSFwVFtHUwQ5umvUI3oTrrB/AbCC5OCn4CF8HBRUQRwfikVOjge4m5S9K8+f3hcFLS6/Pjea9NsNGQJEmSJEmSJEmSJEmSJI289fX1m+6ClAbSabfbt9wJKQEEEqkHkJ3LcUsqAdJZW1u74a5ICSBx/YZESgPZRuKZREoDcdySegGxSQRIORCbRID0cdkkAsQmkSoA8SNgAQKJVAkIJAKkHyRxzbuDAsSDuwAZfJNAomwriuIyJBIk0viR+I27si02wKW4fnlwl9Kb5EINSBy3lDcSxy2p/Lg157gljWCTQCKbpPd1292UTVJ+3FpwN2WTQKJp3SSOW9IIkNgkggQSZTDsMx7cpUQxpN8rILlokyh3IJ2KSBy3lD2QbSQxpLOQSP8G8ndIT0EipYH8qILEg7uyBrILyaDHLQ/uyhvIrmcSxy0BUjKgVTaJ45byBlLDJnHcUvZAKm8SSJQ1kDqeSRy3lDuQqj8CdtxS3kDq+D0JJMoaiF8mCpA+kXgXsABx3BIgkEgpIEuQSJBI40cSw34aEmVZDNdiTT+CtUmULZL7jlvSCJA4bslxy3FLNonjljS0TeLzJLJJbBLZJJBIo9gkjluCxCYRJJBIkEj/nXcBaxo2wbJNAonSW6ADCSQqAQIJJOoBZGc4WpBAogSQnauoiMRv3JU1kDqQ2CTKGkj3WoEEEkDKB2Sij1vtdvts/N2fkGhYQCZ+k0CiYQOZ+GcSSDRsIJU3ybjfllIXkrjumhpAbBJINAAQSCABZNhIHLeUOxCbBBJA+hjQZUggAcQmgQQQSCDRsIBAAgkgkEACSPUBbUECCSA2CSSAQAIJIMMC4rgFCSA2CSSAQAIJIMO9vC0FEkBsEkgAgQQSQBy3ING4gNgkkAACCSSAQAIJIJBAAggkkGhvA4EEEkAggQQQSCABBBJIAIEEEkAggUSTCwQSSACBBBJAIKkFSfw790wuIJDYJIBAAgkgkEACCCSQAAIJJIBAAonyAgIJJIBAAgkgkEACCCSQAAIJJIBAAgkgkEACCCSQaFqBQAIJIJD0/RoemnxAskVS039BAQkg2SI5b5MAAonjFiCQQAIIJJAAAgkkgEACCSCQQEIGIJBAAggkkAACCSSAQAIJIJBAAggkkAACCSSAQDImJGcgAQSS8iH1eRJAINnjnydZBMTlmWSaN4lBhwQSQCCBZOBv0CdDDgkk6W/OewMOCSTpI9Yrww0JJOlvSstgQwJJoqIorhpqSCBJH7GOGWhIIPGjXkggGRjIO8MMCSRpICsGGRJI0kCOGmJIIClH8sYQ+zzJiJA8njgg3bdAG2CfJ7FJyrfIBwO895HE319y3BrPb9VnDa9nkn6RTOUnE+NFvzS8kPQ5K+embpO0Wq2D8aK/GF5IHLfSX/QJgwsJJOU3fdHgQgJJ+RnzqcGFBJJyJM8NLiSQlN/0ZwYXEki8oRESSCrd9Lm4vhpeSCBJtLGxcShe8FvDCwkk5Tf+TrzwbwYYEkgSbW5uHui+dTle/GdDDAkkiba2tvbFC78W12uDDAkkJa2urh6JL2I+rhfxhXw01HkiKYpiZpzvAo7rUSOHms3m/rihx+MLuhJ/LsT1IG7uk/iz6Rrsivt3uCKS61VfQ5UBjdd/so770P2BUUOSJEmSJEmSJEmSJEmSNPL+AA/P/NT7ZY4YAAAAAElFTkSuQmCC);
      background-size: 14px 14px;
      background-repeat: no-repeat
    }

    .JDialog>.JDialog-dialog>.JDialog-content {
      position: relative;
      background-color: #fff;
      border: 1px solid rgba(0, 0, 0, .2);
      border-bottom-left-radius: 6px;
      border-top-left-radius: 6px;
      border-bottom-right-radius: 6px;
      border-top-right-radius: 6px;
      background-clip: padding-box;
      outline: 0
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header {
      padding: 5px;
      border-bottom: 1px solid #e5e5e5
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-left-header {
      float: left
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-left-header>.JDialog-title {
      margin: 0;
      padding-left: 5px;
      line-height: 1.42857143;
      text-align: left;
      font-size: 16px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header {
      float: right
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons {
      list-style: none;
      margin: 0;
      padding: 0
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item {
      display: inline-block
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item:not(:last-child) {
      padding-right: 10px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item button {
      padding: 0;
      background: 0 0;
      border: 0;
      cursor: pointer;
      font-size: 21px;
      font-weight: 700;
      line-height: 1;
      color: #000;
      text-shadow: 0 1px 0 #fff;
      opacity: .5;
      -webkit-appearance: none
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item button:focus {
      outline: 0
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item button:hover {
      opacity: .7
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item>.JDialog-scaling {
      width: 14px;
      height: 14px;
      background-size: 14px 14px;
      background-repeat: no-repeat
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item>.JDialog-scaling.JDialog-maximize {
      background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAqklEQVRoQ+3ZMQ6DMBQEUbj/oZMOkVSgJwxGQ79r/5lP5XWZ/Fsnv//yugE+kxjZwP8baIBBBg8ZeNr/sd+OBhi0KT/HZOAO6vszM5ABJNAKIUCOZ4ARYkEGECDHM8AIsSADCJDjGWCEWJABBMjxDDBCLMgAAuR4BhghFmQAAXI8A4wQCzKAADmeAUaIBacN4HmXxg+9kV16Ayx/7wAIZnz8aW/BpwlMP8AXzX9OMf3/bOMAAAAASUVORK5CYII=)
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-header>.JDialog-right-header .JDialog-header-buttons>.JDialog-header-button-item>.JDialog-scaling.JDialog-restore {
      background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAwCAYAAABT9ym6AAAA9UlEQVRoQ+2aYQ6CMAyFy8nUkyknE0+mmaGm1skWMqCBb38IGel4fe+tC6WT/+M5MRdtauiOBmSIRsH4PufxWs3IRUSigbmKyA0ggSS2b0bUNDbhd3OTPLL18B7NMhK9ZiRT9y6TANlSWrMYieCHlDTr0dlAIhQ/61uAwEjDHQFpaTKjnHRhBEYaGtyGQlpIC2lNZwCP4BE8gkfeGSh+fODQ2NgrbL9sv40lpeGQFtJCWget7A+H+5TrIdodImpl18ZnjsdPVxcgCxk9hfV1ZDeM+NbbVw71Fw4vrQUTXR261OgpAqleacUHc40egKxIwM9SRUZeitrlRsqA6vIAAAAASUVORK5CYII=)
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu {
      padding: 3px 5px;
      border-bottom: 1px solid #e5e5e5;
      line-height: 0;
      text-align: left
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list {
      display: inline-block;
      padding-left: 5px;
      margin: 0;
      list-style: none;
      font-size: 14px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item {
      float: left;
      position: relative;
      margin-right: 10px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .ddmenu span:nth-child(1) {
      padding-right: 6px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .caret {
      display: inline-block;
      width: 0;
      height: 0;
      margin-left: 2px;
      vertical-align: middle;
      border-top: 4px dashed;
      border-right: 4px solid transparent;
      border-left: 4px solid transparent;
      margin: 0;
      margin-top: -2px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn {
      display: inline-block;
      color: #333;
      background-color: #fff;
      padding: 6px 12px;
      margin-bottom: 0;
      font-size: 12px;
      font-weight: 400;
      line-height: 1.42857143;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -ms-touch-action: manipulation;
      touch-action: manipulation;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      background-image: none;
      border: 1px solid #ccc;
      margin-left: 7px;
      border-bottom-left-radius: 4px;
      border-top-left-radius: 4px;
      border-bottom-right-radius: 4px;
      border-top-right-radius: 4px;
      padding: 4px 6px;
      background: 0 0;
      text-decoration: none;
      margin: 0;
      height: auto;
      width: auto;
      min-height: auto;
      min-width: auto;
      max-height: none;
      max-width: none
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default {
      color: #333;
      background-color: #fff;
      border-color: #ccc;
      border: 1px solid transparent
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:focus {
      color: #333;
      background-color: #e6e6e6;
      border-color: #8c8c8c;
      outline: 0
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:hover {
      color: #333;
      background-color: #e6e6e6;
      border-color: #adadad
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.active,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:active {
      color: #333;
      background-color: #e6e6e6;
      border-color: #adadad
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.active.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.active:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.active:hover,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:active.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:active:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:active:hover {
      color: #333;
      background-color: #d4d4d4;
      border-color: #8c8c8c
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.active,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:active {
      background-image: none
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.disabled.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.disabled:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.disabled:hover,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default[disabled].focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default[disabled]:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default[disabled]:hover,
    fieldset[disabled] .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default.focus,
    fieldset[disabled] .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:focus,
    fieldset[disabled] .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default:hover {
      background-color: #fff;
      border-color: #ccc
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-menu-list .JDialog-menu-item .btn.btn-default .badge {
      color: #fff;
      background-color: #333
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-submenu-list {
      position: absolute;
      top: 100%;
      left: 0;
      z-index: 1000;
      display: none;
      float: left;
      min-width: 160px;
      padding: 5px 0;
      margin: 2px 0 0;
      font-size: 14px;
      text-align: left;
      list-style: none;
      background-color: #fff;
      -webkit-background-clip: padding-box;
      background-clip: padding-box;
      border: 1px solid #ccc;
      border: 1px solid rgba(0, 0, 0, .15);
      border-radius: 4px;
      -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
      box-shadow: 0 6px 12px rgba(0, 0, 0, .175)
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-submenu-list .JDialog-submenu-item>a {
      display: block;
      padding: 3px 20px;
      clear: both;
      font-weight: 400;
      line-height: 1.42857143;
      color: #333;
      white-space: nowrap
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-submenu-list .JDialog-submenu-item>a:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-menu .JDialog-submenu-list .JDialog-submenu-item>a:hover {
      color: #262626;
      text-decoration: none;
      background-color: #f5f5f5;
      border: none
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-body {
      position: relative;
      padding: 10px 15px;
      overflow: auto
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-statusbar {
      padding: 3px 5px;
      border-top: 1px solid #e5e5e5;
      line-height: 0;
      text-align: left
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-statusbar .JDialog-left-statusbar {
      float: left;
      padding: 0;
      margin: 0
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-statusbar .JDialog-right-statusbar {
      float: right;
      padding: 0;
      margin: 0
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-statusbar .JDialog-statusbar-list {
      display: inline-block;
      margin: 0;
      padding: 0;
      list-style: none;
      font-size: 12px;
      font-weight: 400;
      color: #333;
      line-height: 17px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-statusbar .JDialog-statusbar-list .JDialog-statusbar-item {
      display: inline-block
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-statusbar .JDialog-statusbar-list .JDialog-statusbar-item:not(:last-child) {
      padding-right: 15px
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-statusbar .JDialog-statusbar-list .JDialog-statusbar-item span {
      display: inline-block
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer {
      padding: 10px 15px;
      text-align: right;
      border-top: 1px solid #e5e5e5
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn {
      display: inline-block;
      color: #333;
      background-color: #fff;
      padding: 6px 12px;
      margin-bottom: 0;
      font-size: 12px;
      font-weight: 400;
      line-height: 1.42857143;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -ms-touch-action: manipulation;
      touch-action: manipulation;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      background-image: none;
      border: 1px solid #ccc;
      margin-left: 7px;
      border-bottom-left-radius: 4px;
      border-top-left-radius: 4px;
      border-bottom-right-radius: 4px;
      border-top-right-radius: 4px;
      margin: 0 0 0 7px;
      height: auto
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default {
      color: #333;
      background-color: #fff;
      border-color: #ccc
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:focus {
      color: #333;
      background-color: #e6e6e6;
      border-color: #8c8c8c;
      outline: 0
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:hover {
      color: #333;
      background-color: #e6e6e6;
      border-color: #adadad
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.active,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:active {
      color: #333;
      background-color: #e6e6e6;
      border-color: #adadad
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.active.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.active:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.active:hover,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:active.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:active:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:active:hover {
      color: #333;
      background-color: #d4d4d4;
      border-color: #8c8c8c
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.active,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:active {
      background-image: none
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.disabled.focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.disabled:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.disabled:hover,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default[disabled].focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default[disabled]:focus,
    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default[disabled]:hover,
    fieldset[disabled] .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default.focus,
    fieldset[disabled] .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:focus,
    fieldset[disabled] .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default:hover {
      background-color: #fff;
      border-color: #ccc
    }

    .JDialog>.JDialog-dialog>.JDialog-content>.JDialog-footer>.btn.btn-default .badge {
      color: #fff;
      background-color: #333
    }
  </style>
</head>

<body>



  <div class="header" id="demo">

    <div class="topcn" style="font:30px/15px &#39;microsoft yahei&#39;; color:#0FF;text-align:center;">
      <p>&nbsp;</p>
      <p>山高主页</p>
    </div>

    <!-- 我的公告提示 -->
    <script type="text/javascript">
      function duihua() {
        alert("这家伙真懒什么广告也没有留下来")
      }
    </script>
    <div class="nav">
      <a class="gv" href="javascript:void(0);" align="center">我的首页</a>
      <a class="gv" href="javascript:void(0);" align="center">我的空间</a>
      <a class="gv" href="javascript:void(0);" onclick="duihua()" align="center">本站公告</a>
      <a class="gv" href="javascript:void(0);" align="center">联系我吧</a>
    </div>

    <div class="canvaszz"> </div>
    <canvas id="canvas" width="1536" height="722"></canvas>
  </div>


  <!-----HEADER END----->

  <!--用来解决视频右键菜单，用于视频上面的遮罩层 START-->
  <div class="videozz"></div>
  <!--用来解决视频右键菜单，用于视频上面的遮罩层 END-->

  <!--音乐 END-->


  <script>
    //宇宙特效
    "use strict";
    var canvas = document.getElementById('canvas'),
      ctx = canvas.getContext('2d'),
      w = canvas.width = window.innerWidth,
      h = canvas.height = window.innerHeight,

      hue = 217,
      stars = [],
      count = 0,
      maxStars = 1300; //星星数量

    var canvas2 = document.createElement('canvas'),
      ctx2 = canvas2.getContext('2d');
    canvas2.width = 100;
    canvas2.height = 100;
    var half = canvas2.width / 2,
      gradient2 = ctx2.createRadialGradient(half, half, 0, half, half, half);
    gradient2.addColorStop(0.025, '#CCC');
    gradient2.addColorStop(0.1, 'hsl(' + hue + ', 61%, 33%)');
    gradient2.addColorStop(0.25, 'hsl(' + hue + ', 64%, 6%)');
    gradient2.addColorStop(1, 'transparent');

    ctx2.fillStyle = gradient2;
    ctx2.beginPath();
    ctx2.arc(half, half, half, 0, Math.PI * 2);
    ctx2.fill();

    // End cache

    function random(min, max) {
      if (arguments.length < 2) {
        max = min;
        min = 0;
      }

      if (min > max) {
        var hold = max;
        max = min;
        min = hold;
      }

      return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    function maxOrbit(x, y) {
      var max = Math.max(x, y),
        diameter = Math.round(Math.sqrt(max * max + max * max));
      return diameter / 2;
      //星星移动范围，值越大范围越小，
    }

    var Star = function () {

      this.orbitRadius = random(maxOrbit(w, h));
      this.radius = random(60, this.orbitRadius) / 8;
      //星星大小
      this.orbitX = w / 2;
      this.orbitY = h / 2;
      this.timePassed = random(0, maxStars);
      this.speed = random(this.orbitRadius) / 50000;
      //星星移动速度
      this.alpha = random(2, 10) / 10;

      count++;
      stars[count] = this;
    }

    Star.prototype.draw = function () {
      var x = Math.sin(this.timePassed) * this.orbitRadius + this.orbitX,
        y = Math.cos(this.timePassed) * this.orbitRadius + this.orbitY,
        twinkle = random(10);

      if (twinkle === 1 && this.alpha > 0) {
        this.alpha -= 0.05;
      } else if (twinkle === 2 && this.alpha < 1) {
        this.alpha += 0.05;
      }

      ctx.globalAlpha = this.alpha;
      ctx.drawImage(canvas2, x - this.radius / 2, y - this.radius / 2, this.radius, this.radius);
      this.timePassed += this.speed;
    }

    for (var i = 0; i < maxStars; i++) {
      new Star();
    }

    function animation() {
      ctx.globalCompositeOperation = 'source-over';
      ctx.globalAlpha = 0.5; //尾巴
      ctx.fillStyle = 'hsla(' + hue + ', 64%, 6%, 2)';
      ctx.fillRect(0, 0, w, h)

      ctx.globalCompositeOperation = 'lighter';
      for (var i = 1, l = stars.length; i < l; i++) {
        stars[i].draw();
      };

      window.requestAnimationFrame(animation);
    }

    animation();
  </script>

  <!-- 音乐代码 -->
  <audio autoplay="">
    <source src="http://...." loop="-17" type="audio/mpeg">
    <div style="display:none">统计代码</div>
  </audio>
  <div id="imglst" class="ilst">
    <ul class="lst"></ul>
  </div>
</body>

</html>
