
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-5
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
        @display("p=164.00,297.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=148.78,295.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=179.37,225.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=238.31,185.60");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=243.28,173.82");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=290.13,172.10");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=231.22,150.62");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=235.59,164.11");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=256.94,231.60");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=253.85,264.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=347.58,280.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=307.58,223.11");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=358.21,232.42");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=135.26,324.23");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=79.46,306.61");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=195.88,251.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=215.03,169.17");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=248.81,194.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=349.69,197.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=172.05,109.28");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=205.13,139.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=241.42,224.83");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=242.52,256.76");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=271.67,256.13");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=290.94,229.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=397.43,296.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=159.07,279.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=81.94,345.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=228.24,178.22");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=224.90,212.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=246.87,99.59");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=301.77,104.63");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=289.09,99.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=301.34,148.27");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=251.07,284.74");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=318.06,259.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=364.93,274.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=357.91,160.19");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=350.58,242.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=175.39,258.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=203.94,312.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=135.18,219.26");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=234.12,204.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=237.71,109.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=263.22,147.22");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=296.84,192.13");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=250.44,163.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=282.90,211.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=250.63,340.11");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=355.19,254.34");
    }

}

