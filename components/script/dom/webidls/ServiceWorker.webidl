/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

// http://slightlyoff.github.io/ServiceWorker/spec/service_worker/#service-worker-obj
//[Exposed=(Window,Worker)]
[Pref="dom.serviceworker.enabled"]
interface ServiceWorker : EventTarget {
  readonly attribute USVString scriptURL;
  readonly attribute ServiceWorkerState state;
  //[Throws] void postMessage(any message/*, optional sequence<Transferable> transfer*/);

  // event
  attribute EventHandler onstatechange;
};

ServiceWorker implements AbstractWorker;

enum ServiceWorkerState {
  "installing",
  "installed",
  "activating",
  "activated",
  "redundant"
};
