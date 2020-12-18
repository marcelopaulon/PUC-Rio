
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-0
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
        @display("p=358.00,361.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=389.16,388.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=390.32,426.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=388.82,411.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=469.81,444.85");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=332.66,358.23");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=448.51,421.47");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=410.48,424.80");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=346.03,479.54");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=434.59,491.03");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=360.62,298.55");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=416.20,434.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=398.11,467.73");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=387.94,399.40");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=472.36,433.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=332.13,302.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=347.97,358.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=354.49,512.24");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=411.56,372.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=462.64,404.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=359.95,312.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=410.48,394.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=416.49,518.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=351.88,430.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=494.35,438.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=430.18,357.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=362.77,416.28");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=315.85,386.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=480.40,374.63");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=428.60,453.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=333.52,442.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=352.65,408.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=480.36,418.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=341.66,325.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=478.43,510.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=346.38,344.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=404.89,364.16");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=373.06,424.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=413.08,455.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=475.09,499.96");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=294.04,387.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=301.22,415.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=390.91,442.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=440.18,362.09");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=544.32,491.58");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=366.20,354.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=403.37,384.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=462.80,367.31");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=385.11,500.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=459.53,462.71");
    }

}

