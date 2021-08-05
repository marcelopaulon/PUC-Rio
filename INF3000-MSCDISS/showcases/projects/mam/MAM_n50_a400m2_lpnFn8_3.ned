
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_3
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
        @display("p=76.55,106.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=36.55,135.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=6.44,182.15");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=9.48,112.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=5.42,211.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,234.54");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=12.30,81.48");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=40.23,153.33");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=92.09,82.96");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=29.85,192.03");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,111.17");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.52,237.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=11.32,258.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.77,49.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=80.47,135.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=129.02,117.77");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,167.54");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=0.29,122.12");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=81.75,248.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=54.31,217.47");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=96.87,70.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=112.47,39.26");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=86.36,110.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=77.41,201.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.00,158.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=92.67,224.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=29.35,278.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,97.80");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=12.94,41.26");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=49.29,108.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=47.58,128.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=48.15,65.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=8.14,199.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=0.88,223.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=51.06,152.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=79.41,123.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=14.61,176.13");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=34.11,120.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=65.60,123.71");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=33.25,144.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=11.65,235.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=80.78,67.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=76.74,90.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=72.98,152.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=94.46,203.11");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=4.86,138.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=26.04,297.88");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=43.33,248.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=156.42,152.29");
    }

}

