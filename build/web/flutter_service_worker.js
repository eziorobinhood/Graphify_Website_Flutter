'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "2ee90a871323c17ceff2b3a6805606ce",
"assets/AssetManifest.bin.json": "c3914417fdb2f09025ccd572625def8e",
"assets/AssetManifest.json": "7986ff21a8e812c604be9f0f9d017689",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1c59ec71788354c71fa8d63ab5dd2082",
"assets/images/aboutimage.jpg": "e007b5e9637222e81d1a229ca84821fb",
"assets/images/aboutimage.png": "6ff7693675be1ccffbe47b5902bc0e17",
"assets/images/aboutusimage.png": "56268d9ff25d660cab1330fd49e4c06d",
"assets/images/branding.jpg": "c81ec1746fd202e653531ed016b36145",
"assets/images/call.jpg": "638c97722cad769c3d936125fcc41769",
"assets/images/call.png": "c04f422302ea5cf3cad4db16def6ea23",
"assets/images/callpic.png": "6ed6a16f17e79823f7dbee1ea1a5b646",
"assets/images/contactimage.jpg": "aa81596c52fc3943318438421274c413",
"assets/images/contactimage.png": "5cf5c3f1e3d44379d38a23b24af8208f",
"assets/images/cost_effective.jpg": "ccde89acc9f4f8490b5388e903d0db64",
"assets/images/destination.png": "9e6e1285588ea28a997f5579912dbfe2",
"assets/images/digimarket.jpg": "69b3449230d85c6ab585b16d3fd5ec4e",
"assets/images/email.png": "2ff3686d478e2ac2e489ca8ca3f1e7ca",
"assets/images/facebook.png": "7360ffe3672898b3df4896f0e1128c22",
"assets/images/footerbg.jpg": "4380cb75d92d4356f2fcbf35fd8a68d0",
"assets/images/footerbgmobile.jpg": "54412d2253eb43aa01947258ca0f87a3",
"assets/images/Graphifylogo.png": "a79682d0ac58d8c4fe2c44c73b611f20",
"assets/images/history.jpg": "e7cd8265082eb83223207edf902f3bd0",
"assets/images/history.png": "b53fad8cd0ab2c297023de592133cb14",
"assets/images/homebg.png": "08270f84fcdbfdf32f092c034b1754b6",
"assets/images/homemobile.jpg": "e7504fc8ed46040b9192de67f724fe9e",
"assets/images/icons/appdev.png": "cbdb83d9097a02cb3a31a6b179668698",
"assets/images/icons/brand.png": "10c411e2bfc89547b18da7de681f1d59",
"assets/images/icons/digitalmarketing.png": "5f69f043778cbf9499e1cba531a405c5",
"assets/images/icons/established.png": "9ac1c001472d60eb41578d0118a001d1",
"assets/images/icons/seo.png": "c1a0b2ff30892427967ba862f0582519",
"assets/images/icons/shield.png": "1daec18222c7ac73ea79ba442f5145e5",
"assets/images/icons/socialmedia.png": "d364036dfc999a8ca7f380126de6ba3a",
"assets/images/icons/targeting.png": "82a2eba78fed541a0fc586a58f388933",
"assets/images/icons/team.png": "55fc705b73dfeab56729d891f513e2c2",
"assets/images/icons/web.png": "ac28efc0800cec4caa046f05fbd54d90",
"assets/images/impact_driven.jpg": "247d5ce077ebe5ec11adfa42e7bd2805",
"assets/images/impact_driven.png": "ba5f98eb14295933157245d96bae8d9f",
"assets/images/innovation.jpg": "1ff418f85692538b5d0c2046dbef546f",
"assets/images/instagram.png": "0b6b3c8d2c74fc2e0be8f5d940ec1e14",
"assets/images/interested.jpg": "1c68097d47ed38ee23a502b5bcb96864",
"assets/images/interested.png": "f977f663d29ef0fe1101dcdd05439181",
"assets/images/linkedin.png": "575239d4784cd38d9b1fd754fb0ad987",
"assets/images/mad.jpg": "b81e39f28a246ebff72796a00c375a82",
"assets/images/mission.jpg": "41e69cb976bc63eea0b541fbd0b756b6",
"assets/images/mission.png": "42f72313c9dc4f98ceb04f17ef1be442",
"assets/images/privacy.jpg": "8bde4a4271adf4fec8f9dff23b669d6f",
"assets/images/privacy.png": "ce7f027c45145cd6429b5c2965884419",
"assets/images/quality.png": "7e0d1f07ee44ece780770acc2a852ded",
"assets/images/questions.png": "99bed95e375e250ff2e57b2250d1a8d5",
"assets/images/reliability.jpg": "d78f4ccff038284dcad1e3ef6b5609cf",
"assets/images/rocket.png": "b081b09a298ebc403fef598b4ddcf1bd",
"assets/images/SEO.jpg": "528c7c883f104f3d1d216428386434ea",
"assets/images/services.jpg": "0eec7579955f03cbe4401866e734a680",
"assets/images/services.png": "88014669ad3ff323d35adfa05e5f9b11",
"assets/images/servicesmob.jpg": "d051259f94f780e0ab67ba2f3604670b",
"assets/images/servicesmob.png": "35ddcd486a9e1c77315e381ca70679d4",
"assets/images/SMM.jpg": "151c381593491b8ff62440e3d6b2a970",
"assets/images/support.png": "413bdc3bcdd2fcbf3414f8f6cbd48492",
"assets/images/tailored_engineering.jpg": "058732772e8c308d86534394f1d826c3",
"assets/images/tailored_engineering.png": "74eef24ce47a20bedf18aa05aa42ca8a",
"assets/images/tech_pioneer.png": "b01b0adebd75829bdbe6ca439b8deb27",
"assets/images/terms.jpg": "02059fffa1992f9132173ebfc81c5414",
"assets/images/terms.png": "6ef229b2e4293228fe92e22b87b350c5",
"assets/images/time.png": "b47bfd7b33651b8094d375a9e768698c",
"assets/images/twitter.png": "00e1685acb78b5c2a6189a43c8df3e6e",
"assets/images/vision.jpg": "c99ab793d3c5fcd23419101a5b689938",
"assets/images/vision.png": "2671b2060a4eb73f9249497eaffbfa5b",
"assets/images/Webdev.jpg": "33bd0bdff5cb1b184c6def34b5df3292",
"assets/images/whychooseus.jpg": "c7211bb39da85cf17e4a486f77c37242",
"assets/images/whychooseus.png": "c6c0d4fd6a425f8022fcc5b491b21e84",
"assets/NOTICES": "3ae02bc4576041d8d24b9566da9d8940",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "790f1366510039949116936a922aea37",
"Graphifylogo.PNG": "4048bf8223f11837a1782406f0a7f35b",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2701ee199e1f499a3d25592953210519",
"/": "2701ee199e1f499a3d25592953210519",
"main.dart.js": "dc90898b3cbfb3d788b507823898d2e7",
"manifest.json": "213c497a2b08d9feb0178092bce49344",
"version.json": "56484ed8b62a0b42d6361db0a86656a1"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
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
