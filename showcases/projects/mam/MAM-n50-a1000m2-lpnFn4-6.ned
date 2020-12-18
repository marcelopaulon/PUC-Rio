
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-6
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
        @display("p=276.00,519.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=222.04,517.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=230.91,464.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=290.53,487.33");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=202.78,512.51");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=207.38,525.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=273.40,576.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=258.41,563.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=240.88,533.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.17,574.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=96.64,583.56");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=149.60,635.02");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=145.01,549.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=321.95,500.52");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=254.40,498.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=195.85,550.85");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=323.98,576.54");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=185.57,479.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=232.96,579.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=255.07,661.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=286.36,538.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=186.72,573.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.59,561.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=27.82,556.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=205.27,642.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=145.45,624.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=242.35,465.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=248.31,482.41");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=226.29,450.16");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=305.32,511.30");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=175.50,516.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=256.71,550.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=229.82,491.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=246.38,590.15");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=151.74,567.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=212.52,620.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,561.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=123.42,682.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=189.11,619.78");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=307.66,587.58");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=263.03,489.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=221.09,478.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=279.11,488.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=189.53,448.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=140.70,512.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=261.21,597.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=260.18,524.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=171.84,551.08");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=197.67,590.10");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=127.14,623.84");
    }

}

