
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_1
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
        @display("p=182.40,265.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=172.70,214.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=210.37,249.01");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=233.19,158.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=271.56,195.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=336.64,189.09");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=320.29,237.61");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=320.65,313.62");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=307.56,332.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=292.94,367.60");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=284.36,395.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=306.51,373.76");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=126.04,279.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=202.33,217.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=226.95,188.78");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=233.02,231.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=241.75,152.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=214.55,180.65");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=367.36,233.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=300.60,236.57");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=326.05,274.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=307.10,275.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=279.68,368.04");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=284.00,382.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=390.28,394.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=102.31,318.88");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=196.71,235.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=155.33,232.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=170.57,271.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=236.73,123.92");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=283.28,170.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=276.56,142.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=319.93,329.00");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=249.11,268.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=365.81,372.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=369.22,340.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=323.10,388.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=255.10,363.84");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=94.13,376.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=147.33,312.38");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=208.24,196.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=200.13,275.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=141.93,132.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=290.49,227.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=256.70,222.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=372.71,162.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=327.34,322.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=363.88,314.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=315.41,367.72");
    }

}

