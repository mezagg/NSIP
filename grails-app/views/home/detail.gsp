<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="layout" content="main"/>
    </head>
    <body>
        <div class="row" style="opacity: 1;">
            <div class="col-lg-12">
                <div id="email-box" class="clearfix">
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="email-header-mobile" class="visible-xs visible-sm clearfix">
                                <div id="email-header-title-mobile" class="pull-left">
                                    <i class="fa fa-inbox"></i> Inbox
                                </div>
                                <a href="email-compose.html" class="btn btn-success email-compose-btn pull-right">
                                    <i class="fa fa-pencil-square-o"></i> Compose email
                                </a>
                            </div>
                            <header id="email-header" class="clearfix">
                                <div id="email-header-title" class="visible-md visible-lg">
                                    <i class="fa fa-inbox"></i> Inbox
                                </div>
                                <div id="email-header-tools">
                                    <div class="btn-group">
                                        <a href="email-inbox.html" class="btn btn-primary">
                                            <i class="fa fa-chevron-left"></i> Back to inbox
                                        </a>
                                    </div>
                                    <div class="btn-group">
                                        <button class="btn btn-primary" type="button" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Refresh">
                                            <i class="fa fa-refresh"></i>
                                        </button>
                                        <button class="btn btn-primary" type="button" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Spam">
                                            <i class="fa fa-exclamation-circle"></i>
                                        </button>
                                        <button class="btn btn-primary" type="button" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Erase">
                                            <i class="fa fa-trash-o"></i>
                                        </button>
                                    </div>
                                    <div class="btn-group">
                                        <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle has-tooltip" type="button" title="" data-original-title="Labels">
                                            <i class="fa fa-tag"></i> <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#"><i class="fa fa-circle green"></i> Work</a></li>
                                            <li><a href="#"><i class="fa fa-circle red"></i> Home</a></li>
                                            <li><a href="#"><i class="fa fa-circle yellow"></i> Personal</a></li>
                                            <li><a href="#"><i class="fa fa-circle purple"></i> Documents</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div id="email-header-pagination" class="pull-right hidden-xs">
                                    <div class="btn-group pagination pull-right">
                                        <button class="btn btn-primary" type="button" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Previous">
                                            <i class="fa fa-chevron-left"></i>
                                        </button>
                                        <button class="btn btn-primary" type="button" title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Next">
                                            <i class="fa fa-chevron-right"></i>
                                        </button>
                                    </div>
                                    <div class="num-items pull-right hidden-xs">
                                        1-50 from 5,912
                                    </div>
                                </div>
                            </header>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div id="email-navigation" class="email-nav-nano hidden-xs hidden-sm has-scrollbar">
                                <div class="email-nav-nano-content" tabindex="0" style="right: -16px;">
                                    <a href="email-compose.html" class="btn btn-success email-compose-btn">
                                        <i class="fa fa-pencil-square-o"></i> Compose email
                                    </a>
                                    <ul id="email-nav-items" class="clearfix">
                                        <li class="active">
                                            <a href="email-inbox.html">
                                                <i class="fa fa-inbox"></i>
                                                Inbox
                                                <span class="label label-primary pull-right">83</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-star"></i>
                                                Starred
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-pencil"></i>
                                                Drafts
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-envelope"></i>
                                                Sent
                                                <span class="label label-default pull-right">11</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-trash-o"></i>
                                                Trash
                                                <span class="label label-default pull-right">1,292</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div id="email-nav-labels-wrapper">
                                        <div class="email-nav-headline">
                                            Labels
                                        </div>
                                        <ul id="email-nav-labels" class="clearfix">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-circle emerald"></i>
                                                    Important
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-circle red"></i>
                                                    Home
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-circle green"></i>
                                                    Work
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-circle yellow"></i>
                                                    Personal
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-circle purple"></i>
                                                    Documents
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 611px; transform: translate(0px, 0px);"></div></div></div>
                            <div id="email-detail" class="email-detail-nano has-scrollbar" style="height: 627px;">
                                <div class="email-detail-nano-content" tabindex="0" style="right: -16px;">
                                    <div id="email-detail-inner">
                                        <div id="email-detail-subject" class="clearfix">
                                            <span class="subject">FW: Like your new movie</span>
                                            <span class="label label-success">Work</span>
                                        </div>
                                        <div id="email-detail-sender" class="clearfix">
                                            <div class="picture hidden-xs">
                                                <img src="img/samples/angelina-300.jpg" alt="">
                                            </div>
                                            <div class="users">
                                                <div class="from clearfix">
                                                    <div class="name">
                                                        Angelina Jolie
                                                    </div>
                                                    <div class="email hidden-xs">
                                                        &lt;angelina@jolie.com<script cf-hash="f9e31" type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("cf-hash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}}}catch(u){}}();/* ]]> */</script>&gt;
                                                    </div>
                                                </div>
                                                <div class="to">
                                                    To: <span>Me, Brad Pitt</span>
                                                </div>
                                            </div>
                                            <div class="tools">
                                                <div class="date">
                                                    Sep 12 (6 days ago)
                                                </div>
                                                <div class="btns">
                                                    <div class="btn-group">
                                                        <button class="btn btn-success" type="button">
                                                            <i class="fa fa-mail-reply"></i>
                                                        </button>
                                                        <button data-toggle="dropdown" class="btn btn-success dropdown-toggle" type="button">
                                                            <span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu">
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-mail-reply"></i> Reply
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-mail-reply-all"></i> Reply all
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-mail-forward"></i> Forward
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <i class="fa fa-print"></i> Print
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="email-body">
                                            <p>
                                                Hey Scarlett,
                                            </p>
                                            <p>
                                                Well, the way they make shows is, they make one show. That show's called a pilot. Then they
                                                show that show to the people who make shows, and on the strength of that one show they decide
                                                if they're going to make more shows. <a href="#">Some pilots</a> get picked and become television
                                                programs. Some don't, become nothing. She starred in one of the ones that became nothing.
                                            </p>
                                            <p>
                                                Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as
                                                the most popular gun in American crime. Do you believe that shit? It actually says that in
                                                the <a href="#">little book</a> that comes with it: the most popular gun in American crime.
                                                Like they're actually proud of that shit.
                                            </p>
                                            <p>
                                                <b>You don't get sick!</b><br>
                                                Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses
                                                differently than mine. You don't get sick, I do. That's also clear. But for some reason,
                                                you and I react the exact same way to water. We swallow it too fast, we choke. We get some
                                                in our lungs, we drown. However unreal it may seem, we are connected, you and I. We're on
                                                the same curve, just on opposite ends.
                                            </p>
                                        </div>
                                        <div id="email-detail-attachments">
                                            <div id="email-attachments-header" class="clearfix">
                                                <div class="headline">
                                                    <i class="fa fa-paperclip"></i> <span>Attachments:</span> <b>3</b> -
                                                </div>
                                                <div class="tools">
                                                    <a href="#">Download all</a>
                                                </div>
                                            </div>
                                            <div id="email-attachments-content">
                                                <ul class="clearfix">
                                                    <li>
                                                        <div class="img">
                                                            <a href="#">
                                                                <img src="img/samples/hdr/small/img_5.jpg" alt="">
                                                            </a>
                                                        </div>
                                                        <span class="name">
                                                            nature.jpg
                                                        </span>
                                                        <a href="#">Download</a>
                                                    </li>
                                                    <li>
                                                        <div class="img">
                                                            <a href="#">
                                                                <img src="img/samples/hdr/small/img_8.jpg" alt="">
                                                            </a>
                                                        </div>
                                                        <span class="name">
                                                            bratislava.jpg
                                                        </span>
                                                        <a href="#">Download</a>
                                                    </li>
                                                    <li>
                                                        <div class="img">
                                                            <i class="fa fa-file"></i>
                                                        </div>
                                                        <span class="name">
                                                            invoice.pdf
                                                        </span>
                                                        <a href="#">Download</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="nano-pane" style="display: none;"><div class="nano-slider" style="height: 611px; transform: translate(0px, 0px);"></div></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
