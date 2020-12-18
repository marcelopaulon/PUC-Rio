
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=111.59,155.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=33.44,172.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,116.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=65.72,187.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=69.51,214.01");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=74.12,199.17");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=73.13,258.04");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=24.94,297.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=21.51,231.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=85.24,202.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=18.89,171.61");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=71.77,165.18");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=75.02,28.18");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=14.79,162.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=44.99,159.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=10.31,59.48");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=75.19,134.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=55.26,215.37");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=164.49,163.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=141.83,274.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,286.95");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=58.95,238.68");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=90.44,295.62");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=27.86,190.06");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=22.27,245.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=43.95,49.46");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.26,172.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=103.59,186.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=84.89,160.79");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=31.74,265.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=82.00,232.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=45.82,202.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.18,235.13");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=7.46,331.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=83.74,285.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=40.54,277.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=13.59,183.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=20.93,87.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=104.55,50.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=16.74,148.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=25.44,214.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=56.63,108.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=91.36,141.49");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=49.95,304.15");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=135.18,178.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=37.89,331.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=2.65,304.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=84.71,178.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=87.23,217.05");
    }

}

