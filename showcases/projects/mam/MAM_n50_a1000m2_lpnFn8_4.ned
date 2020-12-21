
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_4
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=129.75,183.76");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=117.59,209.03");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=158.14,216.00");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=225.72,148.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=290.32,210.85");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=206.41,160.77");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=87.45,117.88");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=112.76,279.40");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=200.76,202.49");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=104.62,171.07");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=246.47,173.98");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=354.17,277.36");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=208.66,171.67");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=53.77,118.81");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=68.11,146.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.55,179.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=137.26,201.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=270.33,167.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=320.14,215.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=137.08,103.00");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=99.09,88.81");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=64.91,134.70");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=52.31,281.96");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=150.71,258.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=225.54,135.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=277.36,257.16");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=191.99,212.12");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=77.60,62.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=137.37,156.40");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=167.30,234.23");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=186.96,228.21");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=226.77,158.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=301.69,199.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=160.24,167.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.23,155.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=125.81,99.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,189.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=66.97,218.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=261.48,195.89");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=368.69,239.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=146.63,194.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=110.67,145.30");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,144.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=87.27,209.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=187.08,248.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.55,210.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=283.74,146.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=128.13,119.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=75.88,25.76");
    }

}

