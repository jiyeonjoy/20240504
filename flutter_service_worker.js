'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"manifest.json": "a7ba75e30f13f58662baa74233fa96c4",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"index.html": "709bfbba648e50883bf25d55e908e5c3",
"/": "709bfbba648e50883bf25d55e908e5c3",
"assets/FontManifest.json": "fe6fa9fb978b8a0d926fa8c6647f6eec",
"assets/AssetManifest.bin": "14e46abc0322a6b16d957b356a81c438",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/youtube_player_iframe/assets/player.html": "dc7a0426386dc6fd0e4187079900aea8",
"assets/assets/fonts/nexon_gothic_medium.otf": "e48d68945f73a704ccd980ec895c331b",
"assets/assets/fonts/default_font_light.otf": "b9a9b17bad54e784897bdcbdb1d3d92d",
"assets/assets/fonts/default_font_bold.otf": "94da6e2e519d87056591f7867cff87f4",
"assets/assets/fonts/nexon_gothic_extra_bold.otf": "059bc8038af9fd1839b79d4a3d83bdd9",
"assets/assets/fonts/nexon_gothic_bold.otf": "dd9fad7837d685ed9c99ebed9dd32c93",
"assets/assets/fonts/CormorantGaramond-Regular.ttf": "8d38bcc84080a67c9d1630fd3141f7f3",
"assets/assets/images/bg_img_white.jpg": "e4dae526a29570b3ee9d8934f77af0c3",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_15.jpeg": "3fcb55eaecde13ead43a1376a922eff9",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_4.jpeg": "218466a58009488a41bc62e6f78c181f",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_3.jpeg": "e1df9288f95c2534f80fd1ff19bcc89c",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_6.jpeg": "ac373341a19ca6930141446528b273a9",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_13.jpeg": "f1e07debccee34d734e93a205fb3d726",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_5.jpeg": "921cf5192ddce48fad102accc798638b",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_9.jpeg": "384cb61e3bcb0cf059f742e5b0c2fc76",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_8.jpeg": "205f3d5a0f158e665e6b99430f3309b9",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_11.jpeg": "748e587f424e3a0698a5b4e63b8dd44f",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_main.jpeg": "23ec7e8562bd8e76f82b4817420f7ee0",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_10.jpeg": "3e70aa9978e91805b409bfcc81ee5fa1",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_12.jpeg": "96c1fe397c8a9db230c79d9955037f36",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_2.jpeg": "f933706568895ea2983e1a8a54349ef2",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_7.jpeg": "803343263377667f93609314bfedaee1",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_14.jpeg": "a275b63c8210af0f79f0e5d17864b657",
"assets/assets/images/youngwoo_jiyeon/youngwoo_jiyeon_1.jpeg": "15c8edea4c55822966647b0d5434c433",
"assets/assets/images/map.png": "ba97456588bb411fbb67111ab44c3722",
"assets/assets/images/banner.png": "e07e18f929edd154021fb3112e31785a",
"assets/assets/images/icons/link.png": "59b64953abfb91db58a44cc8fc3fcd6e",
"assets/assets/images/icons/email.png": "30f675ad8c87abd0bb24e82143cf531a",
"assets/assets/images/icons/close.png": "a316b1ac42db31a697903086f3941d85",
"assets/assets/images/icons/left.png": "088bb37369c87064a2fc97204243f2d9",
"assets/assets/images/icons/down.png": "6ac86f552b542a934c9bfd60d94c2cb7",
"assets/assets/images/icons/flower.png": "f545076e8e950d3dfb7ea4d75ad01f1c",
"assets/assets/images/icons/phone.png": "608d42513438db47eea3256675af2bd5",
"assets/assets/images/icons/phone_round.png": "e19896928e86d5402079fa35bb8d0c02",
"assets/assets/images/icons/botanical.png": "525602f71a5b07f14b9a332060e37e33",
"assets/assets/images/icons/right.png": "a3779f5f00de900d713ea72b83b57904",
"assets/assets/images/icons/up.png": "9f383d5ff7e3205f6eac824effaff78b",
"assets/assets/images/icons/bee.png": "045ecf9daa931df58df79a74afd764f3",
"assets/AssetManifest.bin.json": "3eaa4b7384effbcbbeca76962781d8e0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "fbcefed1209de33d055bb0897a0073fb",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/AssetManifest.json": "9c88026b2d4bc82ece073523900db53a",
"main.dart.js": "9f0c52e790f7adc5cf45fbe7949a89cc",
"youngwoo_jiyeon.jpg": "cfcd25091b5aec7635a7f467a9697cde",
"version.json": "7c18fd15f9dcbc01f3157e79e13f9d68",
"icons/letter.png": "68f5dc80f1e3cd6d581245e54983a09c",
"letter.png": "680582863495e013fa7bdda816e207b9"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
