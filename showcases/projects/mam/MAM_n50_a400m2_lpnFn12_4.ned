
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_4
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,152.31");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=211.87,164.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=229.07,174.80");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=212.54,199.20");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=72.91,159.89");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=164.76,160.34");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=164.83,99.68");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=291.02,148.34");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=154.44,194.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=125.24,83.55");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=88.47,159.85");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=248.07,159.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=301.94,237.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=291.52,196.42");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=139.51,107.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=177.11,98.40");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=220.23,190.02");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=190.68,207.57");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=142.42,140.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=17.87,56.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=112.42,131.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=184.56,148.10");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=193.40,177.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=269.96,121.32");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=91.27,108.82");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=254.43,139.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=280.41,198.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=296.61,227.98");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=231.81,247.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=170.70,61.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=114.63,170.91");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=160.83,207.55");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=202.83,152.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=235.69,219.94");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=123.74,125.42");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=139.25,229.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=259.52,236.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=248.16,127.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=244.84,191.37");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,171.91");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=187.79,245.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=134.22,209.14");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=229.63,197.35");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=179.09,162.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.10,74.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.11,236.79");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=157.36,120.03");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=187.36,221.94");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=270.39,199.23");
    }

}

