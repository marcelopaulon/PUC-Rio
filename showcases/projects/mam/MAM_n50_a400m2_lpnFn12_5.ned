
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_5
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
        @display("p=193.38,309.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=196.24,338.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=185.95,350.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=135.65,329.96");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=117.10,342.11");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=264.68,264.14");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=107.09,316.23");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=214.35,349.04");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.76,361.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=83.24,323.28");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=218.30,312.30");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.66,277.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=222.65,325.82");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=95.27,387.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=23.45,337.71");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=207.43,321.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=198.12,325.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=148.27,325.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=113.77,369.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=39.80,274.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=233.86,292.23");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=203.77,265.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=162.92,257.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=116.55,357.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=69.60,389.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=157.08,297.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=140.17,390.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.11,344.01");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=112.77,301.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=103.88,272.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=279.67,325.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=241.59,390.38");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=122.07,280.73");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=125.14,328.20");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,285.01");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=221.66,292.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=186.72,329.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=285.43,356.62");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=57.76,300.11");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=113.85,397.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,383.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=236.55,318.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=191.33,391.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.47,245.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=92.80,285.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=161.07,284.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.36,314.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=141.84,350.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.84,346.42");
    }

}

