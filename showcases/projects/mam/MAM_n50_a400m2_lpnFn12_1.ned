
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_1
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
            @display("p=100,100");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,149.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=160.11,163.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.45,182.89");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=162.18,113.97");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,46.29");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=130.05,105.36");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=165.57,139.69");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=191.02,209.90");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=154.27,54.80");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.15,62.54");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,166.68");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=107.91,120.89");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.62,193.70");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=99.13,78.02");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.50,148.49");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=134.51,117.33");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=166.90,200.13");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=143.84,244.04");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=91.15,133.86");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=104.94,132.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=120.28,118.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,204.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.75,259.30");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=207.48,132.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=67.55,190.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=158.09,190.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=238.95,175.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=116.73,189.70");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=220.56,103.21");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=13.56,139.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=139.23,80.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=177.53,189.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=116.69,137.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=134.68,42.24");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=28.99,169.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=223.81,129.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=206.97,191.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=133.87,172.17");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=168.31,127.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=74.66,153.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=169.71,214.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=134.30,193.01");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=128.48,233.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=232.76,139.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=36.43,103.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=223.60,167.94");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=217.73,193.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=132.00,281.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=119.94,34.36");
    }

}

