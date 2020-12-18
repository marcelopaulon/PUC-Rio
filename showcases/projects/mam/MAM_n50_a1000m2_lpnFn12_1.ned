
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_1
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
        @display("p=24.27,87.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=24.06,184.37");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=55.33,168.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=18.23,206.54");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=192.16,71.24");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=14.51,92.76");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=76.82,192.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=108.45,186.97");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=67.30,239.17");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=126.71,108.95");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=3.88,84.56");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=66.12,184.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=39.07,206.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=24.50,214.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=173.28,61.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=64.56,28.51");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=23.69,163.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=82.96,245.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=3.62,116.08");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=33.53,82.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=60.61,59.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=22.93,147.03");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,260.20");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=57.64,283.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=119.36,68.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=78.51,15.95");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,156.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=118.99,184.03");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=91.86,196.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=149.63,14.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=82.47,140.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=37.48,138.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=33.94,220.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=44.43,179.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=180.53,128.68");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=4.89,154.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=93.06,159.71");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=44.55,167.00");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=66.16,164.29");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=137.87,99.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,85.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=94.74,209.62");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=130.78,206.15");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=67.97,151.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=136.47,122.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=56.89,49.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,210.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=12.26,105.32");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.60,292.11");
    }

}

