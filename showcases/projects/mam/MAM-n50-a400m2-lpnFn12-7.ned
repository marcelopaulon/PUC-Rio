
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-7
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
        @display("p=344.00,159.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=365.21,194.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=259.60,184.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=236.64,211.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=244.36,197.36");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=307.12,163.23");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=389.20,101.94");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=187.57,130.41");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=245.31,144.43");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=294.87,233.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=353.08,170.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=354.06,212.13");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=261.57,283.65");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=224.81,188.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=202.11,252.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=323.24,160.16");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=398.38,196.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=274.76,221.49");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=295.30,256.40");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=254.99,267.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=380.99,189.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=332.52,172.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=311.51,229.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=198.34,177.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.07,129.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=303.53,121.34");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=375.59,124.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=221.37,136.67");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=248.99,276.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=236.74,172.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=291.80,196.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=368.28,248.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=248.50,155.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=291.76,210.22");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=331.55,209.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=350.60,199.58");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=391.12,171.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=308.19,100.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=302.79,195.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=259.93,157.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=374.09,160.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=381.92,153.85");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=269.61,177.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=237.18,243.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=156.99,164.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=317.50,188.71");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=334.95,285.82");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=245.64,227.81");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=269.52,139.19");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=265.88,108.44");
    }

}

