
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_8
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
        @display("p=49.17,751.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=55.54,778.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=64.19,709.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.38,646.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.17,720.03");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=70.13,778.13");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.46,669.76");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=15.93,747.48");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=6.98,755.42");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.98,769.61");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=51.23,600.75");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=142.24,653.35");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=29.64,718.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,640.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=33.30,760.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=47.63,770.46");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=97.93,654.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.69,709.55");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=80.35,735.40");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=143.28,722.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=59.31,719.57");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=42.02,791.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,753.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=82.10,626.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=98.51,668.81");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=125.36,769.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,735.64");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=71.03,616.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=57.75,668.41");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.39,755.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.83,793.29");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.85,699.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=110.80,646.02");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=148.53,742.19");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=75.78,714.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=120.86,789.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=16.65,768.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=63.10,633.43");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.35,682.80");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=63.37,678.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=165.17,791.78");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=150.79,767.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=41.65,739.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,765.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.21,775.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=79.79,690.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=109.90,748.12");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=94.08,758.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=159.39,713.62");
    }

}

