
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-3
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
        @display("p=339.00,236.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=372.62,176.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=367.92,195.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=392.21,217.45");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=377.96,193.80");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=317.71,262.12");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=320.94,249.57");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=389.62,181.94");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=377.71,207.58");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=300.83,214.69");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=364.64,204.80");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=282.40,192.58");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=307.17,198.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=346.06,272.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=339.86,206.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=277.28,183.98");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=349.02,164.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=384.89,234.72");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=362.70,156.08");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=301.54,165.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=372.22,260.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=376.42,164.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=291.39,223.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=359.92,182.47");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=394.19,194.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=293.68,191.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=351.46,175.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=354.32,280.32");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=343.14,260.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=384.51,276.89");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=334.79,268.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=351.25,144.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=355.67,218.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=398.08,207.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=352.70,116.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=327.95,223.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=328.93,133.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=325.00,177.53");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=354.24,205.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=388.90,112.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=320.13,324.29");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=322.96,98.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=316.46,168.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=363.48,125.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=332.96,184.86");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=361.62,143.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=333.15,162.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=376.04,153.97");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=323.92,199.21");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=386.87,157.23");
    }

}

