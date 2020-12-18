
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_4
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
        @display("p=194.35,330.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=259.86,393.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=245.43,367.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=273.91,350.66");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=252.92,272.75");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=167.78,251.79");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=157.50,381.19");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=239.34,337.46");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.61,332.56");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=205.46,345.06");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=276.85,365.83");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=280.75,265.22");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=208.39,271.43");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=9.61,335.30");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=213.15,374.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=223.75,362.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=270.22,373.42");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=306.92,367.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=318.69,277.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=119.59,243.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=113.14,262.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=267.33,299.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=244.99,349.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=310.41,350.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=237.94,322.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=259.74,289.09");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=227.28,267.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=28.86,281.71");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=168.14,285.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=224.18,347.91");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=257.40,360.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=312.69,312.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=196.77,317.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=150.21,267.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=88.85,291.59");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=265.13,317.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=288.29,317.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=271.60,395.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=281.26,301.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=227.17,327.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=97.86,240.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=68.93,314.80");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=184.41,314.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=282.27,380.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=149.90,357.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=243.32,306.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=243.66,259.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=197.71,210.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=76.32,332.95");
    }

}

