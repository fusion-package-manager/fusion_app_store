'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/icon-192.png": "092664db3f556d459aeea06e81c2b7f4",
"icons/icon-maskable-192.png": "092664db3f556d459aeea06e81c2b7f4",
"icons/icon-512.png": "092664db3f556d459aeea06e81c2b7f4",
"icons/icon-maskable-512.png": "092664db3f556d459aeea06e81c2b7f4",
"manifest.json": "b5f48e9b30a8d43e89522444c26e8e1b",
"version.json": "132b0e08636ba0299b0b92669f3505ee",
"main.dart.js": "32c6b78fe9dc102db50d20f2141218c5",
"index.html": "6d8eb9c1a37df89705b84fc7b1dd5542",
"/": "6d8eb9c1a37df89705b84fc7b1dd5542",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/Sen/Sen-Regular.ttf": "32c160ed42f66e2434bba3af9c5fb375",
"assets/fonts/Sen/Sen-Medium.ttf": "8c227ae66e6d169c59b97ccf451dbdaf",
"assets/fonts/Sen/Sen-Bold.ttf": "66f22ad6aacdc3564847bf2e1f5bcd3d",
"assets/fonts/MaterialIcons-Regular.otf": "81485ad8e9158c480155c9b8e6f69af7",
"assets/NOTICES": "bd66127eb9d583a9db9bd382ef0dd837",
"assets/packages/youtube_player_iframe/assets/player.html": "dc7a0426386dc6fd0e4187079900aea8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.bin": "f45be3fe1c561c2b85a56c1224dc72ea",
"assets/assets/animations/desktop-animation.json": "6999811c8dd41c0e6cd4ee1eaad68ccc",
"assets/assets/icons/github-icon.png": "53d78bb856f91bfc575fa1d55e673e62",
"assets/assets/icons/tick-icon.png": "a39895face20047d4c8b71c11c425c91",
"assets/assets/icons/fusion-app-icon.png": "092664db3f556d459aeea06e81c2b7f4",
"assets/assets/icons/ecosystem-icon.png": "ecf87fa75b420d0328abaeb7b2e31aa5",
"assets/assets/icons/activity-icon.png": "5e2b179e365689855ab02703cdb8a4e4",
"assets/assets/icons/github-text-icon.png": "1b1ac9528144046c0316d2cb57443641",
"assets/assets/icons/favourite-icon.png": "5b3fea6d888d1d296d0dbd30c058e1a3",
"assets/assets/icons/bag-icon.png": "c46333be38ebf0d013cf247357e11499",
"assets/assets/icons/tag-icon.png": "7c1072e855f22a5ad8ec512628ba8a2d",
"assets/assets/icons/search-icon.png": "ba8a2cf5db45b3e95e2700e87f4d9377",
"assets/assets/icons/help-icon.png": "c7bfd4ee95bb1c8d908e1016f6e495af",
"assets/assets/icons/info-icon.png": "6fd346fd625fff2412b3adea81d25693",
"assets/assets/backgrounds/login-background.png": "e34e35f80c5e50a1fb80d005259f3e7e",
"assets/AssetManifest.json": "0ed091bbd113a11d79a7e882fb8c1645",
"assets/FontManifest.json": "67b7d915e8c34990b0e54378c7fb7c41",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"drift_worker.js": "7de307078b8d319c82ca7fa9526345dc",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/canvaskit.js": "5caccb235fad20e9b72ea6da5a0094e6",
"canvaskit/chromium/canvaskit.js": "ffb2bb6484d5689d91f393b60664d530",
"canvaskit/chromium/canvaskit.wasm": "393ec8fb05d94036734f8104fa550a67",
"canvaskit/canvaskit.wasm": "d9f69e0f428f695dc3d66b3a83a4aa8e",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"sqlite3.wasm": "59b0b16e9818fad51d4ec7c1400fd1dd",
"favicon.png": "092664db3f556d459aeea06e81c2b7f4"};
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
