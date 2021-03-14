




<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="robots" content="noindex">
<title>위포트 - 믿을 수 있는 취업전문가</title>



    <!--Favicon-->
	<link rel="icon" type="image/svg+xml" href="http://static.weport.co.kr/static/favicon.ico">

	<!-- CSS -->
    <link href="./css/bootstrap.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
    <link href="./css/common.css" rel="stylesheet">

    <!-- -----SCRIPT----- -->
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script type="text/javascript" src="./js/bootstrap.js"></script>

	<!-- 다국어지원 -->
	<link rel="prefetch" type="application/l10n" href="./l10n/locales.ini" />
	<script type="text/javascript" src="./js/l10n.js"></script>
    <!--셀렉트메뉴-->

    <script type="text/javascript" src="./js/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="./js/placeholders.jquery.min.js"></script>
    <script type="text/javascript" src="./js/jsDynamicLoader.js"></script>
    <script type="text/javascript">
		$(function(){
			$(".zoom select").change(function(){
				$("div.select_box","<p>").text($("</p>","option:selected",this).text());
			}).trigger("change");
		});

		<!--모바일active-->
		//$('body *').on('touchstart', function (){});

	   	//크로스도메인 이슈를 피하기 위해 뷰어와 컨테이너의 도메인을 동일하게 설정해야 합니다.
	    try {
	    	document.domain = document.domain.substring( document.domain.indexOf( '.' ) + 1 );
	   	} catch( e ) {
	   		console.error( e );
	    }

	   	//ie9 미만의 브라우저는 웹뷰어를 지원하지 않는다. html5지원 안되므로.
	   	var agent = navigator.userAgent.toLowerCase();
	    if ( -1 < agent.indexOf( 'trident' ) || -1 < agent.indexOf( 'msie' ) ) { //IE의 경우,
	    	if ( navigator.appVersion.indexOf( 'MSIE 7.') > 0 || navigator.userAgent.match(/Trident\/(\d.\d)/i)[1] == '4.0' || navigator.appVersion.indexOf( 'MSIE 8' ) > 0 ) {
		   		//IE7 이거나 IE8인 경우,
		   		//alert("웹뷰어는 HTML5 지원되는 브라우저(Internet Explorer 9 이상)에서만 사용이 가능합니다.");
		   		location.href = "./lowIEMsg.html";
	   		}
	   	}

		var language = "ko";
		//15.10.06. 사용자탭(샘플리스트/로그인) 활성화 여부
		var contentId = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbmRwb2ludF91cmwiOiJodHRwczovL3d3dy53ZXBvcnQuY28ua3IvZG9jdW1lbnQvdXNlci1jb250ZW50cy83MTE2NTMwL3JlYWRlciIsInByaW50X3VybCI6Imh0dHBzOi8vd3d3LndlcG9ydC5jby5rci9kb2N1bWVudC91c2VyLWNvbnRlbnRzLzcxMTY1MzAvcmVhZGVyL3ByaW50IiwidXNlcl9jb250ZW50X2lkIjo3MTE2NTMwLCJhbGxvd19kb3dubG9hZCI6ZmFsc2UsImV4cGlyZWRfYXQiOiIyMDIxLTAzLTE0VDEyOjIyOjAxLjA5ODEwOSswMDowMCIsImRvY3VtZW50X3VybCI6Imh0dHBzOi8vczMuYXAtbm9ydGhlYXN0LTIuYW1hem9uYXdzLmNvbS9hc3NldHMuc3RvcmFnZS53ZXBvcnQuY28ua3IvMjAyMTAxMjkvZ2NjbndtbG8yY2plMmllaWRkeTVuNGg4c21iamVndWxtMGluaDQxZHhqbmhiYzF5cGQ5aHU0YW81dXNrIn0.id13sGfW2gH-gII5hElxPKvppA7Qs234cpIhzAORsPM";

		var ico_handTool_on = false;
		var ico_onePage_on = false;
		var ico_twoPage_on = false;
		var ico_print_on = false;

		// 모바일 판단 변수
	    var isMobile = false ;
		var isIphone = false;

	    if ( agent.indexOf( 'opera' ) != -1 ) {
	    	isMobile = true;
	   	} else if ( agent.indexOf( 'iphone' ) != -1 ) {
	        isMobile = true;
	        isIphone = true;
	    } else if ( agent.indexOf( 'ipod' ) != -1 ) {
	        isMobile = true;
	    } else if ( agent.indexOf( 'ipad' ) != -1 ) {
	        isMobile = true;
	    } else if ( agent.indexOf( 'android' ) != -1 ) {
	        isMobile = true;
	    } else if ( agent.indexOf( 'iemobile' ) != -1 ) {
	        isMobile = true;
	    } else if ( agent.indexOf( 'lgtelecom' ) != -1 ) {
	        isMobile = false;
	    } else if ( agent.indexOf( 'safari' ) != -1 ) {
	        isMobile = false;
	    } else if ( agent.indexOf( 'chrome' ) != -1 ) {
	        isMobile = false;
	    } else if ( agent.indexOf( 'firefox' ) != -1 ) {
	        isMobile = false;
	    } else if ( agent.indexOf( 'netscape' ) != -1 ) {
	        isMobile = false;
	    } else {
	        isMobile = false;
	    }

		var page_scale_auto;
		var page_scale_fit;
		var page_scale_width;

		$(document).ready( function() {

			document.webL10n.setLanguage( language );
			setTimeout( function() {
				document.webL10n.ready(function() {
					page_scale_auto =_( 'page_scale_auto' );
			    	page_scale_fit = _( 'page_scale_fit' );
			    	page_scale_width = _( 'page_scale_width' );
				});
			}, 200);
		});

		var isbrazeLogging = true

		window.addEventListener( 'load', function() {
			if ('false' === 'true') {
				alert('만료되었습니다.');
				window.location.href = 'https://weport.co.kr/document/company';
				isbrazeLogging = false
			}

			// Braze Load
			if(isbrazeLogging) {
				+function(a,p,P,b,y){a.appboy={};a.appboyQueue=[];for(var s="DeviceProperties Card Card.prototype.dismissCard Card.prototype.removeAllSubscriptions Card.prototype.removeSubscription Card.prototype.subscribeToClickedEvent Card.prototype.subscribeToDismissedEvent Banner CaptionedImage ClassicCard ControlCard ContentCards ContentCards.prototype.getUnviewedCardCount Feed Feed.prototype.getUnreadCardCount ControlMessage InAppMessage InAppMessage.SlideFrom InAppMessage.ClickAction InAppMessage.DismissType InAppMessage.OpenTarget InAppMessage.ImageStyle InAppMessage.Orientation InAppMessage.TextAlignment InAppMessage.CropType InAppMessage.prototype.closeMessage InAppMessage.prototype.removeAllSubscriptions InAppMessage.prototype.removeSubscription InAppMessage.prototype.subscribeToClickedEvent InAppMessage.prototype.subscribeToDismissedEvent FullScreenMessage ModalMessage HtmlMessage SlideUpMessage User User.Genders User.NotificationSubscriptionTypes User.prototype.addAlias User.prototype.addToCustomAttributeArray User.prototype.getUserId User.prototype.incrementCustomUserAttribute User.prototype.removeFromCustomAttributeArray User.prototype.setAvatarImageUrl User.prototype.setCountry User.prototype.setCustomLocationAttribute User.prototype.setCustomUserAttribute User.prototype.setDateOfBirth User.prototype.setEmail User.prototype.setEmailNotificationSubscriptionType User.prototype.setFirstName User.prototype.setGender User.prototype.setHomeCity User.prototype.setLanguage User.prototype.setLastKnownLocation User.prototype.setLastName User.prototype.setPhoneNumber User.prototype.setPushNotificationSubscriptionType InAppMessageButton InAppMessageButton.prototype.removeAllSubscriptions InAppMessageButton.prototype.removeSubscription InAppMessageButton.prototype.subscribeToClickedEvent display display.automaticallyShowNewInAppMessages display.destroyFeed display.hideContentCards display.showContentCards display.showFeed display.showInAppMessage display.toggleContentCards display.toggleFeed changeUser destroy getDeviceId initialize isPushBlocked isPushGranted isPushPermissionGranted isPushSupported logCardClick logCardDismissal logCardImpressions logContentCardsDisplayed logCustomEvent logFeedDisplayed logInAppMessageButtonClick logInAppMessageClick logInAppMessageHtmlClick logInAppMessageImpression logPurchase openSession registerAppboyPushMessages removeAllSubscriptions removeSubscription requestContentCardsRefresh requestFeedRefresh requestImmediateDataFlush resumeWebTracking setLogger stopWebTracking subscribeToContentCardsUpdates subscribeToFeedUpdates subscribeToInAppMessage subscribeToNewInAppMessages toggleAppboyLogging trackLocation unregisterAppboyPushMessages wipeData".split(" "),i=0;i<s.length;i++){for(var m=s[i],k=a.appboy,l=m.split("."),j=0;j<l.length-1;j++)k=k[l[j]];k[l[j]]=(new Function("return function "+m.replace(/\./g,"_")+"(){window.appboyQueue.push(arguments); return true}"))()}window.appboy.getCachedContentCards=function(){return new window.appboy.ContentCards};window.appboy.getCachedFeed=function(){return new window.appboy.Feed};window.appboy.getUser=function(){return new window.appboy.User};(y=p.createElement(P)).type='text/javascript';
				y.src='https://js.appboycdn.com/web-sdk/3.1/appboy.min.js';
				y.async=1;(b=p.getElementsByTagName(P)[0]).parentNode.insertBefore(y,b)
				}(window,document,'script');

				appboy.initialize('a3c74333-bf4d-486f-a65e-4ac58972940f', { baseUrl: 'https://sdk.iad-06.braze.com', enableLogging: true });
				appboy.display.automaticallyShowNewInAppMessages();
				/*
				* If you have a unique identifier for this user (e.g. they are logged into your site) it's a good idea to call
				* changeUser here.
				* See https://js.appboycdn.com/web-sdk/3.0/doc/modules/appboy.html#changeuser for more information.
				*/        

				if(window.userID)
					appboy.changeUser(window.userID);

				appboy.openSession();

				var eventName = "[위포트] 자료 열람 시작";
				var eventProperties = {
					'강의번호':'17642',
					'강의명':'[위포트] 자소서 자동완성 가이드북',
					'강사님명': null
				};       

				appboy.logCustomEvent(eventName, eventProperties);
			}

			//다국어 처리
			document.webL10n.setLanguage( language );
	    	//화면구성요소 정의
		    var viewerFrame = document.getElementById( 'viewerFrame' );

		    var viewerUrl = '../ezpdfwebviewer/viewer.jsp?optNoUi=true&optLang=' + language;
		    if ( contentId ) {
		        if ( contentId != "" ) {
			    	viewerUrl += "&contentId=" + contentId;
		        }
		    }
	    	//첫 로딩시 고정 배율 줄 경우,
    		//viewerUrl += "#zoom=page-fit";

		    var topArea = document.getElementById( 'spec_header' );
		    viewerFrame.style.height = ( window.innerHeight - topArea.getBoundingClientRect().height - 6 ) + 'px';

		    viewerFrame.src = viewerUrl;

		    setTimeout( function() {
				if( isMobile ) {
					document.getElementById( 'tbSearchKeyword' ).placeholder='검색';
					if( isIphone ) {
						document.getElementById( 'ico_search' ).src = "./images/header/ico_search_iphone.png";
					}
				}
			}, 100);

		});

		//화면크기가 변경되는 경우.
		window.addEventListener( 'resize', function( e ) {

			var viewerFrame = document.getElementById( 'viewerFrame' );
		    //높이조절
		    var topArea = document.getElementById( 'spec_header' );
		    viewerFrame.style.height = ( window.innerHeight - topArea.getBoundingClientRect().height - 6 ) + 'px';

		} );
