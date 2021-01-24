<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!-- Copyright (C) 2010 JST-BIRD MassBank -->
<!-- Copyright (C) 2017 MassBank consortium -->

<!-- This file is part of MassBank. -->

<!-- MassBank is free software; you can redistribute it and/or -->
<!-- modify it under the terms of the GNU General Public License -->
<!-- as published by the Free Software Foundation; either version 2 -->
<!-- of the License, or (at your option) any later version. -->

<!-- This program is distributed in the hope that it will be useful, -->
<!-- but WITHOUT ANY WARRANTY; without even the implied warranty of -->
<!-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the -->
<!-- GNU General Public License for more details. -->

<!-- You should have received a copy of the GNU General Public License -->
<!-- along with this program; if not, write to the Free Software -->
<!-- Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>MassBank | Database | Export</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Export of defined collections of spectra in MassBank.eu.">
	<meta name="keywords" content="APCI,ITFT,QFT,ESI,EI,LC,IT,GC,TOF,QTOF,FAB,MALDI,APPI,MS,MS/MS,MS2,MS3,MS4,CI,FI,FD,QQ,Merged,Positive,Negative,QIT,ITTOF,EB,mass spectra,MassBank,m/z">
	<meta name="author" content="MassBank">
	<meta name="copyright" content="Copyright (c) 2006 MassBank Project and NORMAN Association (c) 2011" >
	<link rel="icon" href="/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="css/w3.css">
	<link rel="stylesheet" type="text/css" href="css/w3-theme-grey.css">
	<link rel="stylesheet" type="text/css" href="css/massbank.css">
	<link rel="stylesheet" type="text/css" href="fontawesome-free-5.13.1-web/css/all.min.css">
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/MassCalc.js"></script>
	<script src="js/svg4everybody-2.1.9.min.js"></script>
	<script>svg4everybody();</script>
	
	<!-- Matomo -->
	<link rel="stylesheet" type="text/css" href="css/cookieconsent-3.1.1.min.css">
	<script src="https://www.ufz.de/stats/piwik.js" type="text/javascript"></script>
	<script type="text/javascript">
	try  {
        var piwikTracker = Piwik.getTracker("https://www.ufz.de/stats/piwik.php", 24);
            if(localStorage.getItem('cookie-banner') == '0' || localStorage.getItem('cookie-banner') === null) {
                piwikTracker.disableCookies();
            }
            piwikTracker.trackPageView();
            piwikTracker.enableLinkTracking();
        } catch( err ) {}
	</script>
	
	<noscript>
		<img src="https://www.ufz.de/stats/piwik.php?idsite=24" style="border:0" alt="" />
	</noscript>
	
	<script type="text/javascript">
            $(document).ready(function() {
                    if(localStorage.getItem('cookie-banner') === null) {
                        $('#cookie-banner').modal();
                        
                        $('#cookie-banner button.btn-secondary').off('click').on('click', function() {
                            localStorage.setItem('cookie-banner', '0');
                                        try  {
                var piwikTracker = Piwik.getTracker("https://www.ufz.de/stats/piwik.php", 24);
                if(localStorage.getItem('cookie-banner') == '0' || localStorage.getItem('cookie-banner') === null) {
                    piwikTracker.disableCookies();
                }
                piwikTracker.trackPageView();
                piwikTracker.enableLinkTracking();
            } catch( err ) {}
                        });
                        $('#cookie-banner button.btn-success').off('click').on('click', function() {
                            localStorage.setItem('cookie-banner', '1');
                                        try  {
                var piwikTracker = Piwik.getTracker("https://www.ufz.de/stats/piwik.php", 24);
                if(localStorage.getItem('cookie-banner') == '0' || localStorage.getItem('cookie-banner') === null) {
                    piwikTracker.disableCookies();
                }
                piwikTracker.trackPageView();
                piwikTracker.enableLinkTracking();
            } catch( err ) {}
                        });
                    }
				});
	</script>
	
	
</head>

<body class="w3-theme-gradient">
	<noscript>
		<div class="w3-panel w3-yellow">
  			<p>Your JavaScript is disabled. To properly show MassBank please enable JavaScript and reload.</p>
  		</div>
  	</noscript>

	<header class="w3-container w3-top w3-text-dark-grey w3-grey">
		<div class="w3-bar">
			<div class="w3-left">
				<h1>
					<b>Export</b>
				</h1>
			</div>
			<div style="position: absolute; transform: translateY(-50%); bottom: 0; right: 0">
				<div class="w3-container">
					<div class="w3-text-blue">
						<svg viewBox="0 0 32 28" style="width: 16px">
							<use href="img/arrow.svg#arrow_right" />
						</svg>
						<a class="w3-text-dark-grey" href="#" onclick="document.getElementById('id01').style.display='block'">
							<b>Documentation</b>
						</a>						
					</div>
				</div>
				<div class="w3-container">
					<div class="w3-text-blue">
						<svg viewBox="0 0 32 28" style="width: 16px">
							<use href="img/arrow.svg#arrow_right" />
						</svg>
						<a id="openMassCalc" class="w3-text-dark-grey" href=""><b>Mass calculator</b></a>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="masscalc.html"/>
	</header>
	
	<div style="padding-top:74px">
		<jsp:include page="menu.html"/>
	</div>
	
	<div class="w3-padding">
		<h3><b>Available downloads</b></h3>
		
		<div class="w3-col" style="width:120px">
			<a href="Name" target="_blank"><b>Name</b></a>
		</div>
		 
		<div class="w3-rest">
			 Description
		</div>
	</div>

	<br>
	<jsp:include page="copyrightline.html"/>

	<div id="id01" class="w3-modal">
		<div class="w3-modal-content w3-animate-top" style="height: 90%;">
			<header class="w3-container w3-indigo">
				<div class="w3-display-topright">
					<a href="https://massbank.github.io/MassBank-documentation/" target="_blank"
						onclick="document.getElementById('id01').style.display='none'" class="w3-button">
						&#8599;
					</a>
					<span onclick="document.getElementById('id01').style.display='none'" class="w3-button">
						&times;
					</span>
				</div>
				<h4>Documentation at
					https://massbank.github.io/MassBank-documentation/</h4>
			</header>

			<iframe src="https://massbank.github.io/MassBank-documentation/"
				id="docs" style="width: 100%; height: 100%;"></iframe>
		</div>
	</div>
	
	<script src="js/cookieconsent-3.1.1.min.js" type="text/javascript"></script>
	<script src="js/cookieconsent-banner.js" type="text/javascript"></script>
</body>
</html>