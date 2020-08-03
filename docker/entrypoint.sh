#!/bin/bash
#
# Copyright 2019 Telefonica Investigación y Desarrollo, S.A.U
#
# This file is part of iotagent-ul
#
# iotagent-ul is free software: you can redistribute it and/or
# modify it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the License,
# or (at your option) any later version.
#
# iotagent-ul is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public
# License along with iotagent-ul. If not, see http://www.gnu.org/licenses/.
#
# For those usages not covered by the GNU Affero General Public License please contact
# with iot_support at tid dot es
#

if [[  -z "$PM2_ENABLED" ]]; then
    echo "INFO: IoT Agent running standalone"
    node /opt/iotaul/bin/iotagent-ul
else
    echo "***********************************************"
    echo "INFO: IoT Agent encapsulated by pm2-runtime see https://pm2.io/doc/en/runtime/integration/docker/"
    echo "***********************************************"
    pm2-runtime /opt/iotaul/bin/iotagent-ul
fi