var webviewer;
		//뷰어 콜백 처리.
		window.onWebViewerReady = function( viewer ) {
webviewer = viewer;
			//섬네일 목록 보기.
			document.getElementById( 'btnToggleSideBarThumnailList' ).addEventListener( 'click', function( e ) {
	        	if ( !viewer.yex.api.isSideBarOpenedAsThumbnailList() ) {
	        		document.getElementById( 'icon_list' ).src = "./images/header/ico_list_on.png";
	        		viewer.yex.api.openSideBarThumbnailList();
	       		} else {
	       			document.getElementById( 'icon_list' ).src = "./images/header/ico_list.png";
	       			viewer.yex.api.closeSideBar();
	            }
	        } );

			//한 페이지 보기
			document.getElementById( 'btnPageLayoutDocumentOnePage' ).addEventListener( 'click', function( e ) {
				viewer.yex.api.setPageLayoutDocumentNPage( 1 );
				viewer.yex.api.setCurrentScaleValue( 'page-fit' );
				document.getElementById( 'ico_pageTwo' ).src = "./images/header/ico_pageTwo.png";
				//ico_twoPage_on = false;
				var page = viewer.yex.pls.viewMode;
				//alert( "page : " + page );
				if( page == 1 ) {
					//ico_onePage_on = true;
        	    	document.getElementById( 'ico_pageOne' ).src = "./images/header/ico_pageFull_on.png";
        	    } else {
        	    	//ico_onePage_on = false;
        	    	document.getElementById( 'ico_pageOne' ).src = "./images/header/ico_pageFull.png";
        	    }
	        } );

			//두 페이지 보기
			document.getElementById( 'btnPageLayoutDocumentTwoPage' ).addEventListener( 'click', function( e ) {
				viewer.yex.api.setPageLayoutDocumentNPage( 2 );
				viewer.yex.api.setCurrentScaleValue( 'page-fit' );
				document.getElementById( 'ico_pageOne' ).src = "./images/header/ico_pageFull.png";
				//ico_onePage_on = false;
				var page = viewer.yex.pls.viewMode;
				//alert( "page : " + page );
				if( page != 2 ) {
					//ico_twoPage_on = true;
        	    	document.getElementById( 'ico_pageTwo' ).src = "./images/header/ico_pageTwo_on.png";
        	    } else {
        	    	//ico_twoPage_on = false;
        	    	document.getElementById( 'ico_pageTwo' ).src = "./images/header/ico_pageTwo.png";
        	    }
	        } );

			//페이지 표시
			viewer.yex.api.callback.onPageChange = function( viewer ) {
	        	document.getElementById( 'tbCurrentPage' ).value = viewer.yex.api.getCurrentPage();
	        };

	        viewer.yex.api.callback.onPDFReady = function( viewer ) {
				document.getElementById( 'tbTotalPages' ).value = viewer.yex.api.getTotalPageCount();
			    //viewer.yex.api.openSideBarOutlineList(); // 목차 열기
	        };

	        document.getElementById( 'tbCurrentPage' ).addEventListener( 'change', function( e ) {
	            viewer.yex.api.gotoPage( this.value );
	        } );

	        //배율 표시
	        viewer.yex.api.callback.onScaleChange = function( viewer ) {

	        	var scaleValue = viewer.yex.api.getCurrentScaleValue();
	            var sel = document.getElementById( 'selCurrentScale' );
	            var opts = sel.options;
	            var consume = false;
	            for ( var i = 0, ii = opts.length; i < ii; i++ ) {
	            	if ( opts[ i ].value == scaleValue ) {
	            		consume = true;
	                    sel.value = scaleValue;

	                    var d = document.getElementById( 'divZoomDisplay' );
	                    while ( d.firstChild ) {
	                	    d.removeChild( d.firstChild );
	                    }
	                    if ( scaleValue == 'auto' ) {
	                	    d.appendChild( document.createTextNode(page_scale_auto) );
	                    } else if ( scaleValue == 'page-fit' ) {
	                	    d.appendChild( document.createTextNode(page_scale_fit) );
	                    } else if (scaleValue == 'page-width') {
	                	    d.appendChild( document.createTextNode(page_scale_width) );
	                    } else {
		                    d.appendChild( document.createTextNode( parseInt( parseFloat( scaleValue ) * 100 ) + '%' ) );
	                    }
	                    break;
	                }
	           }

	           if ( !consume ) {
	               if ( opts.length > 11 ) {
	                   opts[ 11 ].textContent = parseInt( parseFloat( scaleValue ) * 100 ) + '%';
	                   opts[ 11 ].value = scaleValue;
	               } else {
	                   var newOpt = document.createElement( 'option' );
	                   newOpt.textContent = parseInt( parseFloat( scaleValue ) * 100 ) + '%';
	                   newOpt.value = scaleValue;
	                   sel.appendChild( newOpt );
	               }
	               sel.value = scaleValue;

	               var d = document.getElementById( 'divZoomDisplay' );
	               while ( d.firstChild ) {
	            	   d.removeChild( d.firstChild );
	               }
	               d.appendChild( document.createTextNode( parseInt( parseFloat( scaleValue ) * 100 ) + '%' ) );
	           }

	        };

	        //손 도구
	        document.getElementById( 'btnHandTool' ).addEventListener( 'click', function( e ) {
        	    viewer.yex.api.toggleHandTool();
        	    if( !ico_handTool_on ) {
	        	    ico_handTool_on = true;
        	    	document.getElementById( 'ico_hand' ).src = "./images/header/ico_hand_on.png";
        	    } else {
        	    	ico_handTool_on = false;
        	    	document.getElementById( 'ico_hand' ).src = "./images/header/ico_hand.png";
        	    }
            } );

	        //페이지 맞추기
	        //document.getElementById( 'btnPageScaleFit' ).addEventListener( 'click', function( e ) {
	        //	viewer.yex.api.setCurrentScaleValue( 'page-fit' );
	        //} );

	        //강조
	        document.getElementById( 'btnAnnotHighlight' ).addEventListener( 'click', function( e ) {
	        	viewer.yex.ans.drawingContext.fillColor = '#eeff00';
	        	viewer.yex.api.activateAnnotationModeHighlight();
       	    	document.getElementById( 'ico_highlight' ).src = "./images/header/ico_highlight_on.png";
	        } );

	        //펜
	        document.getElementById( 'btnAnnotInk' ).addEventListener( 'click', function( e ) {
	        	viewer.yex.ans.drawingContext.strokeColor = '#ff0000';
	        	viewer.yex.api.activateAnnotationModeFreehand();
       	    	document.getElementById( 'ico_pen' ).src = "./images/header/ico_pen_on.png";
	        } );

	        //선
	        document.getElementById( 'btnAnnotLine' ).addEventListener( 'click', function( e ) {
	            viewer.yex.ans.drawingContext.strokeColor = '#ff0000';
	            viewer.yex.ans.drawingContext.headType = 'none';
	            viewer.yex.ans.drawingContext.tailType = 'none';
	            viewer.yex.api.activateAnnotationModeLine();
       	    	document.getElementById( 'ico_line' ).src = "./images/header/ico_line_on.png";
	        } );

	        //16.06.23. 어노테이션 관련 모드가 변경 된 경우,
	        viewer.yex.api.callback.onAnnotationModeChange = function( viewer ){
	        	//alert("change");
	        	//alert( viewer.yex.api.isAnnotationModeActivated() );
	            if( !viewer.yex.api.isAnnotationModeActivated() ) {
	            	document.getElementById( 'ico_highlight' ).src = "./images/header/ico_highlight.png";
	            	document.getElementById( 'ico_pen' ).src = "./images/header/ico_pen.png";
	            	document.getElementById( 'ico_line' ).src = "./images/header/ico_line.png";
	            }
	        };


	        //인쇄
	        if ( true ) {

				var processing_print = false;
		        document.getElementById( 'btnPrint' ).addEventListener( 'click', function( e ) {
		        	//16.10.20. 리더 인쇄모듈로 인쇄 하도록 수정
					loadJavascript("./js/ezPDF.js", print, "utf-8");

					if(processing_print) {
						alert('인쇄 시도 중 입니다.');
						return;
					}

					processing_print = true;
								
					$.ajax({ 
						type: "POST",
						url: "https://www.weport.co.kr/document/user-contents/7116530/reader/print",
						dataType: 'json',
						xhrFields: {
							withCredentials: true
						},
						crossDomain: true,
						success: function(data){
							processing_print = false;
							
							if(data.status == 'fail') {
								alert(data.message);
								return;
							}

							// 15.09.25. 뷰어쪽만 인쇄되도록 포커스 잡기
							// viewer.focus();
							// viewer.yex.api.print();
							// location.href = 'https://www.weport.co.kr/document/user-contents/7116530/reader';
						},
						error: function (xhr) {
							processing_print = false;
							alert("지속적으로 문제가 발생한다면, 현재 열려있는 익스플로러 브라우저를 모두 종료하신 후 크롬 브라우저를 통해 사용해 보시기 바랍니다.");
						}
					});
		        });
	        }

	        //검색
	        document.getElementById( 'tbSearchKeyword' ).addEventListener( 'input', function( e ){
		    	if(this.value == ""){
	        	    viewer.yex.api.searchSetKeyword( this.value );
	        	    $('#btnSearch').addClass('collapse');
		        } else {
		        	searchText = this.value;
	        	    //$('#btnSearch').removeClass('collapse');
	            }
	        } );
	        document.getElementById( 'tbSearchKeyword' ).addEventListener( 'keypress', function( e ){
	        	if( e.keyCode == 13 ){
        	   		var searchKeyword = document.getElementById( 'tbSearchKeyword' ).value;
	   	       		//alert( '1:' + searchKeyword );
        	   		viewer.yex.api.searchSetKeyword( searchKeyword );

   			   		viewer.yex.api.searchSetCaseSensitive( false ); //대소문자 구분없음
         	   		viewer.yex.api.searchSetHighlightAll( true ); //강조표시.하이라이트

         	   		$('#btnSearch').removeClass('collapse');
       	   		}
	       	} );
	        document.getElementById( 'tbSearchButton' ).addEventListener( 'click', function( e ){

	    		var searchKeyword = document.getElementById( 'tbSearchKeyword' ).value;
	   	        viewer.yex.api.searchSetKeyword( searchKeyword );

   			    viewer.yex.api.searchSetCaseSensitive( false ); //대소문자 구분없음
         	    viewer.yex.api.searchSetHighlightAll( true ); //강조표시.하이라이트

         	    $('#btnSearch').removeClass('collapse');

	        } );

	        //검색한 결과 이전 이동
	        document.getElementById( 'btnSearchPrev' ).addEventListener( 'click', function( e ){
	            viewer.yex.api.searchPrev();
	        } );
	        //검색한 결과 다음 이동
	        document.getElementById( 'btnSearchNext' ).addEventListener( 'click', function( e ){
	            viewer.yex.api.searchNext();
	        } );

	        //배율관련(확대/축소)
	        document.getElementById( 'btnZoomOut' ).addEventListener( 'click', function( e ) {
	            viewer.yex.api.zoomOut();
	        } );

	        document.getElementById( 'selCurrentScale' ).addEventListener( 'change', function( e ) {
	            viewer.yex.api.setCurrentScaleValue( this.value );
	        } );

	        document.getElementById( 'btnZoomIn' ).addEventListener( 'click', function( e ) {
	            viewer.yex.api.zoomIn();
	        } );
		};

		function print() {
			this.ezpdf = new ezPDFWFLauncher(ezPDFWSPrinter, ezPDFData, 0);
			setTimeout(function() {checkAndPrint();}, 100);

		}

		function checkAndPrint(tryCount) {
			if (!this.ezpdf.isReadyLaunch()) {
				if (tryCount == undefined) {
					tryCount = 0;
				}
				if (tryCount < 3) {
					setTimeout(function() {checkAndPrint(++tryCount);}, 3000);
					return;
				}
			} else {
				//alert(pdfTotalPage);
				if (webviewer.yex.libConfig.CHECK_PERMISSION) {
    				webviewer.yex.api.isPrintable(function () {
    					    webviewer.yex.api.addPrintCount(function(){
    						        var pdf = "http://unidocs.weport.co.kr/ezpdf/download.jsp?contentId=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbmRwb2ludF91cmwiOiJodHRwczovL3d3dy53ZXBvcnQuY28ua3IvZG9jdW1lbnQvdXNlci1jb250ZW50cy83MTE2NTMwL3JlYWRlciIsInByaW50X3VybCI6Imh0dHBzOi8vd3d3LndlcG9ydC5jby5rci9kb2N1bWVudC91c2VyLWNvbnRlbnRzLzcxMTY1MzAvcmVhZGVyL3ByaW50IiwidXNlcl9jb250ZW50X2lkIjo3MTE2NTMwLCJhbGxvd19kb3dubG9hZCI6ZmFsc2UsImV4cGlyZWRfYXQiOiIyMDIxLTAzLTE0VDEyOjIyOjAxLjA5ODEwOSswMDowMCIsImRvY3VtZW50X3VybCI6Imh0dHBzOi8vczMuYXAtbm9ydGhlYXN0LTIuYW1hem9uYXdzLmNvbS9hc3NldHMuc3RvcmFnZS53ZXBvcnQuY28ua3IvMjAyMTAxMjkvZ2NjbndtbG8yY2plMmllaWRkeTVuNGg4c21iamVndWxtMGluaDQxZHhqbmhiYzF5cGQ5aHU0YW81dXNrIn0.id13sGfW2gH-gII5hElxPKvppA7Qs234cpIhzAORsPM";
    						        this.ezpdf.SetPDF(pdf, false);
    						        this.ezpdf.SetSecData( 1 );
    						        this.ezpdf.Launch(true);
    						    }, function() {
    						        webviewer.yex.uis.alert(webviewer.yex.msg.get('문서인쇄권한이없습니다') + ':E2');
    					        }
    					    );
    				    }, function() {
    					    webviewer.yex.uis.alert(webviewer.yex.msg.get('문서인쇄권한이없습니다'));
    				    }
    				);
				} else {
					var pdf = "http://unidocs.weport.co.kr/ezpdf/download.jsp?contentId=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbmRwb2ludF91cmwiOiJodHRwczovL3d3dy53ZXBvcnQuY28ua3IvZG9jdW1lbnQvdXNlci1jb250ZW50cy83MTE2NTMwL3JlYWRlciIsInByaW50X3VybCI6Imh0dHBzOi8vd3d3LndlcG9ydC5jby5rci9kb2N1bWVudC91c2VyLWNvbnRlbnRzLzcxMTY1MzAvcmVhZGVyL3ByaW50IiwidXNlcl9jb250ZW50X2lkIjo3MTE2NTMwLCJhbGxvd19kb3dubG9hZCI6ZmFsc2UsImV4cGlyZWRfYXQiOiIyMDIxLTAzLTE0VDEyOjIyOjAxLjA5ODEwOSswMDowMCIsImRvY3VtZW50X3VybCI6Imh0dHBzOi8vczMuYXAtbm9ydGhlYXN0LTIuYW1hem9uYXdzLmNvbS9hc3NldHMuc3RvcmFnZS53ZXBvcnQuY28ua3IvMjAyMTAxMjkvZ2NjbndtbG8yY2plMmllaWRkeTVuNGg4c21iamVndWxtMGluaDQxZHhqbmhiYzF5cGQ5aHU0YW81dXNrIn0.id13sGfW2gH-gII5hElxPKvppA7Qs234cpIhzAORsPM";
					this.ezpdf.SetPDF(pdf, false);
					this.ezpdf.SetSecData( 1 );
					this.ezpdf.Launch(true);
				}
			}
		}

   	</script>
