
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-7
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
        @display("p=265.00,631.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=316.52,689.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=351.53,686.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=264.39,696.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=268.08,654.41");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=192.76,635.63");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=290.51,702.26");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=389.49,642.40");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=250.93,740.08");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=215.82,675.87");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=328.87,576.98");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=347.30,594.84");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=389.28,688.80");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=264.18,747.98");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=304.27,651.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=255.50,624.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=382.95,732.31");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=377.24,685.68");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=281.19,678.86");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=292.07,594.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=331.47,695.06");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=234.81,658.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=299.07,771.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.38,664.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=224.19,611.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=251.50,646.03");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=277.92,713.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=350.82,647.77");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=229.46,728.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=218.54,717.17");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=360.42,631.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=253.09,660.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=312.95,702.58");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=271.86,669.17");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=299.70,718.42");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=240.83,560.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=380.05,629.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=340.21,670.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=303.54,689.76");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,643.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=223.50,695.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=325.35,620.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=346.07,772.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=345.37,656.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=216.75,624.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=197.35,587.48");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=345.04,630.29");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=308.70,669.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=262.72,766.44");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=272.47,704.60");
    }

}

