
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_2
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
        @display("p=141.61,341.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=130.38,348.26");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=43.66,391.58");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=85.59,374.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=43.56,377.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=51.76,397.74");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=118.35,309.40");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=50.75,363.65");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=135.37,371.17");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=67.58,373.85");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=146.23,324.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=90.64,346.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.46,355.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=96.35,287.74");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=47.39,315.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=71.69,348.62");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=29.01,389.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.81,331.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=27.97,368.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=72.73,393.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=83.86,354.82");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=115.43,322.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,260.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=65.61,383.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.84,282.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=28.51,307.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=119.65,339.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=149.61,365.30");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=197.03,262.80");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=89.03,324.47");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=24.92,353.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=131.36,394.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=37.30,355.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=137.60,360.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=189.69,340.76");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=88.97,273.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=117.39,372.31");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=139.04,386.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=76.72,364.54");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=28.53,291.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=18.62,392.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=74.67,318.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,356.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=172.05,391.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=3.70,329.45");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=104.47,346.02");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=105.90,317.94");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=5.78,392.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=59.67,216.32");
    }

}

