
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_5
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=146.21,20.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=160.87,101.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=128.79,19.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=116.17,9.92");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=164.77,52.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=185.66,99.18");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=222.35,125.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=216.82,182.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=182.20,199.29");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=173.47,214.22");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=220.66,158.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=238.38,103.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=126.76,146.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=153.49,10.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=202.45,130.26");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=111.49,98.09");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=94.31,24.28");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=185.60,58.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=180.88,86.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=260.11,80.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=191.94,149.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=226.39,278.75");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=167.01,244.97");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.32,190.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=263.82,25.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=131.32,85.03");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=163.36,41.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.63,152.84");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=80.14,81.10");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,30.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=172.57,8.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=212.40,38.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=243.88,37.40");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=146.94,232.89");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=208.20,160.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=174.90,238.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=131.86,116.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=307.95,80.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=144.46,100.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.28,66.68");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=156.03,91.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=46.86,6.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=172.43,71.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=152.58,32.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=196.43,38.62");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=248.22,146.40");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=170.86,164.96");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=192.55,251.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=247.84,217.41");
    }

}

