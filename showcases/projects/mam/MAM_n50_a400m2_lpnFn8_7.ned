
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_7
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
        @display("p=57.91,341.35");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=60.11,321.46");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=131.96,383.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=150.10,358.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=142.80,392.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=141.17,324.67");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=115.41,312.21");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=4.23,384.99");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=116.59,337.78");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,354.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.96,336.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=163.12,386.27");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,347.09");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=64.23,294.82");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=58.12,378.35");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.22,397.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=192.87,386.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=134.91,332.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=158.37,333.50");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=168.21,271.47");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=123.14,282.87");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=76.00,314.15");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=46.19,310.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=72.22,371.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=180.98,349.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=228.36,376.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=97.97,374.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=88.11,283.66");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=10.64,329.37");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=20.91,344.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.66,338.95");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.43,311.66");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=125.10,354.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=184.89,235.47");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=99.37,316.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=45.25,248.18");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=44.53,327.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=163.60,374.23");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=223.73,336.93");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=190.74,306.50");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,268.37");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,247.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=29.81,388.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=15.97,315.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=61.73,393.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=192.58,364.61");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=91.38,397.76");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=153.82,323.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=88.82,298.34");
    }

}

