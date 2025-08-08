// import _stream from "node:stream"; // Uncomment this line to get the expected behavior
import { default as fs } from "fs";
import { default as net } from "net";

export default {
  async fetch(request) {
    const socket = new net.Socket();
    socket.connect(8787, "127.0.0.1");
    socket.destroy();

    return new Response("Hello, world!");
  },
};
