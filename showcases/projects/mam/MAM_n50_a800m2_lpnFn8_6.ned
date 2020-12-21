
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_6
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=130.83,160.72");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=163.00,220.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=205.20,201.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=190.27,179.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=172.86,87.87");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=242.83,121.24");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=135.86,72.27");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=158.81,184.54");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.66,218.70");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=118.34,224.87");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=213.25,225.20");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=178.55,127.87");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=223.89,175.94");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=149.66,15.45");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=70.61,195.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=201.18,135.95");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=155.99,229.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=227.94,110.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=194.28,107.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=205.61,90.20");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=95.33,112.91");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=150.65,92.01");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=106.01,241.92");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=208.25,161.82");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=191.50,83.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=214.95,16.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=288.48,125.03");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,138.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=64.00,171.72");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=104.24,227.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=188.82,216.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=229.77,247.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=168.18,11.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=218.29,92.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=114.25,93.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=144.76,156.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=235.40,218.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=265.57,123.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=132.31,132.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=146.77,80.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=188.92,200.08");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=113.92,60.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.13,160.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=163.81,208.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=174.10,205.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=228.70,145.52");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=189.86,28.16");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=294.51,54.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=83.11,115.05");
    }

}

