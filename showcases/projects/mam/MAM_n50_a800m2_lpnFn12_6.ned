
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_6
{
    parameters:
        @display("bgb=800,800;bgg=100,1,grey95;bgu=m");
        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);

        @figure[rcvdPkText](type=indicatorText; pos=50,50; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
        @statistic[packetReceived](source=collector1.app[0].packetReceived; record=figure(count); targetFigure=rcvdPkText);

    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer if hasVisualizer() {
            @display("p=0,0");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=1,0");
        }
        radioMedium: <default("Ieee802154NarrowbandScalarRadioMedium")> like IRadioMedium {
            @display("p=2,0");
        }
        physicalEnvironment: PhysicalEnvironment {
            @display("p=3,0");
        }
        collector1: <default("WirelessHost")> like INetworkNode {
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=164.90,728.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=171.27,767.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=197.49,735.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=259.85,671.59");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=119.99,684.39");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=199.98,698.48");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=163.26,752.48");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=161.25,653.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=249.71,640.67");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.23,711.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=120.51,796.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=144.44,779.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=170.41,644.01");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=259.56,645.82");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=121.40,725.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=135.18,674.38");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=253.15,792.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=175.85,739.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=289.71,669.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=117.96,615.94");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=171.11,720.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=223.14,750.67");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=192.03,721.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=303.34,657.79");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=7.99,689.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=187.96,672.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=152.32,752.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=249.74,727.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=259.83,619.29");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=101.25,654.63");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=229.81,689.00");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,708.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=234.68,719.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=275.53,595.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=34.44,731.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=135.35,708.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=190.38,775.33");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=230.63,669.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=196.11,604.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=104.89,714.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=160.17,698.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=125.70,711.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=212.17,666.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=288.42,719.39");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=106.41,741.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,780.48");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=153.70,772.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=210.61,655.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=245.49,660.18");
    }

}

