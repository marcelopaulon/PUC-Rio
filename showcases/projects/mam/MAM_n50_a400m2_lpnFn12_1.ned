
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_1
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
        @display("p=126.56,308.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=181.35,267.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=157.45,252.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=227.11,221.82");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=124.76,328.61");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=101.45,345.78");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=241.88,209.55");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=154.76,224.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=224.32,138.65");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=141.73,353.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=136.57,300.47");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=174.20,169.68");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=120.71,282.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=267.01,191.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=8.92,324.06");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=115.25,379.50");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=234.21,265.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=122.63,188.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=211.49,243.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.50,335.81");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=97.83,274.50");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=183.66,278.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=62.37,253.87");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=321.86,222.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=42.16,279.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=75.60,375.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.96,301.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=223.99,180.76");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=239.18,130.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=59.20,274.83");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=85.65,253.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=147.91,262.49");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=201.76,249.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=191.92,129.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=46.48,377.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,340.31");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=191.60,265.65");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=138.11,157.95");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=238.62,192.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=154.86,278.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.90,392.31");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=182.23,290.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=222.91,210.45");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=250.21,203.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=141.50,227.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=112.45,355.35");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=110.16,272.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=99.07,219.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=245.65,220.66");
    }

}

