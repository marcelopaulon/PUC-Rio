
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-5
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
        @display("p=9.00,165.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=60.98,130.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=139.48,105.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=145.31,90.68");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=223.46,98.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=247.03,4.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=311.64,63.09");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=14.51,194.98");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.79,148.70");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=99.63,139.28");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=207.77,67.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=276.40,126.08");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=238.69,56.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=372.57,110.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=21.46,115.03");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=44.25,188.75");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=160.97,103.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=154.71,63.60");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=263.26,147.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=314.46,20.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=273.85,145.54");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=46.94,92.84");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=90.72,123.37");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=222.48,143.46");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=112.11,79.19");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=222.26,76.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=256.92,12.19");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=312.15,128.57");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=29.18,226.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=45.56,61.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,59.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=174.20,72.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=215.45,119.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=269.05,31.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=276.86,61.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=16.64,151.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=106.19,184.34");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=166.86,149.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=135.88,178.44");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=206.82,181.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=204.61,25.40");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=273.34,79.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=22.53,179.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=67.05,111.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=158.04,114.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=173.08,10.53");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=243.82,108.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.24,72.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=298.70,35.34");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=28.80,192.62");
    }

}

