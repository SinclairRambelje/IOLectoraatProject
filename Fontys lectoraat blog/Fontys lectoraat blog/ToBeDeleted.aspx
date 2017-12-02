<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToBeDeleted.aspx.cs" Inherits="Fontys_lectoraat_blog.ToBeDeleted" %>


<!DOCTYPE html>
<!--[if IE 7]><html class="lt-ie9 lt-ie8 pp_newsroom  pp_singlenewsroom" lang="nl"><![endif]-->
<!--[if IE 8]><html class="lt-ie9 pp_newsroom  pp_singlenewsroom" lang="nl"><![endif]-->
<!--[if gt IE 8]><!--><html class="pp_newsroom  pp_singlenewsroom" lang="nl"><!--<![endif]-->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,n,t){function r(t){if(!n[t]){var o=n[t]={exports:{}};e[t][0].call(o.exports,function(n){var o=e[t][1][n];return r(o||n)},o,o.exports)}return n[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<t.length;o++)r(t[o]);return r}({1:[function(e,n,t){function r(){}function o(e,n,t){return function(){return i(e,[c.now()].concat(u(arguments)),n?null:this,t),n?void 0:this}}var i=e("handle"),a=e(2),u=e(3),f=e("ee").get("tracer"),c=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,n){s[n]=o(d+n,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),n.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,n){var t={},r=this,o="function"==typeof n;return i(l+"tracer",[c.now(),e,t],r),function(){if(f.emit((o?"":"no-")+"fn-start",[c.now(),r,o],t),o)try{return n.apply(this,arguments)}finally{f.emit("fn-end",[c.now()],t)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,n){m[n]=o(l+n)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,c.now()])}},{}],2:[function(e,n,t){function r(e,n){var t=[],r="",i=0;for(r in e)o.call(e,r)&&(t[i]=n(r,e[r]),i+=1);return t}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],3:[function(e,n,t){function r(e,n,t){n||(n=0),"undefined"==typeof t&&(t=e?e.length:0);for(var r=-1,o=t-n||0,i=Array(o<0?0:o);++r<o;)i[r]=e[n+r];return i}n.exports=r},{}],4:[function(e,n,t){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,n,t){function r(){}function o(e){function n(e){return e&&e instanceof r?e:e?f(e,u,i):i()}function t(t,r,o,i){if(!d.aborted||i){e&&e(t,r,o);for(var a=n(o),u=m(t),f=u.length,c=0;c<f;c++)u[c].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(e,n){v[e]=m(e).concat(n)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(t)}function g(e,n){c(e,function(e,t){n=n||"feature",y[t]=n,n in s||(s[n]=[])})}var v={},y={},b={on:l,emit:t,get:w,listeners:m,context:n,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",f=e("gos"),c=e(2),s={},p={},d=n.exports=o();d.backlog=s},{}],gos:[function(e,n,t){function r(e,n,t){if(o.call(e,n))return e[n];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(e,n,t){function r(e,n,t,r){o.buffer([e],r),o.emit(e,n,t)}var o=e("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(e,n,t){function r(e){var n=typeof e;return!e||"object"!==n&&"function"!==n?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");n.exports=r},{}],loader:[function(e,n,t){function r(){if(!x++){var e=h.info=NREUM.info,n=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&n))return s.abort();c(y,function(n,t){e[n]||(e[n]=t)}),f("mark",["onload",a()+h.offset],null,"api");var t=d.createElement("script");t.src="https://"+e.agent,n.parentNode.insertBefore(t,n)}}function o(){"complete"===d.readyState&&i()}function i(){f("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),f=e("handle"),c=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1044.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=n.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),f("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>
<title>Nieuws en pers</title>
<meta name="robots" content="index,follow" />
<meta name="description" lang="nl" content="Newsroom Fontys"/>
<meta name="keywords" lang="nl" content="Newsroom,,Fontys"/>
<meta property="og:image" content="https://content.presspage.com/clients/o_1191.jpg"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<link rel="stylesheet" href="//client.presspage.com/css/min/modules.min_v21.css?v11" media="screen, print" />
<link rel="stylesheet" href="//client.presspage.com/css/min/responsive.min_v2.css" media="screen, print" />
<link rel="canonical" href="https://www.fontys.nl/nieuws/" />
<link rel="shortcut icon" href="//content.presspage.com/favicon/1191.ico?1213781074" />
<script type="text/javascript" src="//manager.presspage.com/js/jquery-min.js"></script>
<script type="text/javascript">pp_jquery = jQuery.noConflict( true );</script>
<!--[if IE]><script type="text/javascript" src="//manager.presspage.com/js/PIE.js"></script><![endif]-->
<script type="text/javascript" src="//client.presspage.com/js/min/plugins_v4.js"></script>
<script type="text/javascript" src="//manager.presspage.com/js/TrackVisits.js?v1"></script>
<script type="text/javascript">
var cookiecontrol = "disabled";
pp_jquery(document).ready(function() {
    loadLater();
});
</script>
<script type="text/javascript">
    if(cookiecontrol == "accepted" || cookiecontrol == "disabled") {

      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-78564940-1', 'auto', { 'siteSpeedSampleRate': 100, 'allowAnchor': true } );
      ga('set', 'forceSSL', true);
      ga('send', 'pageview');

      pp_jquery(function ()
        {
            pp_jquery('a[href^="http"]').mousedown(function ()
            {
              var url = this.toString();
              if (url.indexOf(document.domain) == -1)
              {
                ga('send', 'event', 'clickouts', pp_jquery(this).attr('href').replace(/https?:\/\/(.*)/,"$1"));
              }
            });
            pp_jquery('a[href^="mailto:"]').mousedown(function ()
            {
              ga('send', 'event', 'mailto', pp_jquery(this).attr('href').substr(7));
            });
            pp_jquery('a[href$=".pdf"]').mousedown(function ()
            {
              ga('send', 'event', 'download', pp_jquery(this).attr('href').replace(/https?:\/\/(.*)\/(.*)/,"$2"));
            });
        });

    }
</script>
<script src="//manager.presspage.com/js/ga_social_tracking.js"></script>
<script type="text/javascript">
    pp_jquery(document).ready(function() {
        var trackVisits_dynamicArgs = {"trackVisits_sessionId":"99uelug3d3b1f36jh3lmcb9447","trackVisits_ip":"145.85.2.125:28689, 145.85.10.60","trackVisits_userAgent":"Mozilla\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\/537.36 (KHTML, like Gecko) Chrome\/61.0.3163.100 Safari\/537.36","trackVisits_referer":"https:\/\/www.fontys.nl\/nieuws\/"};//End of dynamic args
        var trackVisists_args = {"trackVisits_accountId":"1191","trackVisits_pageId":"1443","trackVisits_language":"nl","trackVisits_timezone":"Europe\/Amsterdam"};
        var apiUri = "https://manager.presspage.com/api/v0/";

        TrackVisits.init(trackVisists_args,trackVisits_dynamicArgs,TrackVisits.visitTypes.newsroomPageType, apiUri);
        TrackVisits.pageLoaded(TrackVisits.visitTypes.newsroomItemType);
    });
</script>
<!--[if lt IE 9]><script src="//manager.presspage.com/js/html5.js"></script><![endif]-->
<style>
        .widthcorrection{
            max-width:988px;
        }
        .pp-block-item-title h2,.pp-maintitle,.rssmodule ul li a,.rssmodule ul li a:link,.rssmodule ul li a:visited,.rssmodule ul li a:hover,.td_welkom,.div_date_location,.title_big,.title_big h2,.title_big a:hover,.title_big_headlines,.title_big_headlines a,.pp_bigheadlines_title a,.pp_bigheadlines a,.pp_bigheadlines a:visited,.pp_publishdate,.contact_title,.contact_subtitle,.text_downloads,.citaat,.flickr_title,span.total,.coverage_title a,.coverage_title a:hover,.searchresult_title a,.searchresult_title a:hover,.searchresult_title h2,.umbrella_title h2,.umbrella_title a,.umbrella_title a:hover,.searchresult_readmore,.searchresult_readmore:hover,.form_title,.div_singlecolumn h1,.ppNews-item .ppPicture-b .ppText-b h6 span,.ppNews-b .ppNews-n li a,.ppNews-b .ppNews-n li a:hover,.ppNews-b .ppNews-n li.ppCurrent a,.ppm_headlines_datecontainer,.ppm_headlines_title,.title_companyprofile,.title_companyprofile h1,.subtitle_case,.subtitle_case h2,.title_facts,.ul_facts li,.volglink a,.input_name,.commenter_name,.reaction_div,.title_reactions,.pp-clndr__controls a.pp_icon {
            color:#663366;
        }
        .pp-clndr__day--active .pp-clndr__item,.pp-clndr__day--active .pp-clndr__item,.pp-clndr__day .pp-clndr__item:hover {
            border-color:#663366;
        }
        body,.pp-block-item-intro,.pp-block-item-date,.text_latestnews,.pp_coverageoverview_title_left,.text_custommodule,.rssmodule ul li span,.title_summary,.text_boilerplate,.text_quotes,.text_quotes_right,.fan_box .connections,.search_maintitle,.search_resultstitle,.searchresult_text,.div_resultmsg,.text_companyprofile,.ul_facts li span,.shareus_text,#t7_wl, #t7_dl,#t7_hl,#t7_sl, #t7_ml,.pp_headline h3, .pp_headline_umbrella h3 {
            color:#524D43;
        }        
        .td_companyprofile,#tags.sphere3d a,div.pollProgressBar,.td_form_submit input,.td_form_submit input, .comment_submit,.pp_sharethis_custom,.pp-block-item-tags a,.pp_multimediacount_icon,a.pp_bigheadlines_tags_link,.pp-clndr__day-current .pp-clndr__item,.pp-clndr__day--has-event .pp-clndr__item:after {
            background-color:#663366;
        }        
        .pp-newsreel-slider-readmore,.div_flag_codes a,.div_flag_codes a:hover,#headlines_extras a,#headlines_extras a:hover,.td_leesverder a,.text_custommodule a,.text_companyprofile a,.text_summary a,.text_boilerplate a,.latestnews_row a,.link_tonewsroom,.pp_bigheadlines_more,.pp_bigheadlines_more a:visited,.text_latestnews_more,.pp_coverage_title_items a{
            color:#663366
        }
        .text_latestnews a,.text_latestnews a:hover,.emaillink, .download_link,.span_headline a,.pp_bigheadlines_more {
            color:#663366
        }
        .title_headlines a,.extras_headertitle,.extras_headertitle_right,.extras_newsroom_headertitle_right,.extras_newsroom_headertitle_right a,.pp_coverage_preview_title h3, .pp_coverageoverview_title h3,.pp_coverage_preview_date, .pp_coverageoverview_date,.pp_coverage_preview_source, .pp_coverageoverview_source,#tooltip,.calendar_textarea,.boxgrid h3,.boxgrid a,.h3_coverage,.boxgrid_library a,.boxgrid_library h3,.boxgrid_library_featured a,.boxgrid_library_featured h3,.headlinefeatured_date_text,.headlinecoverage_date_text,.t7_numbs,.t7_numbs_small {
            color:#ffffff
        }       
        #maintable{
            max-width:988px;
         }
        .noheader_div{
            width:988px;
        }
        .pp_coverage_preview_box, .pp_coverageoverview_box {
            background-color:#663366;
            background: rgba(102,51,102,0.85)        
            background: transparent9;
            zoom:1;
            -ms-filter:"progid:DXImageTransform.Microsoft.gradient(startColorstr=#d8663366, endColorstr=#d8663366)";
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#d8663366, endColorstr=#d8663366);
        }       
        .extras_header{
            background-color:#663366;border:1px solid #ffffff;
        }
        .extras_newsroom_header {
            background-color:#663366;border:1px solid #ffffff;
        }
        .div_extras {
            background-color:#ffffff;border-left:1px solid #ffffff;border-right:1px solid #ffffff;
        }
        .extras_footer {
            background-color:#ffffff;border-left:1px solid #ffffff;border-right:1px solid #ffffff;border-bottom:1px solid #ffffff;
        }
        .extras_headertitle {
        text-align:center;
        }        
        .extras_headertitle_right,.extras_newsroom_headertitle_right{text-align:center;padding:3px 0 0 0;
        }
        #tooltip {
            background-color:#663366;
        }
        .calendar_header {
            border:1px solid #ffffff;
        }
        .calendar_textarea {
            background-color:#663366;
        }
        .div_calendar_list {
            border-bottom: 1px dashed #524D43;
        }
        .boxcaption_library,.boxcaption_library_featured {
            background-color:#663366;
            background: rgba(102,51,102,0.85);    
            background: transparent9;
            zoom:1;
            -ms-filter:"progid:DXImageTransform.Microsoft.gradient(startColorstr=#d8663366, endColorstr=#d8663366)";
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#d8663366, endColorstr=#d8663366);
        }
        .pp_coverage_title_items a,.div_flag_codes a,.div_flag_codes a:hover,#headlines_extras a,#headlines_extras a:hover,.td_leesverder a,.text_custommodule a,.text_companyprofile a,.text_summary a,.text_boilerplate a,.latestnews_row a,.link_tonewsroom,.pp_bigheadlines_more,.pp_bigheadlines_more a:visited{
            color:#663366
        }
        .pp-newsreel-slider-readmore,#title_headlines a,.extras_headertitle,.extras_headertitle_right,.extras_newsroom_headertitle_right,.extras_newsroom_headertitle_right a,.pp_coverage_preview_title h3, .pp_coverageoverview_title h3,.pp_coverage_preview_date, .pp_coverageoverview_date,.pp_coverage_preview_source, .pp_coverageoverview_source,#tooltip,.calendar_textarea,.boxgrid h3,.boxgrid a,.h3_coverage,.boxgrid_library a,.boxgrid_library h3,.boxgrid_library_featured a,.boxgrid_library_featured h3,.headlinefeatured_date_text,.headlinecoverage_date_text,.t7_numbs,.t7_numbs_small {
            color:#ffffff
        }
        *+html .pp_flexslider {
            width:668px;
        }
        *+html .pp_gridcontainer_gallery, *+html .pp_gridcontainer_slideshare, *+html .pp_gridcontainer_video {
            width:668px;
        }
        .volgdiv,.volgdiv_right {
            border:1px solid #ffffff;
        }
        .pp_bottommodule_header{background-color:#663366;border:1px solid #663366;
        }
        .td_extras_content {
            border:1px solid #663366;
        }
</style>
<!--[if IE]>
<script src="https://fontys.nl/Libraries/html5.js"></script>
<script src="https://fontys.nl/Libraries/json2.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="//presspage-production-content.s3.amazonaws.com/templates/395/1191/ppcl-fontys.css?8565328" />
<!-- End FreeStyle design -->
<script type="text/javascript" src="https://fontys.nl/wm/b/wcb/com.gxwebmanager.solutions.fontysutilityservices/js/jquery-2.2.2.min.js" ></script>
<script src="//presspage-production-content.s3.amazonaws.com/templates/395/1191/ppcl-fontys.js?8565328"></script>
</head>
<body>
<div class="pp-bodywrapper">
<div class="pp-allcontainer">
<div class="ppcl-overlay"></div>
<div class="off-canvas nav-offcanvas" id="offCanvasRight" data-off-canvas data-position="right">
    <div class="row">
        <div class="columns small-12 text-right closeOffcanvas">
            <a href="javascript:void(0);">
                <i class="menuClose" aria-label="Close menu" aria-hidden="true" data-close></i>
                <span class="hide-accessible">Sluiten</span>
            </a>
        </div>
    </div>
    <ul>
        <li>
            <a href="https://fontys.nl/Studeren.htm" data-link>Studeren</a>
        </li>
        <li>
            <a href="https://fontys.nl/Professionals-en-werkgevers.htm" data-link>Professionals en werkgevers</a>
        </li>
        <li>
            <a href="https://fontys.nl/Innovatie-en-onderzoek.htm" data-link>Innovatie en onderzoek</a>
        </li>
        <li>
            <a href="https://fontys.nl/Over-Fontys.htm" data-link>Over Fontys</a>
        </li>
    </ul>
    <span class="menuTitle">Meer Fontys</span>
    <ul>
        <li><a href="https://fontys.nl/Over-Fontys/Contact-en-locaties.htm" class="navigation" title="Contact en locaties">Contact en locaties</a></li>
        <li><a href="https://www.fontys.nl/nieuws/" class="navigation" title="https://www.fontys.nl/nieuws/">Actueel</a></li>
    </ul>
</div>
<div class="container off-canvas-content container-withMenu ppcl-wrapper" data-off-canvas-content>
    <!-- indexer: off -->
    <header class="header" data-module="header">
        <div class="header-container">
            <div class="row quicknav">
                <div class="columns small-12">
                    <div class="row">
                        <div class="columns small-4 logo">
                            <a href="https://fontys.nl/home.htm" title="Ga naar de homepage">
                                <figure>
                                    <img src="//presspage-production-content.s3.amazonaws.com/templates/395/1191/logo-inverted@2x.png" alt="Fontys" />
                                </figure>
                            </a>
                        </div>
                        <div class="columns small-8 navHelpers">
                            <ul>
                                <li>
                                    <div> <div class="search" data-module="search" data-module-options="{&quot;input&quot;:&quot;.search-input&quot;,&quot;link&quot;:&quot;.search-link&quot;}">
                                        <form data-autocompleteurl="https://fontys.nl/Over-Fontys/Organisatie-en-sturing.htm?cachetimeout=-1&amp;elementId=2691064&amp;presentationid=2670224" method="get" action="https://fontys.nl/web/show/search" name="search2691064" id="search2691064"><fieldset class="displayNone">
                                            <input type="hidden" name="id" value="90826">
                                            <input type="hidden" name="langid" value="43">
                                            <input type="hidden" name="from" value="">
                                            <input type="hidden" name="to" value="">
                                            <input type="hidden" name="webid" value="26098">
                                            <input type="hidden" name="searchid" value="2691064"></fieldset>
                                            <div class="search-inputHolder input-group">
                                                <input type="text" id="search_1" name="keyword" placeholder="Zoek op trefwoord" value="" class="search-input input-group-field with-floating-label"  required>
                                                <label for="search_1" class="floating-label">Zoek op trefwoord</label>
                                            </div>
                                            <button class="search-link">Zoeken</button>
                                        </form>
                                    </div></div>
                                </li>
                                <li class="hide-for-small-only"><a href="https://fontys.nl/Over-Fontys/Contact-en-locaties.htm" class="navigation" title="Contact en locaties">Contact en locaties</a></li>
                                <li class="hide-for-small-only"><a href="https://www.fontys.nl/nieuws/" class="navigation" title="https://www.fontys.nl/nieuws/">Actueel</a></li>
                                <li class="hide-for-small-only"><a href="https://fontys.edu/" class="navigation" title="https://fontys.edu/">English</a></li>
                                <li data-toggle="offCanvasRight"><span class="fa fa-bars"></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <nav id="mainnav" class="navbar" role="navigation" data-module="navigation">
                <div class="row">
                    <div class="columns large-12 show-for-large">
                        <ul>
                            <li><a href="https://fontys.nl/Over-Fontys/Wie-zijn-wij.htm" class="" title="Wie zijn wij">Wie zijn wij</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Organisatie-en-sturing.htm" class="" title="Organisatie en sturing">Organisatie en sturing</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Onderzoek.htm" class="" title="Onderzoek">Onderzoek</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Onderwijs.htm" class="" title="Onderwijs">Onderwijs</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Regelingen-statuten-en-reglementen.htm" class="" title="Regelingen, statuten en reglementen">Regelingen, statuten en reglementen</a></li>
                            <li><a href="//www.fontys.nl/nieuws/" class="active" title="Fontys Nieuws">Nieuws en pers</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Werken-bij-Fontys.htm" class="" title="Werken bij Fontys">Werken bij Fontys</a></li>

                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- indexer: on -->
 <%--   <main>
        <div class="row row-spaced-base">
            <div class="columns small-12 large-12">
                <a href="https://fontys.nl/Over-Fontys.htm" title="Over Fontys" class="btn btn-white btn-icon-back btn-nomargin">Over Fontys</a>
            </div>
        </div>
   
        <!-- indexer: off -->
    </main>--%>
</div>
<!-- indexer: off -->
<main id="pp-main" role="main">
<div id="maindiv" >
<div class="maindiv-extra">
    <div class="pp-content-top">
            </div>
<div id="maintable" class="maintables ">




        <div class="pp-main-column pp_table">
    <div class="top_main_client"></div>
    <div class="content_main_client content_main_client_right">
        
                        <div id="latestrelease_overlay" onclick="window.location='//www.fontys.nl/nieuws/serie-filmportretten-van-studenten-door-studenten/'" class="pp_moduleblock image-res ppointer pcover aspect-2-5 pmb10" style="background-image:url(//content.presspage.com/uploads/1191/yacks.jpg?10000);">
                            <div class="release_tags">
                    <div class="floatLeft release_tags_Fontys release_tags_">
                        <a class="release_tags_link" href="?h=1&t=Fontys">Fontys</a>
                    </div></div>
                            <div class="latestrelease_table">
                                <div class="latestrelease_innerwrapper">
                                    <div id="latest-overlaytext" class="ppd10"><div class="title_big">
                    <a href="//www.fontys.nl/nieuws/serie-filmportretten-van-studenten-door-studenten/">
                        <h2 title="Serie filmportretten van studenten door studenten">Serie filmportretten van studenten door studenten</h2>
                    </a>
                </div><div id="div_date_location_newsroom" class="div_date_location">
                <div class="pp_date_day">26</div>
                <div class="pp_date_month">oktober</div>
                <div class="pp_date_year">2017</div>
            </div>
                <div class="text_latestnews_text">Journalistiekstudenten Geeske van Veenendaal, Edita Saakian, Ruben de Theije en Esmee de Vries richtten voor een schoolopdracht het bedrijf Yacks op, dat video&rsquo;s maakt over ambitieuze jongeren.&nbsp;
...
                    <a class="text_latestnews_more" href="//www.fontys.nl/nieuws/serie-filmportretten-van-studenten-door-studenten/">
                        Lees meer over dit bericht</a>
                        </div></div>
                                </div>
                            </div>
                        </div>
                <div id="pp-headline-2179441" class="pp-headline-blocks pp_moduleblock pp-headline-block-Nieuws">
                <div class="title_big_headlines floatLeft">
            <a href="//www.fontys.nl/nieuws/?h=1&amp;t=Fontys">Nieuws</a>
        </div>
        <div class="pp_blockheadlines_tools">
            <a target="_blank" href="//www.fontys.nl/nieuws//tagfeed/nl/tags/Fontys" title="RSS" class="pp_blockheadlines_buttons_rss">
                <span class="pp-visually-hidden">RSS feed - Fontys</span>
            </a>
            <a href="//www.fontys.nl/nieuws/?h=1&amp;t=Fontys" title="Bekijk alle headlines" class="pp_blockheadlines_buttons_allheadlines">
                <span class="pp-visually-hidden">Bekijk alle headlines</span>
            </a>
        </div>

        <div class="pp_blockheadlines_container clearboth">
            <div class="pp_blockheadlines_item_container pp_blockheadlines_items-2179441">

                <div class="pp_grid pp-headline-block">
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247748 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/colette-cuijpers-officieel-benoemd-tot-lector-recht--digitale-technologie/" title="Colette Cuijpers officieel benoemd tot lector Recht & Digitale technologie"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_lectoraleredecolettecuijpers-0218.jpg?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Colette Cuijpers officieel benoemd tot lector Recht & Digitale technologie</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">26</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Met het mini-symposium ‘De jurist digi(vertaler)’ werd donderdag 5 oktober Colette Cuijpers officieel lector Recht en Digitale Technologie aan de Juridische Hogeschool.

Vervangt de robot de rechter?
De eerste spreker op het symposium<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div>
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247595 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/persoonlijk-welkom-aan--scholieren-tijdens-voorlichtingsavond-in-tilburg/" title="Persoonlijk welkom aan scholieren tijdens voorlichtingsavond in Tilburg"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_campustilburgfo0000104.jpg?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Persoonlijk welkom aan scholieren tijdens voorlichtingsavond in Tilburg</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">25</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Nadat op 11 oktober scholieren en hun ouders de voorlichtingsavond bij Fontys in Eindhoven bezochten, staan onze studenten en collega’s vanavond op de campus Stappegoor in Tilburg klaar om 350 scholieren en hun ouders te ontvangen. Zij<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div>
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247547 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/zuzana-molcanova-van-flot-wint-de-onderwijstoptalentprijs-2017/" title="Zuzana Molčanová van FLOT wint de OnderwijsTopTalentPrijs 2017 "><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_studentzuzanaflot-2.jpg?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Zuzana Molčanová van FLOT wint de OnderwijsTopTalentPrijs 2017 </h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">25</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Tijdens de Nationale Onderwijsweek op 5 oktober is de OnderwijsTopTalentPrijs 2017 uitgereikt in Nijmegen. Het barst van het talent op de lerarenopleidingen in Nederland. Daarom wordt jaarlijks deze mooie prijs uitgereikt aan aankomende leraren in<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div></div><div class="pp_grid pp-headline-block">
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247539 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/studenten-communicatie-tilburg-volgen-colleges-op-harvard-en-mit/" title="Studenten Communicatie Tilburg volgen colleges op Harvard en MIT"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_groepsfotohpusa2017.jpg?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Studenten Communicatie Tilburg volgen colleges op Harvard en MIT</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">25</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Wat kost adverteren op Times Square? Welke invloed hebben online media op het koopgedrag van Amerikanen? Welke tools worden ingezet bij reclamecampagnes voor Broadway-shows? De komende maanden bijten 24 studenten Communicatie van Fontys Economische<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div>
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247527 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/sucstress-voor-studenten-toenemend-probleem/" title="‘Sucstress’ voor studenten toenemend probleem"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1593/500_171024sucstress1-min.jpg?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>‘Sucstress’ voor studenten toenemend probleem</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">24</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Prestatiedruk, (voldoen aan) hoge verwachtingen, het leenstelsel, perfectionisme, het is maar een greep uit de verschillende factoren die tot stress kunnen leiden. En steeds meer studenten hebben er last van, zo blijkt uit verschillende onderzoeken<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div>
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247406 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/arko-sports-media-en-fontys-economische-hogeschool-tilburg-speco-verlengen-samenwerking/" title="Arko Sports Media en Fontys Economische Hogeschool Tilburg (SPECO) verlengen samenwerking"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_arko-feht.jpg?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Arko Sports Media en Fontys Economische Hogeschool Tilburg (SPECO) verlengen samenwerking</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">24</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Arko Sports Media (ASM) en Fontys Economische Hogeschool Tilburg (FEHT) hebben hun brede samenwerking met een jaar verlengd. FEHT is met de opleiding SPECO al sinds de officiële start van SPORTNEXT (september 2011) als een van de<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div></div><div class="pp_grid pp-headline-block">
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247399 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/hoe-is-het-toch-met-shanie-everts/" title="Hoe is het toch met Shanie Everts?"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_shanie-evertsstudenttnw.png?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Hoe is het toch met Shanie Everts?</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">24</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Shanie Everts ontving anderhalf jaar geleden haar diploma. Ze werd direct aangenomen bij Alcami Corperation in Weert, het bedrijf waar ze ook afstudeerde. Voor haar afstudeerproject heeft zij een nieuwe wijze van screening voor het bedrijf<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div>
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247172 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/fontys-hogeschool-communicatie-in-actie-voor-kayamandi/" title="Fontys Hogeschool Communicatie in actie voor Kayamandi"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_whatsappimage2017-10-12at11.58.14.jpeg?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Fontys Hogeschool Communicatie in actie voor Kayamandi</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">23</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Afgelopen weken stonden bij Fontys Hogeschool Communicatie in het teken van Zuid-Afrika. Op dit moment is een groep van 20 studenten met 4 docenten daar op studiereis. Met diverse acties werd vooraf en tijdens de reis geld ingezameld voor het<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div>
                                <div class="pp_unit pp_one-of-three pp-block-item pp-block-item-247391 pp-equal-js">
                                <a class="pp-block-item-container" href="//www.fontys.nl/nieuws/aanmelden-voor-fontys-onderzoeksprijs-0/" title="Aanmelden voor Fontys Onderzoeksprijs"><div class="pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3" style="background-image:url(//content.presspage.com/uploads/1191/500_onderzoeksprijsvierkant-2.png?10000);"></div>
                                <div class="pp-block-item-content">
                                <div class="pp-block-item-title pp-mb10 pp-mt10">
                                <h2>Aanmelden voor Fontys Onderzoeksprijs</h2>
                                
                                </div>
                                <div class="pp-block-item-date pp-mb10">
                                        <div class="pp-block-item-date-day pp-ib">23</div>
                                        <div class="pp-block-item-date-month pp-ib">oktober</div>
                                        <div class="pp-block-item-date-year pp-ib">2017</div>
                                </div>
                                <div class="pp-block-item-intro">Fontys ontwikkelt zich steeds verder tot een kennisintensieve netwerkinstelling. Daarbij speelt praktijkgericht onderzoek een grote rol. Om het doen van praktijkgericht onderzoek te stimuleren, reiken we ieder jaar de Fontys Onderzoeksprijs uit. Van<span class='substring_dots'> &hellip;</span></div>
                                <div class="pp-block-item-readmore">Lees meer over dit bericht
                                    </div>
                                    </div>
                                    </a>
                                
                                
                                
                            </div></div>
            </div>
        </div>

    <div class="clearboth"></div>

    <div class="pp-headlineblock-nav">
                <div onclick="morenewsRows2179441();" class="pp-headlineblock-nav__button pp-headlineblock-nav__more button_more-2179441 pp-headlineblock-nav--active" role="button">
            <span class="pp-visually-hidden">Next</span>
            <span class="pp-headlineblock-nav__icon pp_icon pp_icon_angle-down"></span>
        </div>
    </div>


</div>

<script>
            var loaded_items2179441 = 9;
            var totalreleases2179441 = 50;

            function morenewsRows2179441() {

                if (!pp_jquery(".button_more-2179441").hasClass("pp-headlineblock-nav--active"))

                return true;

                show_headlines2179441(loaded_items2179441,3);
                loaded_items2179441 = parseInt(loaded_items2179441) + 3;

                if (loaded_items2179441 >= totalreleases2179441) {

                    pp_jquery(".button_more-2179441").removeClass("pp-headlineblock-nav--active");

                }

            }

            function morenews2179441() {

                if (!pp_jquery(".button_more-2179441").hasClass("pp-headlineblock-nav--active"))

                return true;

                //Activate Previous button

                pp_jquery(".button_less-2179441").addClass("pp-headlineblock-nav--active");

                //Headline block div variables, general and visible

                var moduleBlock = pp_jquery('.pp_blockheadlines_items-2179441 .pp-headline-block');
                var visibleBlock = pp_jquery('.pp_blockheadlines_items-2179441 .pp-headline-block:visible');
                var visibleBlockSiblings = visibleBlock.next(moduleBlock).length;

                //check if next items are already in the DOM

                if (visibleBlockSiblings > 0 ) {

                    visibleBlock.next().prevAll().hide().css("opacity","0");
                    visibleBlock.nextAll(':lt(1)').show().animate({opacity:"1"}, 300);

                    // check again if there are siblings, check current visibleBlock so button can be disabled if no next elements

                    visibleBlock = pp_jquery('.pp_blockheadlines_items-2179441 .pp-headline-block:visible');
                    visibleBlockSiblings = visibleBlock.next(moduleBlock).length;

                // else show_headlines

                } else {

                    show_headlines2179441(loaded_items2179441,3);

                    loaded_items2179441 = parseInt(loaded_items2179441) + 3;

                }

                // deactivate next button if no siblings and when max show_headlines is reached.

                if ((loaded_items2179441 >= totalreleases2179441)
                    && (visibleBlockSiblings == 0 )){

                    pp_jquery(".button_more-2179441").removeClass("pp-headlineblock-nav--active");

                }


            }

            function backnews2179441(){


                if (!pp_jquery(".button_less-2179441").hasClass("pp-headlineblock-nav--active"))

                return true;

                pp_jquery(".button_more-2179441").addClass("pp-headlineblock-nav--active");

                var moduleBlock = pp_jquery('.pp_blockheadlines_items-2179441 .pp-headline-block');
                var visibleBlock = pp_jquery('.pp_blockheadlines_items-2179441 .pp-headline-block:visible');
                var visibleBlockPrevSiblings = visibleBlock.prev(moduleBlock).length;

                if (visibleBlockPrevSiblings > 0 ) {

                    visibleBlock.prev().nextAll().hide().css("opacity","0");
                    visibleBlock.prevAll(':lt(1)').show().animate({opacity:"1"}, 300);

                    // check again if there are previous siblings after the click

                    var currentVisibleBlock = pp_jquery('.pp_blockheadlines_items-2179441 .pp-headline-block:visible');
                    var currentVisibleBlockPrevSiblings = currentVisibleBlock.prev(moduleBlock).length;

                    if (currentVisibleBlockPrevSiblings == 0 ) {

                        pp_jquery(".button_less-2179441").removeClass("pp-headlineblock-nav--active");

                    }

                }
            }

        function show_headlines2179441(limitstart, limitend){
            var tags_addon = '';
            var multimedia_count = '';
            var sharerelease = '';
                        
            if (3 == 1) {
                initialOpacity = 'style="opacity:0"';
            } else {
                initialOpacity = "";
            }

            pp_jquery.getJSON('//www.fontys.nl/nieuws//services/getheadlines.php?releases=["247748","247595","247547","247539","247527","247406","247399","247172","247391","246565","246332","246201","246171","245875","245846","245842","245838","245821","245642","242729","242685","242398","242114","241973","241799","241696","241380","241344","241352","241356","236191","235500","234322","233304","232960","232207","231402","222692","222674","214221","221345","218057","217827","214576","214520","214504","214445","214361","214452","213682"]' + tags_addon + multimedia_count + '&preview=&subtitle=&substring=&video=&limitstart=' + limitstart + '&limitend=' + limitend, function(data) {

                var items = "<div class=\"pp_grid pp-headline-block\" " + initialOpacity + ">";
                pp_jquery.each(data, function(key, val) {
                    if (key != 'error'){
                            var date = val['date'];
                            var date_split = date.split(" ");
                            var date_day = date_split[0];
                            var date_month = date_split[1];
                            var date_year = date_split[2];
                            var tags_items = '';
                            var multimedia_count = '';
                            var sharerelease = '';

                            
                            
                            
                            
                            items += "<div class=\"pp_unit pp_one-of-three pp-block-item pp-block-item-" + val['releaseid'] + " pp-equal-js\">";
                            items += "<a class='pp-block-item-container' href=\"" + val['caseurl'] + "\" title=\"" + val['title'] + "\">";
                                                        items += "<div class=\"pp_blockheadlines_thumb pp-block-item-media image-res pcover aspect-2-3\" style=\"" + val['featuredimage'] + "\">" + val['videothumbnail'] + "</div>";
                            
                            items += "<div class=\"pp-block-item-content\">";
                            items += "<div class=\"pp-block-item-title pp-mb10 pp-mt10\">";
                            items += "<h2>" + val['title'] + "</h2>";
                            if(val['subtitle']){
                                items += "<h3>" + val['subtitle'] + "</h3>";
                            }
                            items += "</div>";
                            items += "<div class=\"pp-block-item-date pp-mb10\">";
                            
                                
                                items += "<div class=\"pp-block-item-date-day pp-ib\">" + date_day + "</div><span class=\"pp-block-item-date-day-divider pp-ib\"></span>";
                                items += "<div class=\"pp-block-item-date-month pp-ib\">" + date_month + "</div><span class=\"pp-block-item-date-month-divider pp-ib\"></span>";
                                items += "<div class=\"pp-block-item-date-year pp-ib\">" + date_year + "</div>";

                                
                                                        items += "</div>";
                            items += "<div class=\"pp-block-item-intro\">" + val['message'] + "</div>";
                            items += "<div class=\"pp-block-item-readmore\">Lees meer over dit bericht</div>";
                            items += "</div>";
                            items += "</a>";
                            items += tags_items;
                            items += sharerelease;
                            items += multimedia_count;
                            items += "</div>";

                    }

                });
                    items +="</div>";

                    if (3 > 1) {

                        pp_jquery(".pp_blockheadlines_items-2179441").append(items);

                    } else {

                        pp_jquery(".pp_blockheadlines_items-2179441 .pp-headline-block").hide().css("opacity","0");
                        pp_jquery(".pp_blockheadlines_items-2179441").append(items);
                        pp_jquery(".pp-headline-block:visible").animate({"opacity":"1"},300);

                    }

                                        equalHeightsHeadlineBlocks('.pp_blockheadlines_items-2179441 .pp-headline-block:last-child');

            });
        }

            function equalHeightsHeadlineBlocks(headlineblock) {
            var that = pp_jquery(headlineblock);
            var maxHeight = 0,
            equalelements = pp_jquery('.pp-equal-js:visible', that);
            equalelements.each( function() {
                var height = pp_jquery(this).innerHeight();
                if ( height > maxHeight ) { maxHeight = height; }
            });
            return equalelements.css('height', maxHeight);
        }
            // equalHeight initial elements
        pp_jquery(window).load(function() {
            pp_jquery('.pp_blockheadlines_items-2179441 .pp-headline-block').each( function() {
                equalHeightsHeadlineBlocks(this);
            });
        });
        </script>
<script type="text/javascript">

function switchCoveragesets(direction){

        var current_coverageset = Number(pp_jquery('#current_coverageset').val());
        var coveragesets = Number(pp_jquery('#total_coveragesets').val());

        var divid = "#coverageset" + current_coverageset;

          pp_jquery('' + divid).fadeOut('fast', function() {

            if(direction == "next"){
            current_coverageset = current_coverageset + 1;
            } else {
            current_coverageset = current_coverageset - 1;
            }
            // Set in hidden field
            pp_jquery('#current_coverageset').val(current_coverageset);

            var newdivid = "#coverageset" + current_coverageset;

            pp_jquery('' + newdivid).fadeIn('fast', function() {
            // Animation complete.
            });

            if(current_coverageset == coveragesets){
                var nextbutton = document.getElementById('coverage_nextbutton');
                var nexthref = document.getElementById('coverage_nexthref');
                pp_jquery(nextbutton).attr('class', 'pp_headlines_next_disabled');
                nexthref.removeAttribute("href");
            }
            if(current_coverageset == 1){
                var previousbutton = document.getElementById('coverage_previousbutton');
                var previoushref = document.getElementById('coverage_previoushref');
                pp_jquery(previousbutton).attr('class', 'pp_headlines_prev_disabled');
                previoushref.removeAttribute("href");
            }
            if(current_coverageset > 1){
                var previousbutton = document.getElementById('coverage_previousbutton');
                var previoushref = document.getElementById('coverage_previoushref');
                pp_jquery(previousbutton).attr('class', 'pp_headlines_prev');
                previoushref.setAttribute('href', 'javascript:switchCoveragesets("previous")');
            }
            if(current_coverageset < coveragesets){
                var nextbutton = document.getElementById('coverage_nextbutton');
                var nexthref = document.getElementById('coverage_nexthref');
                pp_jquery(nextbutton).attr('class', 'pp_headlines_next');
                nexthref.setAttribute('href', 'javascript:switchCoveragesets("next")');
            }

          });

        document.getElementById("current_coverageset").value = current_coverageset;
}

</script>
<script type="text/javascript">
function TrackCoverage(src,coverageid){
    var currenturl = pp_jquery(location).attr('href');
    var cid = 1191;
    var objectid = 1443;
    var objecttype = "newsroom";
    pp_jquery.get("//www.fontys.nl/nieuws//services/clicktrack.php?src="+currenturl+"&cid="+cid+"&objectid="+objectid+"&objecttype="+objecttype+"&coverageid="+coverageid);
}
</script>

<script type="text/javascript">
    pp_jquery(function() {
        pp_jquery(".pp_coverage_share").css("opacity",0);
        pp_jquery(".pp_coverage_preview").mouseover(function(){ pp_jquery(this).find(".pp_coverage_share").stop().animate({opacity:'1'},'400') });
        pp_jquery(".pp_coverage_preview").mouseout(function(){ pp_jquery(this).find(".pp_coverage_share").stop().animate({opacity:'0'},'400') });
    });
</script><div class="loadLater" id="placeholder_addthis"></div>
<textarea class="loadlater_placeholder" id="placeholder_addthis-content">
<script type="text/javascript">
var addthis_share = {
  templates: { twitter: '{{title}}: {{url}}', facebook: '{{title}}: {{url}}' }
}
</script>
</textarea>
<div id="ppmodule_coverage" class="pp_moduleblock">
<div class="div_coverage">
<div class="coverage_table">
    <div class="coverage_table_td">
        <div class="title_big_headlines">
            <a href="?c=1">In de media</a>        </div>
    </div>
    <div class="pp_coverage_iconset">
        <div class="td_rss_icon">
            <a target="_blank" href="//www.fontys.nl/nieuws//feed/fontys/media_nl/">
                <div class="pp_headlines_rss" title="RSS feed">
                    <span class="pp-visually-hidden">RSS feed</span>
                </div>
            </a>
        </div>
        
        <div id="icon_coverage" class="td_headlines_icon">
            <a href="?c=1">
                <div class="pp_headlines_icon" title="Archief">
                    <span class="pp-visually-hidden">Toon alles</span>
                </div>
        </a>
        </div>            <div class="headlines_prevnext">
            <a id="coverage_nexthref" href="javascript:switchCoveragesets('next');">
                <div class="pp_headlines_next" id="coverage_nextbutton" title="Eerdere items">
                    <span class="pp-visually-hidden">next</span>
                </div>
            </a>
        </div>
        <div class="headlines_prevnext">
            <a id="coverage_previoushref">
                <div class="pp_headlines_prev_disabled" id="coverage_previousbutton" title="Recentere items">
                    <span class="pp-visually-hidden">previous</span>
                </div>
            </a>
        </div>
        </div>
</div>
<div class="div_coverage"><div class="pp_grid">
    <div id="coverageset1">


                            <div class="pp_coverage_preview pp_unit pp_one-of-two">
                                    <div class="loadLater" id="placeholder_addthis_file27899"></div>
                                    <textarea class="loadlater_placeholder" id="placeholder_addthis_file27899-content">
                                        <div class="pp_coverage_share"><a class="addthis_button" href="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-591e8b1a9c5806d1" addthis:url="//content.presspage.com/uploads/1191/500_opinieewoudpublishingoutput.pdf?10000" addthis:title=""><img onmouseout="this.src='//manager.presspage.com/images/button_library_sharethis_over.gif'" onmouseover="this.src='//manager.presspage.com/images/button_library_sharethis_up.gif'" src="//manager.presspage.com/images/button_library_sharethis_over.gif" width="50" height="20" alt="Bookmark and Share" /></a></div>
                                    </textarea>
                                    
                                <div class="pp_coverage_container" onclick="window.open('http://www.bd.nl/opinie/geld-schuld-en-banken~ab33bc32/')">
                                        <div class="pp_coverage_preview_item" style="background-image:url(//content.presspage.com/uploads/1191/500_opinieewoudpublishingoutput.pdf?10000);"></div>

                                    <div class="pp_coverage_preview_box">
                                    
                                            <div class="pp_coverage_preview_title">
                                                <h3>Geld, schuld en banken</h3>
                                            </div>
                                            <div class="pp_coverage_preview_date">
                                                    <div class="pp_date_day">18</div>
                                                    <div class="pp_date_month">mei</div>
                                                    <div class="pp_date_year">2017</div>
                                                
                                            </div>
                                            <span class="pp_coverage_preview_source">
                                            www.bd.nl</span>
                                    </div>

                                </div></div>


                            <div class="pp_coverage_preview pp_unit pp_one-of-two">
                                    <div class="loadLater" id="placeholder_addthis_file22982"></div>
                                    <textarea class="loadlater_placeholder" id="placeholder_addthis_file22982-content">
                                        <div class="pp_coverage_share"><a class="addthis_button" href="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-591e8b1a9c5806d1" addthis:url="//api.url2png.com/v6/P4F883048A38F7/4b0492513d7c3970d7395c42d93e9e29/png/?url=https%3A%2F%2Fe52.nl%2Ffontys-en-differ-richten-zich-met-nieuw-lectoraat-samen-op-solar-fuels%2F&thumbnail_max_width=340&delay=2" addthis:title=""><img onmouseout="this.src='//manager.presspage.com/images/button_library_sharethis_over.gif'" onmouseover="this.src='//manager.presspage.com/images/button_library_sharethis_up.gif'" src="//manager.presspage.com/images/button_library_sharethis_over.gif" width="50" height="20" alt="Bookmark and Share" /></a></div>
                                    </textarea>
                                    
                                <div class="pp_coverage_container" onclick="window.open('https://e52.nl/fontys-en-differ-richten-zich-met-nieuw-lectoraat-samen-op-solar-fuels/')">
                                        <div class="pp_coverage_preview_item" style="background-image:url(//api.url2png.com/v6/P4F883048A38F7/4b0492513d7c3970d7395c42d93e9e29/png/?url=https%3A%2F%2Fe52.nl%2Ffontys-en-differ-richten-zich-met-nieuw-lectoraat-samen-op-solar-fuels%2F&thumbnail_max_width=340&delay=2);"></div>

                                    <div class="pp_coverage_preview_box">
                                    
                                            <div class="pp_coverage_preview_title">
                                                <h3>Fontys en DIFFER richten zich met nieuw lectoraat samen op Solar Fuels</h3>
                                            </div>
                                            <div class="pp_coverage_preview_date">
                                                    <div class="pp_date_day">02</div>
                                                    <div class="pp_date_month">dec</div>
                                                    <div class="pp_date_year">2016</div>
                                                
                                            </div>
                                            <span class="pp_coverage_preview_source">
                                            e52.nl</span>
                                    </div>

                                </div></div>
                                <div title="Fontys en De Persgroep krijgen subsidie voor Broeinest" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://tilburgers.nl/fontys-en-persgroep-krijgen-445-000-subsidie-broeinest/" onmousedown="TrackCoverage(this,22382);" target="_blank">Fontys en De Persgroep krijgen subsidie voor Broeinest</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">11</div>
                                <div class="pp_date_month">nov</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    tilburgers.nl</div></div>
                                
                                <div title="Printing by the rules" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_file_icon"></div>
                                <a href="//content.presspage.com/uploads/1191/mikroniek2016-5-amdesignrules.pdf?10000" onmousedown="TrackCoverage(this,22100);TrackVisits.resourceClicked(TrackVisits.visitTypes.downloadItemType,22100);" target="_blank">Printing by the rules</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">03</div>
                                <div class="pp_date_month">nov</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    (pdf)</div></div>
                                
                                <div title="Fontys zet vol in op praktijkgericht onderzoek" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="https://e52.nl/fontys-zet-vol-in-op-praktijkgericht-onderzoek/" onmousedown="TrackCoverage(this,22023);" target="_blank">Fontys zet vol in op praktijkgericht onderzoek</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">01</div>
                                <div class="pp_date_month">nov</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    e52.nl</div></div>
                                </div><div style='display:none;' id="coverageset2">
                                <div title="Talent moet beter worden benut" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.scienceguide.nl/201610/talent-moet-beter-worden-benut.aspx" onmousedown="TrackCoverage(this,21740);" target="_blank">Talent moet beter worden benut</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">21</div>
                                <div class="pp_date_month">okt</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.scienceguide.nl</div></div>
                                
                                <div title="Unesco-label voor lectoraat Fontys Eindhoven" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.ed.nl/regio/eindhoven/unesco-label-voor-lectoraat-fontys-eindhoven-1.6459035" onmousedown="TrackCoverage(this,21137);" target="_blank">Unesco-label voor lectoraat Fontys Eindhoven</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">30</div>
                                <div class="pp_date_month">sep</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.ed.nl</div></div>
                                
                                <div title="Echt open voor iedereen" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.scienceguide.nl/201609/echt-open-voor-iedereen.aspx" onmousedown="TrackCoverage(this,21136);" target="_blank">Echt open voor iedereen</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">30</div>
                                <div class="pp_date_month">sep</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.scienceguide.nl</div></div>
                                
                                <div title="&ldquo;Wetenschapsagenda geeft mijn vakgebied een boost&rdquo;" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.podiumpraktijkgerichtonderzoek.nl/wetenschapsagenda-geeft-mijn-vakgebied-een-boost/" onmousedown="TrackCoverage(this,20574);" target="_blank">&ldquo;Wetenschapsagenda geeft mijn vakgebied een boost&rdquo;</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">16</div>
                                <div class="pp_date_month">sep</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.podiumpraktijkgerichtonderzoek.nl</div></div>
                                
                                <div title="Stimuleren van gebruik en de implementatie van technologie voor ouderen, uitdagende inzending Fontys" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="https://twitter.com/kennisbundel/status/774124434936389632" onmousedown="TrackCoverage(this,20353);" target="_blank">Stimuleren van gebruik en de implementatie van technologie voor ouderen, uitdagende inzending Fontys</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">09</div>
                                <div class="pp_date_month">sep</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    twitter.com</div></div>
                                </div><div style='display:none;' id="coverageset3">
                                <div title="Help de lokale economie, plant een boom" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href=" https://e52.nl/column-help-de-lokale-economie-plant-een-boom/" onmousedown="TrackCoverage(this,20072);" target="_blank">Help de lokale economie, plant een boom</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">02</div>
                                <div class="pp_date_month">sep</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    </div></div>
                                
                                <div title="De rode draad: trends in vastgoed" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.duidelijkdtz.nl/groeien/de-rode-draad-trends-in-vastgoed/" onmousedown="TrackCoverage(this,19795);" target="_blank">De rode draad: trends in vastgoed</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">23</div>
                                <div class="pp_date_month">aug</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.duidelijkdtz.nl</div></div>
                                
                                <div title="Op zoek naar duurzaam vinyl" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.scienceguide.nl/201607/op-zoek-naar-duurzaam-vinyl.aspx" onmousedown="TrackCoverage(this,18940);" target="_blank">Op zoek naar duurzaam vinyl</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">19</div>
                                <div class="pp_date_month">jul</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.scienceguide.nl</div></div>
                                
                                <div title="Atleten hollen voor en door de stad" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_file_icon"></div>
                                <a href="//content.presspage.com/uploads/1191/vk.pdf?10000" onmousedown="TrackCoverage(this,18726);TrackVisits.resourceClicked(TrackVisits.visitTypes.downloadItemType,18726);" target="_blank">Atleten hollen voor en door de stad</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">08</div>
                                <div class="pp_date_month">jul</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    (pdf)</div></div>
                                
                                <div title="Ook Fontys in zorgsamenwerking regio Helmond" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.ed.nl/regio/helmond/ook-fontys-in-zorgsamenwerking-regio-helmond-1.6149249" onmousedown="TrackCoverage(this,18448);" target="_blank">Ook Fontys in zorgsamenwerking regio Helmond</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">29</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.ed.nl</div></div>
                                </div><div style='display:none;' id="coverageset4">
                                <div title="Nieuwe kansen rondom 3D printen van connectoren onderzocht" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.engineersonline.nl/nieuws/id27052-nieuwe-kansen-rondom-3d-printen-van-connectoren-onderzoch.html" onmousedown="TrackCoverage(this,18347);" target="_blank">Nieuwe kansen rondom 3D printen van connectoren onderzocht</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">28</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.engineersonline.nl</div></div>
                                
                                <div title="Fontys ICT studenten slaan brug met werkveld" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.regioinbedrijf.nl/bedrijfsnieuws/fontys-ict-studenten-slaan-brug-met-werkveld.8947/" onmousedown="TrackCoverage(this,18172);" target="_blank">Fontys ICT studenten slaan brug met werkveld</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">22</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.regioinbedrijf.nl</div></div>
                                
                                <div title="Lector Pen wil dat raadsleden verder kijken dan winkelbelang van Den Bosch" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.bd.nl/regio/den-bosch-e-o/s-hertogenbosch/lector-pen-wil-dat-raadsleden-verder-kijken-dan-winkelbelang-van-den-bosch-1.6127964" onmousedown="TrackCoverage(this,18158);" target="_blank">Lector Pen wil dat raadsleden verder kijken dan winkelbelang van Den Bosch</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">22</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.bd.nl</div></div>
                                
                                <div title="De Zorgboog en Fontys starten multidisciplinair zorginnovatienetwerk" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="https://siris.nl/artikel/28065176/de-zorgboog-en-fontys-starten-multidisciplinair-zorginnovatienetwerk" onmousedown="TrackCoverage(this,18082);" target="_blank">De Zorgboog en Fontys starten multidisciplinair zorginnovatienetwerk</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">17</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    siris.nl</div></div>
                                
                                <div title="Bussemaker wil meer masters in hbo" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://nos.nl/artikel/2111262-bussemaker-wil-meer-masters-in-hbo.html" onmousedown="TrackCoverage(this,18024);" target="_blank">Bussemaker wil meer masters in hbo</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">16</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    nos.nl</div></div>
                                </div><div style='display:none;' id="coverageset5">
                                <div title="Fontys-congres moet start zijn voor meer ondernemende binnenstad" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="https://e52.nl/fontys-congres-moet-start-zijn-voor-meer-ondernemende-binnenstad/" onmousedown="TrackCoverage(this,17988);" target="_blank">Fontys-congres moet start zijn voor meer ondernemende binnenstad</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">15</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    e52.nl</div></div>
                                
                                <div title="Het juiste DNA voor de job" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://magazine.intermediair.nl/issue/week-23/?utm_referrer=#het-juiste-dna-voor-de-job" onmousedown="TrackCoverage(this,17971);" target="_blank">Het juiste DNA voor de job</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">14</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    magazine.intermediair.nl</div></div>
                                
                                <div title="Wiegerinck ontwerpt Explore Lab voor Fontys Hogescholen" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.dearchitect.nl/nieuws/2016/06/14/wiegerinck-ontwerpt-explore-lab-voor-fontys-hogescholen.html" onmousedown="TrackCoverage(this,17973);" target="_blank">Wiegerinck ontwerpt Explore Lab voor Fontys Hogescholen</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">14</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.dearchitect.nl</div></div>
                                
                                <div title="Studenten spelen musicalklassieker Anatevka" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://tilburg.com/nieuws/studenten-spelen-musicalklassieker-anatevka/" onmousedown="TrackCoverage(this,17974);" target="_blank">Studenten spelen musicalklassieker Anatevka</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">14</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    tilburg.com</div></div>
                                
                                <div title="BICON Laboratories en Fontys slaan handen in &eacute;&eacute;n" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.regioinbedrijf.nl/bedrijfsnieuws/bicon-laboratories-en-fontys-slaan-handen-in-een.8914/" onmousedown="TrackCoverage(this,17956);" target="_blank">BICON Laboratories en Fontys slaan handen in &eacute;&eacute;n</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">13</div>
                                <div class="pp_date_month">jun</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.regioinbedrijf.nl</div></div>
                                </div><div style='display:none;' id="coverageset6">
                                <div title="Nieuwe lokalen Fontys boven bieb" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_file_icon"></div>
                                <a href="//content.presspage.com/uploads/1191/krantenartikel.pdf?10000" onmousedown="TrackCoverage(this,14155);TrackVisits.resourceClicked(TrackVisits.visitTypes.downloadItemType,14155);" target="_blank">Nieuwe lokalen Fontys boven bieb</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">08</div>
                                <div class="pp_date_month">jan</div>
                                <div class="pp_date_year">2016</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    (pdf)</div></div>
                                
                                <div title="RTL Nieuws: Enige meester tussen juffen: &#039;In de pauze gaat het over GTST en nieuwe kleren&#039;" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_url_icon"></div>
                                <a href="http://www.rtlnieuws.nl/nieuws/binnenland/enige-meester-tussen-juffen-de-pauze-gaat-het-over-gtst-en-nieuwe-kleren" onmousedown="TrackCoverage(this,12414);" target="_blank">RTL Nieuws: Enige meester tussen juffen: &#039;In de pauze gaat het over GTST en nieuwe kleren&#039;</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">15</div>
                                <div class="pp_date_month">okt</div>
                                <div class="pp_date_year">2015</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    www.rtlnieuws.nl</div></div>
                                
                                <div title="Brabants Dagblad: &#039;Meesters mogen de kleuters even overslaan&#039;" class="pp_coverage_title_items pp_one-of-one">
                                <div class="pp_coverage_file_icon"></div>
                                <a href="//content.presspage.com/uploads/1191/meestersmogendekleutersevenoverslaan.pdf?10000" onmousedown="TrackCoverage(this,12438);TrackVisits.resourceClicked(TrackVisits.visitTypes.downloadItemType,12438);" target="_blank">Brabants Dagblad: &#039;Meesters mogen de kleuters even overslaan&#039;</a><div class="pp_coverage_date_items">

                                <div class="pp_date_day">15</div>
                                <div class="pp_date_month">okt</div>
                                <div class="pp_date_year">2015</div>
                            
                                    </div>
                                    <div class="pp_coverage_source">
                                    (pdf)</div></div>
                                </div></div></div>
<form name="hiddenfields">
    <input type="hidden" name="current_coverageset" id="current_coverageset" value="1">
    <input type="hidden" name="total_coveragesets" id="total_coveragesets" value="6">
</form>
</div>
</div>
    <div class="clearboth"></div>
    </div>
    <div class="bottom_main_client"></div>
        </div>
<!--googleoff: all-->

<!--googleon: all-->
<div class="clearboth"></div>
</div>
</div>
</div>
</main>
</div>
<footer data-module="accordion" class="ppcl-wrapper">
    <div class="row expanded">
        <div class="columns small-12">
            <div class="row">
                <div class="small-12 medium-4 columns">
                    <div class="list-wrapper">
                        <div class="list-title" >
                            <h5 class="">Studiekeuze</h5>
                        </div>
                        <ul class="list">
                            <ul class="list">
                                <li><a href="https:///www.fontys.nl/voltijd/" class="normal" title="https:///www.fontys.nl/voltijd/">Voltijdbachelors</a></li>
                            </ul>
                            <li><a href="https://www.fontys.nl/deeltijdhbo" class="normal" title="https://www.fontys.nl/deeltijdhbo">Deeltijdbachelors</a></li>
                            <li><a href="https://fontys.nl/masteropleidingen/" class="normal" title="https://fontys.nl/masteropleidingen/">Masters</a></li>
                            <ul class="list">
                                <li><a href="https://fontys.nl/Studeren/Hulp-bij-studiekeuze.htm" class="normal" title="Hulp bij studiekeuze">Hulp bij studiekeuze</a></li>
                                <li><a href="https://fontys.nl/Studeren/Hulp-bij-studiekeuze/Agenda.htm" class="normal" title="Agenda studiekeuzeactiviteiten">Open dagen en meeloopdagen</a></li>
                            </ul>
                            <li><a href="https://fontys.nl/aanmelden/" class="normal" title="https://fontys.nl/aanmelden/">Aanmelden</a></li>
                        </ul>
                    </div>
                </div>
                <div class="small-12 medium-4 columns">
                    <div class="list-wrapper">
                        <div class="list-title" >
                            <h5 class="">Contact</h5>
                        </div>
                        <ul class="list">
                            <li>Telefoon: 08850 80000</li>
                            <li><a href="https://fontys.nl/Over-Fontys/Contact-en-locaties.htm" class="normal" title="Contact en locaties">Whatsapp</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Contact-en-locaties/Fontyslocaties.htm" class="normal" title="Fontyslocaties">Locaties</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Contact-en-locaties/Medewerker-zoeken.htm" class="normal" title="Medewerker of afdeling zoeken">Zoek medewerker of afdeling</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Contact-en-locaties/Fontys-instituten.htm" class="normal" title="Fontys instituten">Fontysinstituten</a></li>
                        </ul>
                    </div>
                </div>
                <div class="small-12 medium-4 columns">
                    <div class="list-wrapper">
                        <div class="list-title" >
                            <h5 class="">Fontys</h5>
                        </div>
                        <ul class="list">
                            <li><a href="https://fontys.nl/Innovatie-en-onderzoek/Lectoraten.htm" class="normal" title="Lectoraten">Onderzoek</a></li>
                            <li><a href="https://www.fontys.nl/nieuws/" class="normal" title="https://www.fontys.nl/nieuws/">Nieuws</a></li>
                            <li><a href="https://fontys.nl/Innovatie-en-onderzoek/Expertisecentra.htm" class="normal" title="Expertisecentra">Expertisecentra</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Werken-bij-Fontys/Vacatures.htm" class="normal" title="Vacatures">Vacatures</a></li>
                            <li><a href="https://fontys.nl/Over-Fontys/Regelingen-statuten-en-reglementen.htm" class="normal" title="Regelingen, statuten en reglementen">Regelingen, statuten en reglementen</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row expanded ">
        <div class="columns small-12">
            <div class="row">
                <div class="small-12 medium-4 medium-push-8 columns">
                    <ul class="list list-inline">
                        <li class="icon icon-rounded icon-footer">
                            <a href="http://facebook.com/fontyshogescholen" class="facebook"><span class="hide-accessible"> Facebook </span></a>
                        </li>
                        <li class="icon icon-rounded icon-footer">
                            <a href="http://twitter.com/fontys" class="twitter"><span class="hide-accessible"> Twitter </span></a>
                        </li>
                        <li class="icon icon-rounded icon-footer">
                            <a href="http://www.youtube.com/user/FontysHogescholen" class="youtube"><span class="hide-accessible"> YouTube </span></a>
                        </li>
                        <li class="icon icon-rounded icon-footer">
                            <a href="http://www.linkedin.com/companies/fontys-hogescholen" class="icon icon-linkedin2"><span class="hide-accessible"> LinkedIn </span></a>
                        </li>
                        <li class="icon icon-rounded icon-footer">
                            <a href="https://www.pinterest.com/fontys/" class="icon icon-pinterest"><span class="hide-accessible"> Pinterest </span></a>
                        </li>
                        <li class="icon icon-rounded icon-footer">
                            <a href="http://www.fontysblogt.nl/" class="icon icon-blogger"><span class="hide-accessible"> Fontys Blogt </span></a>
                        </li>
                        <li class="icon icon-rounded icon-footer">
                            <a href="http://instagram.com/fontyshogescholen" class="icon icon-instagram"><span class="hide-accessible"> Instagram </span></a>
                        </li>
                    </ul>
                </div>
                <div class="small-12 medium-8 medium-pull-4 columns">
                    <a href="https://fontys.nl/Cookieverklaring.htm" class="navigation" title="Cookieverklaring">Cookieverklaring </a>
                    <a href="https://fontys.nl/Over-Fontys/Regelingen-statuten-en-reglementen/Privacyverklaring.htm" class="navigation" title="Privacyverklaring">Privacyverklaring</a>
                    <!-- 		                	<a href="#" title="Wijzig mijn cookie instellingen">Wijzig mijn cookie instellingen</a> -->
                    <!-- 		                	<a href="#" title="Ga naar de Privacyverklaring">Privacyverklaring</a>	 -->
                </div>
                <!-- <div class="small-12 medium-4 medium-pull-8 columns">
                </div>  -->
            </div>
        </div>
    </div>
</footer>
<div class="scroll-indicator" data-module="scrollindicator">

<!-- FOOTER -->

</div><!-- pp-bodywrapper -->
<div class="loadLater" id="placeholderFBSDK"></div>
<textarea class="loadlater_placeholder" id="placeholderFBSDK-content">
    <div id="fb-root"></div>
    <script>
        (function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.3&amp;appId=432237830148468";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
</script>
</textarea>
<script>
var showAddthis = 1;
var cookieModuleStatus = 0;
</script>
<script type="text/javascript" src="//client.presspage.com/js/modules_v2h.js?v=20"></script>
<script type="text/javascript">
    if ((cookiecontrol == 'accepted') || (cookieModuleStatus == 0)) {
        loadScript("//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-591e8b1a9c5806d1", function(){
            //initialization code
        });
    }
    </script>

<span class="loadLater" id="placeholderTwitterlib"></span>
<textarea class="loadlater_placeholder" id="placeholderTwitterlib-content">
        <!-- Load Twitter JS-API asynchronously -->
      <script type="text/javascript" charset="utf-8">
        window.twttr = (function (d,s,id) {
            var t, js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return; js=d.createElement(s); js.id=id;
            js.src="//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs);
            return window.twttr || (t = { _e: [], ready: function(f) { t._e.push(f) } });
        }(document, "script", "twitter-wjs"));

                twttr.ready(function(twttr) {
            _ga.trackTwitter(); //Google Analytics tracking
        });
              </script>
</textarea>


<script type="text/javascript">

    var jQueryCall = (typeof pp_jquery !== 'undefined') ? pp_jquery : $;


    function isEmptyObj(obj) {

       if (jQueryCall.isEmptyObject(obj) && jQueryCall.browser.msie && jQueryCall.browser.version < 9) {

            return JSON.stringify(obj) === JSON.stringify({});
       }

       return jQueryCall.isEmptyObject(obj);
    }

    var addCSRFtoken = function (data, url)
    {
        if (isEmptyObj(data) || isExternalDomain(url)) {

            return data;
        }

        if (typeof data === 'string') {
            data = data.indexOf(window.CSRFformString) == -1 ? window.CSRFformString + '&' + data : data;
        }

        if (typeof data === 'object') {
            data.append(window.CSRFtokenName, window.CSRFtoken);
        }

        return data;
    }

    //Returns true if the request url domain is NOT the current domain or presspage
    var isExternalDomain = function(url)
    {

        var urlHost = getUrlHostName(url);
        var currentHost = getCurrentDomain();

        //the default behaviour is to add the token
        if (urlHost === null || currentHost === null ) {
            return false;
        }

        if (urlHost === currentHost || urlHost.indexOf("presspage") > 0) {
            return false;
        }

        return true;
    }

    //Returns the hostname of an url in lowercase
    var getUrlHostName = function(url)
    {
        var anchor = jQueryCall('<a>', { href:url } )[0];
        var hostname = anchor.hostname;
        if (hostname) {
            return hostname.toLowerCase();
        }

        return null;
    }

    //Returns the hostname of current url in lowercase
    var getCurrentDomain = function()
    {
        if(window && window.location && window.location.hostname){
            return window.location.hostname.toLowerCase();
        }

        return null;
    }


    window.CSRFtoken = '99185a282cce74b1c295';
    window.CSRFtokenName = '_csrf_token';
    window.CSRFformString = CSRFtokenName + '=' + CSRFtoken;

    //Add CSRF token to async call data
    jQueryCall.ajaxPrefilter(function (options, originalOptions, jqXHR) {
        options.data = addCSRFtoken(options.data, options.url);
    });

    //Add CSRF token to forms
    jQueryCall('form[method="post"]').each(function (n) {
        var inputHtml = '<input type="hidden"\
                         name="' + window.CSRFtokenName+'"\
                         value="' + window.CSRFtoken + '" >';
        jQueryCall(this).prepend(inputHtml);
    });

    //Handle the FineUploader call
    if (!jQueryCall.isEmptyObject(XMLHttpRequest)) {
        (function(open) {
            XMLHttpRequest.prototype.open = function(method, url, async, user, pass) {
                this.addEventListener("readystatechange", function() {
                    if (method.toLowerCase() == 'post') {
                        this.isPost = true;
                        this.url = url;
                    }
                }, false);
                open.call(this, method, url, async, user, pass);
            };
        })(XMLHttpRequest.prototype.open);

        (function(send) {

            XMLHttpRequest.prototype.send = function(data) {
                if (!!this.isPost === true) {
                    data = addCSRFtoken(data, this.url);
                }
                send.call(this, data);
            };

        })(XMLHttpRequest.prototype.send);
    }

</script>

<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"75ecccde34","applicationID":"14886446","transactionName":"bwYBZkFUCEBWUExeDFZMNkBaGg9dU1ZAGRNQEw==","queueTime":0,"applicationTime":26,"atts":"Q0ECEAlOG04=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>
</html>

