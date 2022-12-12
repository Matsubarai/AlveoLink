# Copyright 2019-2022 Xilinx, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/usr/bin/env bash

#usage ./run_compile.sh numKernel filepath hopnumber batchsize

CUR_DIR=$(pwd)
AL_PATH=$(awk 'sub(/AlveoLink.*/, "")' <<< "$CUR_DIR")AlveoLink

ssh -f host01  "cd $AL_PATH/tests/kernel/sync_dv/tm_managers; bash tm_managers.sh host01 1 $1"

ssh -f host03  "cd $AL_PATH/tests/kernel/sync_dv/tm_managers; bash tm_managers.sh host03 0 $1"

sleep 1