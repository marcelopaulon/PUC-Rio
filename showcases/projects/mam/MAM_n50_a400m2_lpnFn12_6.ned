
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_6
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
        @display("p=136.27,230.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.20,267.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=79.92,200.19");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=74.05,302.38");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=58.00,262.27");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=150.62,297.55");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=77.11,354.49");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=89.50,142.29");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=78.20,329.72");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=125.88,285.54");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=147.86,177.04");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=94.81,281.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=21.00,222.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,291.51");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=193.43,327.47");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=115.31,314.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=133.69,215.64");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=1.96,214.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.28,234.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=90.76,220.35");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=179.73,208.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=140.41,322.22");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=34.68,167.56");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=59.46,287.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=185.47,344.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=169.10,214.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=160.53,323.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=99.35,161.51");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=98.05,390.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=166.82,228.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=38.75,251.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=104.37,309.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=63.53,199.95");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=87.31,348.35");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=41.79,343.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=183.00,310.84");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=104.08,244.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=73.14,171.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=128.46,254.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=113.13,272.76");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=153.79,218.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=94.41,206.94");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=80.46,180.51");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.44,279.94");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=59.24,236.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=218.03,269.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=153.33,310.59");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=18.83,245.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=30.67,313.08");
    }

}

