
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
        @display("p=73.98,245.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=35.32,166.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=77.59,218.10");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=91.90,197.21");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=6.02,228.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=3.50,196.81");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=143.01,267.56");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=104.93,262.49");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,150.68");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=101.74,226.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=128.87,219.03");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=4.12,290.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,186.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=130.06,286.94");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=67.46,230.11");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=95.56,235.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=57.29,154.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=69.46,205.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=14.20,201.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=5.12,129.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.51,383.80");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=95.59,281.58");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=40.56,158.21");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=113.35,240.37");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=43.01,194.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=55.53,282.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=38.86,256.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=171.09,366.21");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.19,189.31");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=110.11,172.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=130.79,240.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=158.16,151.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=22.84,309.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=1.10,212.80");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=110.52,299.41");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=137.21,208.26");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=18.08,250.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=4.59,167.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.31,201.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=6.06,320.33");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=17.07,130.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=187.52,333.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=44.92,292.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=82.40,103.89");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=118.12,212.89");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=47.64,207.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=17.16,215.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=35.38,183.20");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=143.72,301.85");
    }

}

