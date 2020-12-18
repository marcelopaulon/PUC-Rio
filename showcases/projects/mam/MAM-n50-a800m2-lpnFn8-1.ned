
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-1
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
        @display("p=552.00,60.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=506.90,68.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=549.59,117.38");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=547.41,131.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=525.73,101.42");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=540.80,38.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=525.24,89.22");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=515.87,104.94");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=501.12,86.80");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=455.31,134.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=582.31,138.41");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=516.89,157.10");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=461.07,19.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=579.33,121.07");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=626.76,60.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=538.63,70.36");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=620.11,159.20");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=523.87,51.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=487.18,112.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=546.78,8.71");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=450.65,116.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=592.53,115.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=464.85,67.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=534.13,138.31");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=579.04,191.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=552.04,72.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=566.68,61.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=560.12,154.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=589.47,76.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=437.03,7.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=552.34,104.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=623.23,133.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=552.12,171.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=542.01,53.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=574.30,166.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=598.49,4.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=503.47,130.01");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=567.82,128.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=515.14,201.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=513.29,90.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=525.46,30.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=514.07,77.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=629.98,92.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=594.61,96.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=610.08,101.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=461.18,112.38");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=467.56,94.74");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=567.28,37.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=478.10,131.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=526.39,114.78");
    }

}

