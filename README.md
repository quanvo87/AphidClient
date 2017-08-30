# 🚫 This project is no longer maintained.

[![Build Status](https://travis-ci.org/IBM-Swift/AphidClient.svg?branch=master)](https://travis-ci.org/IBM-Swift/AphidClient)
![Swift 3](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)

# Aphid Client Examples

> This repository holds various sample usage cases for the [Aphid](https://github.com/IBM-Swift/Aphid/) MQTT Driver. Larger more robust project examples will be added here in the future

## Setup:

> Requires `swift-DEVELOPMENT-SNAPSHOT-2016-08-15-a toolchain` (Minimum REQUIRED for latest release) OR XCode 8 beta 6

1. Instructions for install swift snapshots and previews can be found [here](https://swift.org/download/)

  On Linux, you must install the Dispatch library on your toolchain with:
  
  ```
   export SWIFT_HOME=$PWD/swift-toolchains/swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a-ubuntu15.10/
   
   git clone --recursive -b experimental/foundation https://github.com/apple/swift-corelibs-libdispatch.git && cd swift-corelibs-libdispatch && sh ./autogen.sh && ./configure --with-swift-toolchain=$SWIFT_HOME/usr --prefix=$SWIFT_HOME/usr && make && make install
   ```

2. Install openssl:

    macOS: `brew install openssl`

    linux: `sudo apt-get install openssl libssl-dev`

3. Install the MQTT broker:

    macOS: `brew install mosquitto`

    linux: `sudo apt-get install mosquitto`

4. Run your MQTT broker:

    macOS: `/usr/local/sbin/mosquitto -c /usr/local/etc/mosquitto/mosquitto.conf`

    linux: `mosquitto -c /etc/mosquitto/mosquitto.conf`

5. You can build the project on the command line with:

    `swift build -Xcc -I/usr/local/opt/openssl/include -Xlinker -L/usr/local/opt/openssl/lib`


## License

This library is licensed under Apache 2.0. Full license text is available in [LICENSE](LICENSE).
