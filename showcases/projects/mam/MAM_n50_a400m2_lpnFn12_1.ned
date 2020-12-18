
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_1
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=107.36,309.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=111.24,373.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,382.78");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=123.69,362.87");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=75.58,373.53");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,350.94");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=103.19,388.16");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=121.66,389.53");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=103.28,364.93");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=38.21,340.39");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,249.80");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.50,279.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=74.01,389.85");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=53.85,302.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.94,284.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=149.04,274.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=132.77,277.59");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=33.13,392.84");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.97,343.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.96,285.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=64.96,224.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=188.27,357.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=105.69,399.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=60.22,330.76");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=115.74,289.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,301.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=53.18,315.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=47.02,385.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.32,330.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.01,256.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,338.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=88.53,311.47");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.81,399.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=170.32,334.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=157.60,322.37");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=206.71,317.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,384.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,363.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=175.26,317.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=11.24,303.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,218.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=189.72,312.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=20.82,330.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=178.51,362.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=33.55,295.10");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=60.22,294.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=106.65,344.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=8.89,335.70");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=66.57,364.79");
    }

}

