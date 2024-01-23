import 'dart:convert';

import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:get/get.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  final galleryList = [
    R.image.youngwoojiyeon1,
    R.image.youngwoojiyeon2,
    R.image.youngwoojiyeon3,
    R.image.youngwoojiyeon4,
    R.image.youngwoojiyeon5,
    R.image.youngwoojiyeon6,
    R.image.youngwoojiyeon7,
    R.image.youngwoojiyeon8,
    R.image.youngwoojiyeon9,
    R.image.youngwoojiyeon10,
    R.image.youngwoojiyeon11,
    R.image.youngwoojiyeon12,
    R.image.youngwoojiyeon13,
    R.image.youngwoojiyeon14,
    R.image.youngwoojiyeon15,
    R.image.youngwoojiyeon16,
    R.image.youngwoojiyeon17,
    R.image.youngwoojiyeon18,
    R.image.youngwoojiyeon19,
    R.image.youngwoojiyeon20,
    R.image.youngwoojiyeon21,
    R.image.youngwoojiyeon22,
    R.image.youngwoojiyeon23,
    R.image.youngwoojiyeon24,
    R.image.youngwoojiyeon25,
    R.image.youngwoojiyeon26,
    R.image.youngwoojiyeon27,
    R.image.youngwoojiyeon28,
    R.image.youngwoojiyeon29,
    R.image.youngwoojiyeon30,
    R.image.youngwoojiyeon31,
  ];

  final PlatformWebViewController webViewController = PlatformWebViewController(
    const PlatformWebViewControllerCreationParams(),
  )..loadRequest(LoadRequestParams(
      uri: Uri.parse(Uri.dataFromString(
        '''
      <!DOCTYPE html>
<html>
<head>
  <script type="text/javascript" src='https://dapi.kakao.com/v2/maps/sdk.js?autoload=true&appkey=7047bd8eeaeb999d573881f23d55b160'></script>
</head>
<body style="padding:0; margin:0;">
  <div id='map' style="width:300px;height:200px;margin: 0 auto;"/>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.50200137300353, 127.00096128071054), // 지도의 중심좌표
        // center: new kakao.maps.LatLng(37.505088,127.034481),
        level: 3,
        draggable : false,
        disableAutoPan: true
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.50083002236247, 127.00319198989602);
// var markerPosition  = new kakao.maps.LatLng(37.505088,127.034481);

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});

  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker);
function relayout() {    
    
    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다 
    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
    map.relayout();
}
		// var container = document.getElementById('map');
	  // var latlon = new kakao.maps.LatLng(37.50083002236247, 127.00319198989602);
	  // var options;
    //
    //   var imageSrc = 'https://jiyeonjoy.github.io/20240504/icons/Icon-192.png';
    //   var imageSize = new kakao.maps.Size(44, 52);
    //  
    //   var imageOption = {offset: new kakao.maps.Point(27, 69)};
    //         
    //   // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
    //   var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
    //    
    //   // 마커를 생성합니다
    //   var marker = new kakao.maps.Marker({
    //         position: latlon,
    //         // image: markerImage, // 마커이미지 설정
    //   });
    //    
    //   options = {
    //     center: latlon,
    //     level: 6,
    //     disableDoubleClick: true,
    //     draggable : false,
    //   };
    //  
    //   var map = new kakao.maps.Map(container, options);
    //   marker.setMap(map);		  
	</script>
</body>
</html>
    ''',
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8'),
      ).toString()),
    )
  );
}
