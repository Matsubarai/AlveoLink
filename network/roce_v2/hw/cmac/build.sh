sudo rm -r xup_vitis_network_example
rm -r build

mkdir build
git clone https://github.com/Xilinx/xup_vitis_network_example.git
cd xup_vitis_network_example/
git checkout c16cba6598099f87e203659d7f8d6a536d97ef86
cp ../template.xml ./Ethernet
cp ../bd_cmac.tcl ./Ethernet
cp -r ../ip ./Ethernet/src
cp ../package_cmac.tcl ./Ethernet
cp -r ../template_top.v ./Ethernet/src
cd Ethernet
make all DEVICE=xilinx_u280_gen3x16_xdma_1_202211_1 INTERFACE=3
cp _x.xilinx_u280_gen3x16_xdma_1_202211_1/cmac_0.xo ../../build/cmac_0.xo
cp _x.xilinx_u280_gen3x16_xdma_1_202211_1/cmac_1.xo ../../build/cmac_1.xo
cd ..
cd ..
