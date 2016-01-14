<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<meta charset="euc-kr">
	<title>���ô±�</title>
	<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<script>
		function initialize() {

			var Y_point			= 37.499218;		// Y ��ǥ 
			var X_point			= 127.032827;		// X ��ǥ

			var zoomLevel		= 16;						// ������ Ȯ�� ���� : ���ڰ� Ŭ���� Ȯ�������� ŭ

			var markerTitle		= "�����û";				// ���� ��ġ ��Ŀ�� ���콺�� �������� ��Ÿ���� ����
			var markerMaxWidth	= 300;						// ��Ŀ�� Ŭ�������� ��Ÿ���� ��ǳ���� �ִ� ũ��

			// ��ǳ�� ����
			var contentString	= '<div>' +
			'<h2>�����û</h2>'+
			'<p>���￡ ��ġ�� �����û!</p>' +
			//'<a href="http://www.daegu.go.kr" target="_blank">http://www.daegu.go.kr</a>'+ //��ũ�� ���� �� ����
			'</div>';

			var myLatlng = new google.maps.LatLng(Y_point, X_point);
			var mapOptions = {
								zoom: zoomLevel,
								center: myLatlng,
								mapTypeId: google.maps.MapTypeId.ROADMAP
			}
			var map = new google.maps.Map(document.getElementById('map_view'), mapOptions);

			var marker = new google.maps.Marker({
													position: myLatlng,
													map: map,
													title: markerTitle
			});

			var infowindow = new google.maps.InfoWindow(
														{
															content: contentString,
															maxWidth: markerMaxWidth
														}
			);

			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(map, marker);
			});
		}
	</script>
</head>

<body onload="initialize()">
	<div id="map_view" style="width:700px; height:400px;"></div>
</body>
</html>