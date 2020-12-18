
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_2
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,692.91");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=152.07,687.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=83.21,734.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.93,743.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=167.27,708.83");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=187.82,642.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=211.63,625.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=243.46,644.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=262.33,657.94");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=253.02,634.55");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=198.82,633.23");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=216.65,544.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=112.72,794.00");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=73.68,738.44");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,674.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,648.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=134.65,765.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=180.80,722.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=202.07,612.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=154.87,607.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=241.18,685.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=234.49,703.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=223.66,633.62");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=287.07,597.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=230.48,520.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=83.52,663.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=97.78,739.24");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=73.88,679.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=94.73,758.04");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=173.18,781.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=143.53,673.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=126.88,711.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=172.26,635.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=233.78,639.50");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=263.51,718.09");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=173.21,607.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=123.22,632.58");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=154.52,576.60");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=59.35,784.55");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=107.94,717.26");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=152.68,641.83");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=67.98,762.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=144.51,769.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,750.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=169.47,661.67");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=274.67,685.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=231.00,690.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.71,601.24");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=272.54,621.03");
    }

}

