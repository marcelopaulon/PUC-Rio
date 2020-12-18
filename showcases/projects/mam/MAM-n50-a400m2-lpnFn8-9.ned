
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-9
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
        @display("p=183.00,372.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,364.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=201.07,316.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=213.29,289.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=144.08,298.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=79.41,267.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=148.69,338.64");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=134.60,393.42");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=81.58,332.68");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=180.41,317.47");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=224.51,293.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.88,349.27");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=52.83,205.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=69.37,302.83");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=212.19,362.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=151.28,315.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=216.05,328.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=231.28,305.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=81.40,373.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=71.11,290.20");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.45,328.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=222.08,339.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,373.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=151.88,287.80");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=185.65,360.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=167.40,297.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=86.27,285.43");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=182.24,291.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=98.36,345.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=174.85,350.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=220.80,249.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.96,271.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=165.31,327.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=129.55,188.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=88.41,297.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,359.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.40,352.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=164.51,239.96");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=282.42,313.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=193.47,253.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.06,237.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=219.06,279.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=177.64,333.35");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=197.54,386.37");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=291.78,298.53");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=138.08,247.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=116.25,271.69");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=68.54,329.18");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=211.85,395.05");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=221.08,370.30");
    }

}

