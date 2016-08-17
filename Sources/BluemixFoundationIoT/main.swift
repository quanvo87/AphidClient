/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/


import Aphid
import Foundation

let clientId = "Foo"

let client = Client(clientId: "d:mbu1j9:Soil-sensor:tomato-plant", username: "use-token-auth", password: "8g!kD!hZZe-T+NAIbQ")

config.host = "mbu1j9.messaging.internetofthings.ibmcloud.com"

try client.connect()

client.subscribe(topic: ["iot-2/cmd/waterPump/fmt/json"], qoss: [.atMostOnce])

while config.status == ConnectionStatus.connected {

	let level = arc4random_uniform(75) + 25

	print("Publishing Humidity Level: \(level)")

	client.publish(topic: "iot-2/evt/water/fmt/json", withMessage: "{\"water\": \(level)}")

    sleep(10)
}
