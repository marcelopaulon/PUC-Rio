
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-0
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
        @display("p=209.00,312.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=270.70,304.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=263.33,319.15");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=273.89,318.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=249.17,353.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=231.05,289.80");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=227.09,270.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=178.00,331.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=124.75,305.65");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=172.82,318.78");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=191.61,365.03");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=131.41,294.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=170.19,253.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=203.93,348.38");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=284.92,238.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=311.46,286.08");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=292.31,390.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=189.26,333.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=266.36,215.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=210.15,263.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=233.00,411.40");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=145.31,344.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=142.08,260.06");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,330.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=124.18,240.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=154.88,162.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=208.70,401.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=311.13,224.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=227.32,363.03");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=247.63,364.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=295.59,411.32");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=158.06,244.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=250.81,199.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=118.75,346.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=107.49,290.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=190.43,311.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=208.19,425.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=192.06,284.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.00,244.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=224.65,309.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=303.37,250.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,252.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=279.97,339.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=151.61,357.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=140.48,301.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=234.27,193.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=137.72,395.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=126.51,362.24");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=171.78,342.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,335.48");
    }

}

