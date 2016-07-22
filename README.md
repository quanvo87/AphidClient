![Swift 3](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)
[![Swift 3 6-20](https://img.shields.io/badge/Swift%203-6/20 SNAPSHOT-blue.svg)](https://swift.org/download/#snapshots)

# Aphid Client Examples

> This repository holds various sample usage cases for the [Aphid](https://github.com/IBM-Swift/Aphid/) MQTT Driver. Larger more robust project examples will be added here in the future

## Setup:

> Requires `swift-DEVELOPMENT-SNAPSHOT-2016-06-20-a toolchain` (Minimum REQUIRED for latest release)

1. Instructions for install swift snapshots and previews can be found [here](https://swift.org/download/)

2. Install openssl:

    macOS: `brew install openssl`

    linux: `sudo apt-get openssl`

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
