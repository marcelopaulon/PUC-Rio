
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-6
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
        @display("p=224.00,121.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=268.20,115.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=230.67,145.17");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=335.54,72.44");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=272.41,77.64");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,147.77");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=286.19,157.14");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,170.20");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=273.03,89.06");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=255.09,59.74");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=166.59,89.88");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=351.79,82.27");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=263.79,196.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=365.92,37.49");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=245.90,43.14");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=174.84,184.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=207.37,130.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=242.00,110.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=334.02,54.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=198.55,82.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=300.57,87.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=263.55,138.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=208.66,147.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=384.46,115.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=318.23,109.14");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=228.46,134.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=300.02,75.02");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=193.86,203.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=245.36,95.05");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=279.82,134.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=212.33,204.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=286.53,122.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=203.33,194.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=263.59,10.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=282.14,72.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=314.31,160.46");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=330.29,160.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=297.29,171.15");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=351.18,109.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=227.18,100.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=216.63,162.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=225.47,80.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=248.72,169.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=315.86,77.76");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=211.35,18.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=252.00,105.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=209.89,76.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=271.37,218.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=320.26,58.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=255.29,132.62");
    }

}

