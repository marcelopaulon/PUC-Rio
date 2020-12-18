
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_7
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
        @display("p=75.13,237.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=4.78,266.34");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=20.15,252.88");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=0.07,301.66");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=111.03,311.50");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=123.16,304.89");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=34.75,245.81");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=3.51,325.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=45.56,343.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=93.46,321.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=22.53,227.66");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,266.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.20,163.90");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=13.05,346.12");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=118.95,373.29");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=114.62,146.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=26.43,237.81");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=25.83,336.30");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=33.72,294.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=82.71,220.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=132.27,228.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=31.38,358.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=74.88,193.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=13.88,290.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=101.78,338.78");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=81.23,301.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=8.81,313.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=28.22,322.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=10.38,332.68");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=42.46,317.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=61.31,183.25");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.18,329.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=40.80,210.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=2.24,232.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=130.72,358.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=54.48,248.54");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=20.85,307.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=53.83,303.40");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,280.32");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=79.40,324.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=145.30,177.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=46.41,192.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=24.46,169.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=75.55,363.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.86,352.34");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=93.16,247.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=5.41,282.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=0.41,350.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,264.27");
    }

}

