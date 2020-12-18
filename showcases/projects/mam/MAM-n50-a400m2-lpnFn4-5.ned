
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-5
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
        @display("p=19.00,144.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=26.53,48.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,90.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=128.43,87.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.86,167.95");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=203.27,162.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=157.06,192.52");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=202.04,227.47");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=283.51,240.67");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=369.35,242.67");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=388.41,326.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=376.74,372.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=396.95,334.40");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=31.77,105.19");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=58.99,70.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.30,22.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=157.91,129.58");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=30.98,211.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=113.52,196.23");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=133.38,176.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=136.36,264.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=298.02,219.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=310.13,262.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=344.47,238.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=393.96,358.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=391.78,312.76");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.82,87.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=12.65,43.94");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=161.67,98.54");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=89.25,8.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=48.97,233.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=217.82,131.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=224.91,218.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=239.65,234.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=303.33,234.75");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=368.85,262.24");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=368.37,306.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=337.31,392.32");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=335.73,273.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=9.36,182.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=9.73,79.89");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=79.30,123.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.50,182.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=89.05,190.00");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=226.07,80.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=100.72,240.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=254.26,261.64");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=330.88,252.56");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=357.73,273.29");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=396.06,282.29");
    }

}

