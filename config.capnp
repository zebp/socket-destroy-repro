using Workerd = import "/workerd/workerd.capnp";

const helloWorldExample :Workerd.Config = (
  services = [ (name = "main", worker = .helloWorld) ],
  sockets = [ ( name = "http", address = "*:8080", http = (), service = "main" ) ]
);

const helloWorld :Workerd.Worker = (
  modules = [
    (name = "worker", esModule = embed "worker.js"),
  ],
  compatibilityDate = "2025-07-01",
  compatibilityFlags = [
    "nodejs_compat",
    "enable_nodejs_fs_module",
    "enable_nodejs_http_modules",
    "enable_nodejs_http_server_modules",
    "enable_nodejs_process_v2",
    "enable_nodejs_os_module",
    "experimental",
  ]
);
