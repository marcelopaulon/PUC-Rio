
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_3
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
        @display("p=111.99,28.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=106.63,83.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=26.47,100.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=86.54,63.57");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.90,0.53");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=104.76,14.92");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.03,52.41");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=169.87,40.72");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,15.90");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=139.97,13.76");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=150.61,93.69");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=233.01,126.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=53.26,119.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=117.24,42.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=182.56,100.48");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=31.62,112.92");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=138.19,147.82");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=44.83,95.58");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=98.99,38.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=148.94,67.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=177.48,17.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=177.85,66.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=73.06,15.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=204.61,68.55");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=220.34,203.18");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=108.92,117.22");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=193.55,24.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=149.62,49.34");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=31.56,89.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=134.26,129.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=55.32,4.52");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=82.09,51.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=81.86,25.43");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=180.81,132.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=126.81,31.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=110.22,104.44");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=138.83,103.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=181.37,196.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.84,77.00");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=165.34,73.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=78.75,90.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=39.08,82.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=171.32,94.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.16,55.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=16.99,8.65");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=192.11,76.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=216.45,19.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=123.66,71.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=148.01,6.72");
    }

}

