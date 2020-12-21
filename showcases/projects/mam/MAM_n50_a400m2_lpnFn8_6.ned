
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_6
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
        @display("p=30.94,168.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=14.54,193.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=40.41,246.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=12.13,164.77");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=8.56,232.92");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=24.18,265.77");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=48.93,67.20");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,141.67");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=14.40,208.01");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=65.92,220.31");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=25.14,97.80");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=39.95,154.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=28.95,318.26");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.91,131.69");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=74.04,153.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=13.09,176.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,254.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=30.99,134.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=20.64,226.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=34.45,271.52");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.35,86.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=36.32,193.48");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,163.23");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=41.00,235.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.16,204.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=24.97,213.59");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=11.17,267.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=163.97,119.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=52.57,230.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,164.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=134.36,225.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=78.96,178.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=23.33,241.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=92.38,297.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=119.76,144.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=85.01,199.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=86.24,242.30");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=45.79,169.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=53.13,178.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=4.87,297.28");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.89,237.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=61.44,57.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=2.42,192.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=56.46,203.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=90.60,268.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=11.28,145.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=65.41,208.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=83.19,214.54");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=132.08,131.10");
    }

}

