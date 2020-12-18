
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_7
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
        @display("p=86.04,69.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.38,67.31");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=57.38,147.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=46.65,156.19");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=87.71,117.13");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=126.19,99.45");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=136.57,73.63");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.48,112.49");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=15.96,174.24");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=135.43,30.78");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=78.53,42.44");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=78.35,122.84");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=99.29,149.05");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=31.38,76.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=71.34,111.96");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,8.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.89,37.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=59.99,129.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=11.94,128.39");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=70.25,101.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=71.52,81.00");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=1.44,38.12");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=85.86,175.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=24.22,165.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=136.58,42.83");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=19.11,39.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=94.48,8.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=89.21,128.89");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=67.38,250.92");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,111.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,0.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=39.69,68.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=80.68,233.49");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=51.29,186.83");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=157.92,118.69");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=104.88,65.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=40.21,111.01");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=53.24,197.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=116.02,197.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=98.44,112.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=66.61,154.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=39.16,86.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=139.05,184.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=139.57,130.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=169.03,86.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=83.95,79.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=15.15,83.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=35.02,133.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=84.35,199.61");
    }

}

