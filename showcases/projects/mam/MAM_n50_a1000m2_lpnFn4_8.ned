
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_8
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=90.43,137.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=28.87,152.79");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=50.28,191.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,218.11");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=53.14,260.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=22.80,354.96");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=35.94,363.31");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=47.65,304.93");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,379.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=47.55,432.58");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=25.61,427.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,409.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,88.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=40.40,114.66");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=12.02,168.13");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=18.47,158.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.08,274.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=69.87,312.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,402.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=122.73,407.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=96.97,257.93");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=68.87,382.71");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=53.19,445.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=102.33,436.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,476.70");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=53.11,42.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.32,202.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=68.15,154.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.60,229.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.26,205.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.05,301.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,321.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=31.75,407.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=27.80,307.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=165.72,306.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,489.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=42.05,449.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=84.56,445.90");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,138.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=187.67,154.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=6.00,176.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=86.47,225.77");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=120.00,231.22");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=36.02,299.64");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=7.48,339.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=98.66,315.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=41.95,287.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=173.62,342.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=27.58,476.61");
    }

}

