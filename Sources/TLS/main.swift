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

let client = Client(clientId: clientId)

let myCertPath = "/opt/myApp/config/myCertificate.pem"
let myKeyPath = "/opt/myApp/config/myKeyFile.pem"

try client.setSSL(certPath: myCertPath, keyPath: myKeyPath)

try client.connect()

// ....
client.publish(topic: "city/austin/temperature", withMessage: "90 degrees")

client.subscribe(topic: ["city/#", "status/lastWill"], qoss: [.atMostOnce,.atLeastOnce])

while config.status == ConnectionStatus.connected {
    sleep(60)
}
