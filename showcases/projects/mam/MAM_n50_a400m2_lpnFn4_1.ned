
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_1
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
        @display("p=190.87,308.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=266.88,262.07");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=167.89,257.95");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=202.16,217.69");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=210.03,137.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=200.97,118.26");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=223.00,105.58");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=204.45,60.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=138.38,85.53");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=187.91,119.30");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=254.01,59.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=195.66,69.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,311.08");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.36,377.28");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=218.05,270.67");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=129.43,254.99");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=125.57,266.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=199.14,182.31");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=187.51,102.68");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=227.52,8.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=174.85,24.98");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=163.08,77.24");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=168.89,122.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=323.38,4.81");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=234.68,18.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.79,305.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=250.30,369.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=293.36,190.74");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=170.27,200.81");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=212.92,194.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=174.22,188.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=163.29,193.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=172.76,106.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=281.46,101.03");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=81.48,131.92");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=241.98,120.39");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=272.02,108.57");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=183.86,77.91");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=116.05,295.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=103.67,274.67");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=246.91,198.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=149.14,242.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=249.76,229.39");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=264.88,198.40");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=115.23,81.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=194.31,81.11");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=204.13,87.06");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=146.86,99.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=147.69,144.99");
    }

}

