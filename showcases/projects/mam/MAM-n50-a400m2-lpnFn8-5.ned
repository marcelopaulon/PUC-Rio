
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-5
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
        @display("p=388.00,189.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=352.23,200.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=341.07,205.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=304.90,202.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=389.57,172.87");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=368.15,199.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=340.75,236.72");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=358.38,173.49");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=263.02,240.26");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=319.39,218.92");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=267.93,269.55");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=383.77,208.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=390.71,201.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=294.52,215.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=380.08,138.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=372.47,131.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=379.15,249.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=295.68,159.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=367.17,154.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=300.45,127.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=340.19,263.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=398.43,162.12");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=363.00,215.02");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=367.84,295.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=345.94,127.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=307.57,191.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=392.57,247.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=360.95,246.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=372.47,186.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=376.13,216.69");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=269.84,249.94");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=238.04,197.42");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=352.85,158.78");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=343.88,288.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=272.47,222.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=325.88,185.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=255.08,185.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=323.14,165.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=223.00,213.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=370.80,165.24");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=391.13,283.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=255.68,203.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=371.98,110.60");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=340.81,136.20");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=355.29,120.05");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=306.01,218.08");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=338.02,174.21");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=387.61,147.62");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=338.87,300.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=351.79,238.42");
    }

}

