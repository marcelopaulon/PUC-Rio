
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_3
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
        @display("p=118.86,255.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,281.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=202.21,244.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=149.18,305.40");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=186.93,265.62");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=156.78,265.21");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=225.57,269.29");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=228.58,280.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=129.86,295.69");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.43,334.93");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=78.58,391.36");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=67.21,305.57");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=115.37,311.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.25,226.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=171.87,312.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=189.14,331.33");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.84,301.51");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=167.38,242.21");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=174.82,202.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=265.00,213.60");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=211.11,287.26");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=190.50,251.38");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=149.22,277.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,364.85");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,312.89");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,264.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=129.77,269.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=47.22,313.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=236.61,197.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=141.51,296.61");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=199.64,255.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=212.31,336.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=295.39,285.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=215.05,274.22");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=135.61,323.65");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=172.08,339.43");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=14.29,390.45");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=105.31,261.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=78.36,333.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=213.16,226.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=85.83,242.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=156.73,205.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=176.07,372.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=170.49,220.87");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=175.42,328.66");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=275.35,333.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=319.53,250.73");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,386.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=185.45,288.34");
    }

}

