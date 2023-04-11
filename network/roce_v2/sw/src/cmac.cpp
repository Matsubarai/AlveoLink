/*
 * Copyright 2019-2022 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/

#include "cmac.hpp" //"impl/cmac.hpp"
#include <map>
#include <string>

namespace AlveoLink {
    namespace network_roce_v2 {

        void KernelCMAC::initCU(const unsigned int p_id) {
            std::string l_cuName = "cmac_" + std::to_string(p_id);
            this->getIP(l_cuName);
        }

        std::map<std::string, bool> KernelCMAC::linkStatus() {
            std::map<std::string, bool> status_dict;

            uint32_t l_rxStatus = this->readReg(stat_rx_status);
            l_rxStatus = this->readReg(stat_rx_status);

            std::bitset<32> l_rxBits(l_rxStatus);
            uint32_t l_txStatus = this->readReg(stat_tx_status);
            l_txStatus = this->readReg(stat_tx_status);

            std::bitset<32> l_txBits(l_txStatus);
            status_dict.insert({"rx_status", l_rxBits.test(0)});
            status_dict.insert({"rx_aligned", l_rxBits.test(1)});
            status_dict.insert({"rx_misaligned", l_rxBits.test(2)});
            status_dict.insert({"rx_aligned_err", l_rxBits.test(3)});
            status_dict.insert({"rx_hi_ber", l_rxBits.test(4)});
            status_dict.insert({"rx_remote_fault", l_rxBits.test(5)});
            status_dict.insert({"rx_local_fault", l_rxBits.test(6)});
            status_dict.insert({"rx_got_signal_os", l_rxBits.test(14)});
            status_dict.insert({"tx_local_fault", l_txBits.test(0)});
            return status_dict;
        }

        void KernelCMAC::turnOn_RS_FEC(bool enable_fec){   
            if(enable_fec){
                if(!get_RS_FEC_enable()){
                    this->writeReg(rsfec_config_enable, 0x3);
                    sleep(5);
                }
            }else{
                if(get_RS_FEC_enable()){
                    this->writeReg(rsfec_config_enable, 0x0);
                }
            }
        }

        bool KernelCMAC::get_RS_FEC_enable(){
            unsigned short enable_fec_status = this->readReg(rsfec_config_enable);
            enable_fec_status = this->readReg(rsfec_config_enable);
            if(enable_fec_status == 0x3)
                return true;
            else 
                return false;
        }

        void KernelCMAC::set_FlowControlType(uint32_t pfc_code){
            this->writeReg(CONFIGURATION_RX_FLOW_CONTROL_CONTROL_REG1, 0x00003DFF);
            this->writeReg(CONFIGURATION_RX_FLOW_CONTROL_CONTROL_REG2, 0x0001C631);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_QUANTA_REG1, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_QUANTA_REG2, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_QUANTA_REG3, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_QUANTA_REG4, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_QUANTA_REG5, 0x0000FFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_REFRESH_REG1, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_REFRESH_REG2, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_REFRESH_REG3, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_REFRESH_REG4, 0xFFFFFFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_REFRESH_REG5, 0x0000FFFF);
            this->writeReg(CONFIGURATION_TX_FLOW_CONTROL_CONTROL_REG1, 0x000001FF);
            this->writeReg(flow_control_block_off, pfc_code);
        }
    }
}