
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_3
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
        @display("p=56.55,45.51");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=107.83,71.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=89.92,137.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=138.73,165.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.30,122.08");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=56.01,108.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=145.58,83.80");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=165.57,57.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=145.19,35.95");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=211.82,8.88");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=236.21,55.15");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=216.87,67.03");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=102.82,82.69");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=61.28,78.80");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=187.03,15.73");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=72.66,164.88");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=191.63,188.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=130.75,109.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=104.82,117.85");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=69.04,87.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=169.57,86.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.33,35.97");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=127.87,58.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=256.04,97.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=229.84,128.30");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=20.75,116.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=33.62,72.34");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=117.37,83.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.34,39.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=182.51,169.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=35.03,60.34");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=77.85,112.62");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=169.50,129.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=160.77,98.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=233.97,81.64");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=146.18,19.19");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=253.33,18.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=291.83,76.80");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=163.92,139.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=131.07,32.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.57,122.64");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=37.17,212.88");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=190.64,134.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=25.64,170.38");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=119.04,45.27");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=80.98,45.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=184.35,153.29");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,6.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=163.10,3.00");
    }

}

