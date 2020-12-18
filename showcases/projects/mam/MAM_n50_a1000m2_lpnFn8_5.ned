
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_5
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=27.04,843.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=26.62,805.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=61.93,758.37");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=31.17,711.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,694.81");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=90.22,699.52");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=104.97,935.80");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=57.00,877.92");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=59.44,810.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=30.61,777.26");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=26.01,732.41");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=77.83,783.52");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=34.25,621.22");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=102.02,914.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=33.49,936.62");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=12.17,774.85");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=108.55,770.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.64,674.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=46.25,677.82");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=75.95,642.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.60,895.94");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=49.58,917.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=54.52,887.90");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=61.12,683.49");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=40.55,728.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=5.25,671.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=108.90,690.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=157.37,934.62");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=47.57,898.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=16.55,804.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=96.25,804.68");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=10.83,707.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.34,711.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,686.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=82.05,960.35");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=83.29,902.56");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,731.86");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=88.08,756.63");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=24.65,638.60");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=113.41,625.42");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.67,605.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=91.81,855.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,870.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=24.81,752.85");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=71.50,748.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.37,714.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=131.48,761.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=53.95,667.36");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=113.55,851.92");
    }

}

