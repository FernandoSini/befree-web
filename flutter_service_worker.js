'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "1b015d6a0f59ef8bf67bad6012152e1e",
"index.html": "b066190a24ffda51733a767a4b461c85",
"/": "b066190a24ffda51733a767a4b461c85",
"main.dart.js": "ba35f40687888edd421219fb69d73b86",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "347758c69fee7c9805171e092975cda7",
".git/config": "ac2b8a3a77c051078925528698f0620c",
".git/objects/61/ed1cee353cb520b7ed70bcee264a9c2363a49e": "130fe856cf4ecf9f3b834edf61774ef5",
".git/objects/59/6ca2c74ea296d231dbfc872ac3355813381d88": "fa596145272f469d58417e1a9c6f5fc4",
".git/objects/92/a4f7953c6ebed2f25e020b9190af8584c84108": "1e6ed23c7883dc31e86206b3069f7951",
".git/objects/66/e43f0c2c05d1b280bb654f18628cd5cdc88493": "ea9de7c0518af064f548ee363a1759ec",
".git/objects/3b/8d89e2524614ea7ab5806b225a8ba1c3b14859": "e37b595bd0ce0409c08f62100f73f846",
".git/objects/3b/81a762da71639729d2caf9f52e928baa9504f8": "c39a14559fe0c6e209fee66fd254b863",
".git/objects/03/84302b16f78f9febb978d254ce478be3a2336f": "46b59fab621ce4f42da3ed65f1b60e93",
".git/objects/9b/fd53adb5f1186bae30127aba33d4011611adc0": "58fc49d2e16e283d83a6805fd51ba611",
".git/objects/32/25fbb8d71b0dce71dd9f3bff12a8aca28043f7": "5ea19bee7c29d37cda6ddeddee6a9322",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/56/cb34b7f8bb9dfda46cb113ab3ed7677518d641": "e428c355ab4ee88e955cdd6288a897d4",
".git/objects/0b/6b9ede2784be21d5735399b53ac7c6a6309e08": "385e3e86a7ada9508d1dc8696ff319ff",
".git/objects/0e/f3d684db308a229ff0ddf103f74effe20ace1a": "b0356d95038e1afb4a985979a5b8eba2",
".git/objects/34/c842430ff9f7e3f10e5ed1826ecb890b71e04f": "45d073abc35143ed2d1b49a2896aa4ea",
".git/objects/34/05dbfa128181c972de179cf05630e8778a0564": "4c5e21f755be0c15b8ff0b4adfb535b0",
".git/objects/5a/5a3391133966b9616d841eafec6c9b02b15208": "fc8327d93c97809c26ce1ed711b0bbc9",
".git/objects/33/7d752f919da85bffb33bc72b9934642ed4dccf": "83be79a5cf6c269e6d9c27063e5bd79a",
".git/objects/a4/b58b874d62ef1f8d4de0fda121818dc0813929": "08c6f90c7fa68149f389818bb46a659f",
".git/objects/b5/9216a8b3ed2fc2c5990aa981c39d88e4332dfe": "918ffaa223c1ce69c4af862c14af8a3d",
".git/objects/b2/0e17211a007b1af9dd319fc7636741615d5bc1": "5c78196a0c1c10dd126cfd3a3bc4d440",
".git/objects/b2/41d95fe6845201fd9b46e24b3f1aed10b23b6c": "746ed3b7e310149188abcb1cc08557c7",
".git/objects/d9/3464e9dcc599fcd6a09c656d00d6d39472018d": "e08e159d51af99d9f43b9aa862693572",
".git/objects/ad/8b64f6532de8b0b445f2769eb47c0f24d39bad": "1ec206802f121c597ce2aad21d074eb0",
".git/objects/d0/b41f6211b72fbdd7eaaf530727378c82effcfb": "62ffaff695c3ff758152e23d4c5d0f92",
".git/objects/d0/6e5781cceb40c4879d1ae74a66d8ff47265780": "b8a631d8c508974a46594539cc5cbd03",
".git/objects/da/08c6172e3d65ddddf0c8c8aa1c1d75f9a798ac": "6c2a94b9f5d0b13a98d63c1db838237a",
".git/objects/a5/b86723dd11bd5aa220d99f6de0d7139f88abcd": "cd937f24f38a3f345061b1688de8febf",
".git/objects/bd/c2cf605fb2a1e580c9d9046e8cda98b3782b40": "5a5e635b77a9012c70501db7c8ba440d",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/db4c37f96f3f8050e07337f83ed0d46181fae0": "01edbce16894781633e3179ad79dc479",
".git/objects/f4/fe74ad96057484ff9a2ae43023a8fca8616988": "e8853ecefa7c99643a28720ce96dc781",
".git/objects/c7/b8d10e874b301462c11214b810d273bc45e992": "354ef6553f8c2efe709a2c736c77894d",
".git/objects/ee/43384db0d658af353dbedd6eaa18ba44408b79": "4bc25b3e7185c75a2e5c7ed0b62ee59b",
".git/objects/f5/366d38d9c4a8421933ad72b2258f280b847830": "f66bde9d1ab7979cbc1e9334792a4688",
".git/objects/e4/9475b88693ba0b2627ddacfa50b030c2387263": "69fd44531c8e955bcb3700c2fa890bc4",
".git/objects/c6/b6b57394569bfab0ffb150c05425796e251a21": "043665ffebac207cdeb6bf0dada99878",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/18/b37b2474e7e2f39a57275138eefab7d2bd4f76": "6943aaf80bc4833ab487f494cb9495a3",
".git/objects/7d/7fba52aef0b7405aadbd11eac14a775d190630": "282c5aeb7cefea07f2a549990b45abf7",
".git/objects/29/06aff8ebfff9c0cdd100a0e266deba132c9f20": "2b27b2b9d3e6fc9d3806ab5780139f50",
".git/objects/89/33301ed5e754c733c2933a1f2b1bf41db36ebd": "3aa86382ef697685a06983ad4e7b4581",
".git/objects/1f/f58d10045006db6f78cc9588ecf9b0ce32900a": "56cdaa357a97a7ac6eeae3e81439ad36",
".git/objects/1f/2f412fb25fe994593fefff41e6d792adcc265c": "870fc62e1c1fa229043cd6493f154e72",
".git/objects/87/481f2c946e5272c1c93b504b2e9ed7a43c92eb": "0975c2b66eaa9a8787e81d5237a96ea6",
".git/objects/80/f4c42e422ed0bd25fd9bc59526367ff739aa2b": "12aa55d74c86727e59f74d8109a7fdfb",
".git/objects/1a/cb64ca867eaeaecd0d0cbe5748a574c46af9d7": "f9f6ea6cdd926a71a8a68c2731489891",
".git/objects/28/1d6c817302db1f1f3904b176536dad4c214cf6": "ebd99965b076693218658ef303ff993e",
".git/objects/17/3a2be42a603cedf5bb74257d08543e10e6e230": "ba5e3931c7c1f6e495229fd5adc1d79b",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/4c/82fce7f2b71fd4a64dc3a7f5244ffd20a716ea": "ef710ecda53da32a52f3d345d1a732d8",
".git/objects/86/98fae1533f6b400b2e3bd1d6bf5a1c2fd542dd": "0b9e7a8ad3432622d3fbc7c8dd79f436",
".git/objects/43/4c98822bba9090cff4a0dbb7af6db13c27913c": "2e4e3fc15d770e3597835ce4097c94fd",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/38/525fafc15011fc1320d7fadfbcadd12b3e2208": "c0afd068bd1bda21e326929fd70f7eab",
".git/objects/00/96ed20fe432a7f44a5803c8f14cbbe795fcb4e": "95370689a2889866efb1352a5ddaf796",
".git/objects/6e/9091ec7233d0dd006df8207566206579175a01": "d2a27ed5ea615b00f869439fa21897cd",
".git/objects/9a/d8dcc849d921ed84706d3b93d89af01be9bb37": "c9ea87c67201767e491e31b243b1ffb9",
".git/objects/36/e0490d42da512c63305eb6fded9ce73ba218c7": "0b1d92c0d72ae4e342fe9f72a1139290",
".git/objects/09/6c4ceea22c2f9ebdc04e022d222da7cecc68a4": "527605e817071d25d326b673dc615cf6",
".git/objects/09/ba64970456b648e49b10c97d7b6b182fd73f2d": "b4831c9355be0dc01cb7dfd37ded83b3",
".git/objects/91/0874c5f3d9a296359a455cfa42971cf5c71b97": "629cc20d63c72172118b638bcd839b89",
".git/objects/65/e989d0a83ac93256dbf6c08033758033825b2c": "1808f80509ac62a3f077a588f2588e07",
".git/objects/62/ac3c207e8ddc6f28cfb8c7aa847e58b8f7e818": "7795601f26261d64d3e4e2a28c1a8649",
".git/objects/62/3e462ffa48f6f884ed88b8976635ba939fc01e": "348376f5cecabda9dd9239f1b04777ba",
".git/objects/3a/fafebab79c203921001048751e842ba32727d4": "ec561250319309b299360d37ddabc578",
".git/objects/3f/a03c5ee2eb747b8ed27facc50ebc7196e700e7": "299689401fb723f449f476f734397b43",
".git/objects/5e/2128a9cb96ecaa5781d9a8817efa72e8467cda": "a917f767bc186ed7e92afb7ebf232fe8",
".git/objects/5b/46d2421bf4cba5698e9c16681b88d8a013a809": "3649ad8c3eb429edbe208eee9b4c05c3",
".git/objects/6d/718a0bf5f5954c754c46227ac3169709e15db1": "35484b25e2deee9be5cd0379cf1dab40",
".git/objects/01/5548ef620ac4a00b1af98bc0939979d4cd8056": "204b001bb395009ce2b7cab0bfb6068c",
".git/objects/6c/39d052f78d59407e20620a1d4ed2343052af61": "9195969dda4b3b6104dd234dae42f1b9",
".git/objects/97/defdd306b560f56979b3e9089db0c7b3978925": "57f389aae9151799f597d22782fcac3b",
".git/objects/97/7ccbc2e68e22746434ac3a0aaa4b9c3e6d678b": "d95628019690ea05ec77a270ee82c952",
".git/objects/63/b33de4dec6d5d632a98ba81a1beca326338797": "b877f0f6ec5ead67e6c5cc7daec746f9",
".git/objects/90/48bf27af47432a56f9a31b7a39a6f280330f5f": "c637362208ea53b405a7f02dad32982c",
".git/objects/d3/c06275720730896572957f415fbf9d0b1beaa2": "810f4b0afee103fef49d5eda821e6430",
".git/objects/ba/22646a99f53994f8eeff1fcc5ca7cbd4bb7ba1": "3bc5ed0de8f8fff28995c172b6e10e7a",
".git/objects/a9/aabb4a1d6ed3ee346cae31bb3c53a347d47464": "b79886c5fb494f82b46fdf019c904e97",
".git/objects/af/f569b02c71f95311ae69a25bc75e4124a4572f": "70c51f2d0dcba4930166fcb5b8da762f",
".git/objects/b7/3447fb27a971d48653bd2a75d7ad3dba1fd49e": "cea5aa70a3d0c43f82360dc1a5bf400b",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/54fb736997f693dd1f95d98fb5d5d8fa4980e5": "1d31af43c7d28c2672023eaa66edd1db",
".git/objects/de/e3835e88ac53bc12e38225cf742d80a5923a38": "321f8aee3689b382187b8e5acb4b3700",
".git/objects/b9/9060b1e3ccc203c5d86a8dd4fc0dafa0800903": "36257d9fb6839cae7c945aa00bcc0153",
".git/objects/a1/1a4f5ad59f7249aae044e1eab9e236093471b5": "c5400eb59c4ed0859e1ae7dfe44e18d2",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/c4/f42f22ce618fdec17a835f20dac9c74816b363": "b0cd34a9f7dba2d066a3f66255734295",
".git/objects/ea/19b7636561e5d906f487f4ff485bc00776b9a1": "2f87d521e12c871110365ee2de55a14f",
".git/objects/e1/2003b5dd86d31bf37d5858033a2477261ba0aa": "4a60b6bf44bc7343c636ff6e4793a1a0",
".git/objects/e1/216eccc2b2ad66a47f4a25985f44fa53f42f4d": "ba7271d4e5d41149c0180e6c42bd5c9c",
".git/objects/e8/913486e9a58c7c414aa71ef5bf8e5e95aa32e2": "de99c06290475cca313e39851d6f2444",
".git/objects/f6/86cdbddb6d2c18e5b462cb159eabe8e98889d7": "46b5adeb359ad0e17590fc8587e7a8bb",
".git/objects/e9/a70a502a78db2a851471ce34b137716504a8aa": "3ea64cfad2e9a82926bdc20ed98b0b99",
".git/objects/cb/653c730df21f633deea40b72474145733dcd55": "4e75eaad157d0471b9a0e6a21da7f0b6",
".git/objects/cb/068eebfe54c7ac4533b5af5a9b2bb9d8b42cc8": "74fa8847886b88acb533b9e21214dcb0",
".git/objects/ce/986d540855e72ad1bdcdef71982b7f4a8cd57d": "c13157e1e3ec772acef6cd75f3112820",
".git/objects/46/7a8db86a71ffb30064c5fa32e21fa043d21afa": "6ac0e09db577906669f82218cd170adc",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/2d/9f11ee1afabe7dc48f0d73f1dd0f000a27aa44": "11dcb4cd11e7eb1efb8b10d8d57073be",
".git/objects/1b/7f6428c73b196c44f4c0b2f6027775a3777141": "d593765218ce2f56514e06e6c7b95f23",
".git/objects/84/728d7f765bb4e20dc786475bbcd199aac5631a": "fe7af5672d51a120e422e35d1430b409",
".git/objects/4f/9aff675ec107492a0896cab1b071ca848a3be8": "a67cd97fdb81729475931ff7450d6088",
".git/objects/12/b0dcda81b6eacfcf0edf0902747aa985f4d7a8": "5ac1cb9c555a87eae99252a7fcb14ad6",
".git/objects/8c/55339174580efe980139b074e20e2c318b8476": "cb0175348c6eb7aaf0ba3d3498c0959f",
".git/objects/85/13963e803e844729faa253cabf7df5db62d38e": "595454061124ed6057ed7b2b335b2d49",
".git/objects/71/480021ee7080c554de827418fb9be0977e0260": "a7ec7c0e3cf91f07098e0d202497d0dd",
".git/objects/82/3b5aeff792283cca5d472165d8b037b83496be": "c669a2d1754fdb96aa46d7131b60a9c8",
".git/objects/40/a717d82f66971cc4952499af33f3f52fcb5ff0": "c342c8dadd7d9520a63e878be9ffe9bb",
".git/objects/2b/0e795df537038bfd1fdb0c545bf0ee7e74a040": "7c4fed881eb8093e68a62a32d926f3e6",
".git/objects/13/97abdf8bd06f9eaa46f4abd5c35689120f8d55": "6154ebda5116d63645b194dbc90956ce",
".git/objects/7a/816f17335f195bfe230c88a430795d90f919fa": "7ffab584ba28289b71da6d9bb58e8bff",
".git/objects/25/f4bdffbcbe08992817591570a85afe7e0e3a16": "58923fd9afeca8a4efb3d3468abf8dbf",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "bde8ad6b5f528f6277a22af37685a2a3",
".git/logs/refs/heads/development": "298ff943a7d4dea5289355972d4b0eb6",
".git/logs/refs/heads/master": "bb937e3729b14a70a5f1fb580b10c702",
".git/logs/refs/heads/main": "c12208f88b0f7e19830ab177a449b090",
".git/logs/refs/remotes/origin/master": "3e10a50f988bb2dfcd3a1306d44024dc",
".git/logs/refs/remotes/origin/main": "0446e014c8a5de05252752691d4e4084",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/refs/heads/development": "7ff772d3a5b65abcce127d09fc2da8f9",
".git/refs/heads/master": "7ff772d3a5b65abcce127d09fc2da8f9",
".git/refs/heads/main": "a1e1aa9aaf0d00e19711310d569a5050",
".git/refs/remotes/origin/master": "7ff772d3a5b65abcce127d09fc2da8f9",
".git/refs/remotes/origin/main": "a1e1aa9aaf0d00e19711310d569a5050",
".git/index": "e5ae13a55fedf839cec71e734da32aba",
".git/COMMIT_EDITMSG": "69e1e7102a22c9d70fd3d296df1e8940",
"assets/AssetManifest.json": "f5d69ffb55ac8f14ecdf0761cb24c264",
"assets/NOTICES": "6aeca6bf2ffc2e73993faa4b70f5b8b6",
"assets/FontManifest.json": "308edf528888a5f7c7399f8b23e1fa28",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/segoesc.ttf": "5c452fb7a0f5751f4e94e9d84eb01154",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/team.jpg": "5b380e3e8c4b149be90898ff857dd765",
"assets/assets/iphonemock2.png": "b989282b554d88d1b1ed713f1b85dc8f",
"assets/assets/celebrating.jpg": "626b6308145c52a2dd45cd12effc6bf2",
"assets/assets/iphonemock1.png": "d2b7c1d4ce066cfa9910995b21ccedc2",
"assets/assets/privacy.jpg": "356aa6074c575d61db3b1ecae70ccfcc",
"assets/assets/help.jpg": "86d25913c7a294039565ca64a887bbf6",
"assets/assets/politicaDePrivacidade.txt": "1e44b5dcf9f360e5a301290d83ae8e92"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
