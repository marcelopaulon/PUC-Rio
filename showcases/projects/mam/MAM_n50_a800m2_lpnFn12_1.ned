
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_1
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=150.06,692.82");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=146.17,649.21");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=210.73,653.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=270.54,730.93");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=182.08,751.66");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=188.88,690.34");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=132.61,720.39");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=216.04,639.75");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=308.63,720.88");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=158.71,622.14");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=165.96,715.31");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=166.09,736.99");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=225.35,698.91");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=298.59,765.92");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=142.76,627.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=95.00,722.42");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=129.24,655.37");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=215.97,574.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=236.30,637.65");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=8.86,703.82");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=225.73,712.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=157.62,702.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=160.72,665.16");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=247.53,778.15");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=198.33,699.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.95,744.67");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=74.65,661.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=276.44,604.37");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=263.50,672.15");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=170.72,674.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=116.28,679.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=165.23,652.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=246.52,733.86");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=250.68,661.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=41.99,680.13");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=179.22,701.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=63.33,634.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=241.24,702.11");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=188.79,675.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=82.94,611.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=59.65,732.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=135.17,608.29");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=247.04,595.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=260.55,704.14");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=105.16,721.14");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=143.11,783.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=226.14,676.84");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=215.50,696.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=226.99,777.73");
    }

}

