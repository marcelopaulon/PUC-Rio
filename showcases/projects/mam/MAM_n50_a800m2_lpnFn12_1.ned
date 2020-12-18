
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_1
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
        @display("p=52.68,699.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=50.38,634.62");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=72.15,604.73");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=22.32,658.79");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=49.91,769.60");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=44.38,725.11");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=36.49,609.43");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=46.85,610.76");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=64.25,730.40");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=184.19,661.64");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=33.12,678.52");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=37.56,704.05");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=116.66,604.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=81.80,663.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=87.33,712.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=101.54,773.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.40,549.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=86.56,630.94");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=13.09,608.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,692.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=34.37,738.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=122.22,681.85");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=169.46,597.03");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=42.42,692.50");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=36.58,755.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=113.00,713.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=30.97,621.91");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=76.86,582.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=32.77,660.65");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=5.67,675.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=35.81,633.39");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.85,580.17");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=105.26,577.93");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=18.20,681.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=151.60,724.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=86.54,754.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=93.92,582.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.62,562.67");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=23.84,585.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=140.47,682.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=131.65,667.77");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=58.52,621.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=57.54,650.05");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=27.58,669.35");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=155.27,675.68");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=118.13,668.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=109.75,641.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=24.10,648.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=22.67,615.73");
    }

}

