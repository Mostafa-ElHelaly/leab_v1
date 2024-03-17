'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "99b14f50ef3364fa8b19dbc2e6b6033a",
"assets/AssetManifest.bin.json": "9cb047bcd0bd8e7fc0027132da05216a",
"assets/AssetManifest.json": "5b136033ee39a8b8c6afed884dd7e47b",
"assets/assets/fonts/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/icons/apple.png": "e3da6da0ea2343e9a8a95be0f6a20e3a",
"assets/assets/icons/employer.png": "53d4ef7d34789bf4a40e66c1e69081c0",
"assets/assets/icons/employer@2x.png": "1c9b3954e543dff910d1839ed39afc55",
"assets/assets/icons/facebook.png": "895a45d7ca3ba007e4ecb8c17c486af0",
"assets/assets/icons/google.png": "25c59b744fa5bfc4d4190a44549c5e1f",
"assets/assets/icons/icon@2x.png": "8e8b22f2f79068650e1fedf2271e2584",
"assets/assets/icons/location.png": "34e3f21d902333b4fb3e6b1bf50d86ba",
"assets/assets/icons/location@2x.png": "8e8b22f2f79068650e1fedf2271e2584",
"assets/assets/icons/locationPNG.png": "7ae577c558b264da34d1a7e67914067f",
"assets/assets/icons/menu.png": "4e2af735d6a48e23e4fddb30159fae4f",
"assets/assets/icons/notification.png": "df0411571c3fb62953dcd66b75be109d",
"assets/assets/icons/skill_icon.png": "a1237516c1de5cd95290886f62264663",
"assets/assets/icons/skill_icon@2x.png": "72b837756d7e8b2e7796b7beff0af2a9",
"assets/assets/icons/skill_icon_black.png": "6b937a30cf4b6ed52aadef772c4c9a91",
"assets/assets/icons/skill_icon_black@2x.png": "b810f84ed24ae1651ee18e4b0159f08a",
"assets/assets/icons/title.png": "78aa363414a2c240d11fb4fc22bd95ce",
"assets/assets/icons/title@2x.png": "ba61212e9721d4d12b3cc7efe32c643d",
"assets/assets/images/absolute.png": "b2280f6a2f63e37ccd1b8620132a5911",
"assets/assets/images/app%2520store.png": "fd2480724d28e441d9ac7e69a43f10ac",
"assets/assets/images/app%2520store@2x.png": "72cb180b11dc3f3722950767154ad616",
"assets/assets/images/background_login.png": "0ac534f29c60ca6a4d9f38237702138f",
"assets/assets/images/background_login@2x.png": "634760dda6229a6a227b8f522bf4aab9",
"assets/assets/images/bg.png": "7a59cca6e17ac403a586f3a927bfc231",
"assets/assets/images/bg@2x.png": "4b85a01a306b03c591fc1b0c3f6abe87",
"assets/assets/images/circles.png": "7eb17038277b02c7afa4145ba200ddca",
"assets/assets/images/circles@2x.png": "3393ac00229fce8b2e27af3f1abd87db",
"assets/assets/images/cplus.png": "a3e840340a3f17cf67979005fb61cb24",
"assets/assets/images/Dart.png": "a675cb93b75d5f1656c920dceecdcb38",
"assets/assets/images/ghtk.jpg": "29b02760550ee0fe4f69f6a616ddd1a4",
"assets/assets/images/google%2520play.png": "3ea01467097401d83faaa8e524671559",
"assets/assets/images/google%2520play@2x.png": "47ee9bed68ae0d5b8951d55e87d42db9",
"assets/assets/images/html5.png": "837b7493a63d0b927e50ea17f95dfeb5",
"assets/assets/images/human.png": "0a5efca7de58344e183687ef57008d2a",
"assets/assets/images/human@2x.png": "dba82a3fc40ef608535f827811e85692",
"assets/assets/images/illustration.jpg": "2768fb2b6bb7aa68faab135779f6892c",
"assets/assets/images/illustration@2x.jpg": "fde3a3c9c79dc82ffdf6df1c4399ad86",
"assets/assets/images/JavaScript.png": "87de31224f2cd3ebcd689ae05d8cce4c",
"assets/assets/images/json.png": "4e94d9c293d0421092672f72eab5dc36",
"assets/assets/images/locationPNG.png": "7ae577c558b264da34d1a7e67914067f",
"assets/assets/images/logo.png": "1225097eaa72dc4ab172b40ea8105958",
"assets/assets/images/logo@2x.jpg": "e92904fac169a49a949f86beed421be5",
"assets/assets/images/nike.png": "d4b93c50a5f83b1e94e3f6eadc2c7455",
"assets/assets/images/react.png": "4f18617c111c3240809dbec9b7b5fe65",
"assets/assets/images/slogan.jpg": "744d765c8e89c05ba70dbc3c32339b84",
"assets/assets/images/ung.jpg": "5a32a04eb6c94791af4dac9ffe99bacc",
"assets/FontManifest.json": "1bdc7a971e4eda435e7d81f21698e184",
"assets/fonts/MaterialIcons-Regular.otf": "cb1d15fd2729167bf5299ba0430d9e78",
"assets/NOTICES": "131dbd0ca418728e2fa44d3a61a7bf95",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "3f8a5277dc515340fbfdc5b8f9370969",
"/": "3f8a5277dc515340fbfdc5b8f9370969",
"main.dart.js": "b7c853632e2aa97fcff0779b5a7a3950",
"manifest.json": "538ab1177b9e53fb7ec9ba8f7f2193f5",
"version.json": "6de7841a4b29445018593dffae4c7b3e"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