</head>

<body>
<!--<body ontouchstart>-->

<header id="spec_header" class="container-fluid">
    <div class="header_section">
        <ul>
          <li>
                <a href="#" id='btnToggleSideBarThumnailList'><img id="icon_list" src="images/header/ico_list.png" alt="" width="22" height="22"/></a>
          </li>
        </ul>
    </div>

    <div class="header_section">
    	<div class="page_group">
            <span><input type="text" id="tbCurrentPage" value="14" class="page_current"/> / <input type="text" class="page_all" id="tbTotalPages" value="50" readonly/></span>
        </div>
        <ul>
          <li class="zoom" id="zoom">
                <select id="selCurrentScale">
                	<option value='auto' data-l10n-id='page_scale_auto'></option>
                    <option value='page-fit' data-l10n-id='page_scale_fit'></option>
                    <option value='page-width' data-l10n-id='page_scale_width'></option>
                    <option value='0.5'>50%</option>
		            <option value='0.75'>75%</option>
		            <option value='1'>100%</option>
		            <option value='1.25'>125%</option>
		            <option value='1.5'>150%</option>
		            <option value='2'>200%</option>
		            <option value='3'>300%</option>
		            <option value='4'>400%</option>
                </select>
                <div class="select_box" id="divZoomDisplay" data-l10n-id="page_scale_auto"></div>
          </li>
          <li class="hand">
                <a href="#" id="btnHandTool"><img id="ico_hand" src="images/header/ico_hand.png" alt="" height="22"/></a>
          </li>
          <li class="pageOne">
                <a href="#" id="btnPageLayoutDocumentOnePage"><img id="ico_pageOne" src="images/header/ico_pageFull.png" alt="" width="22" height="22"/></a>
          </li>
          <li class="pageTwo">
                <a href="#" id="btnPageLayoutDocumentTwoPage"><img id="ico_pageTwo" src="images/header/ico_pageTwo.png" alt="" width="22" height="22"/></a>
          </li>
          <!--
          <li class="pageFull">
                <a href="#" id="btnPageScaleFit"><img src="images/header/ico_pageFull.png" alt="" height="22"/></a>
          </li>-->
        </ul>
    </div>

    <div class="header_section">
        <ul>
          <li class="highlight">
                <a href="#" id="btnAnnotHighlight"><img id="ico_highlight" src="images/header/ico_highlight.png" alt="" width="22" height="22"/></a>
          </li>
          <li class="pen">
                <a href="#" id="btnAnnotInk"><img id="ico_pen" src="images/header/ico_pen.png" alt="" width="22" height="22"/></a>
          </li>
          <li class="line">
                <a href="#" id="btnAnnotLine"><img id="ico_line" src="images/header/ico_line.png" alt="" width="22" height="22"/></a>
          </li>
          <script type="text/javascript">
          if ( true ){
        	  var str = "<li class='print'><a href='#' id='btnPrint'><img id='ico_print' src='images/header/ico_print.png' alt='' width='22' height='22'/></a></li>";
        	  document.write( str );
          }
          </script>
        </ul>
    </div>

    <div class="header_section">
        <ul>
          <li>
          	<div class="search input-group">
            	<input type="text" id="tbSearchKeyword" class="search_input" placeholder="검색어를 입력하세요."/>
                <span>
                    <button class="btn btn-md" type="submit" id="tbSearchButton"><img id="ico_search" src="images/header/ico_search.png" width="16" height="16" alt=""/></button>
                </span>
            </div>

            <!-- search_btn -->
            <div class="search_btn_group collapse" id="btnSearch">
            	<span class="searchPre" id="btnSearchPrev">
               		<a href="#"><img src="images/header/ico_searchPre.png"  alt=""/></a>
                </span>
            	<span class="searchNext" id="btnSearchNext">
               		<a href="#"><img src="images/header/ico_searchNext.png"  alt=""/></a>
                </span>
            </div><!-- /.search_btn_group -->

          </li>
        </ul>
    </div>

    <div class="zoom_control">
    	<p class="zoomIn" id="btnZoomIn">
        	<a href="#"><img src="images/common/ico_zoomIn.png" width="32" height="32" alt=""/></a>
        </p>
    	<p class="zoomOut" id="btnZoomOut">
        	<a href="#"><img src="images/common/ico_zoomOut.png" width="32" height="32" alt=""/></a>
        </p>
    </div>
</header>

<div class="container-fluid">
	<div class="row">
		<div id='container'>

	       <iframe
	        id='viewerFrame'
	        width='100%'
	        height='1px'
	        allowfullscreen
	        style='border:none;'
	        ></iframe>

		</div>

	</div><!--//row-->
</div><!--//container-fluid-->

</body>
</html>

