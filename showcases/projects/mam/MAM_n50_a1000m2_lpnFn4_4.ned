
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_4
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=115.98,806.17");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=184.57,815.94");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=193.50,773.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=193.72,809.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=215.28,806.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=252.24,801.87");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=278.55,737.86");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=267.24,778.04");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=249.09,682.45");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=172.73,701.39");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=153.59,670.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=215.05,661.06");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=57.70,934.09");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=104.37,752.77");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=185.08,797.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=194.92,732.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,791.35");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=212.03,787.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=234.37,802.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=260.64,667.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=228.07,778.36");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=227.66,657.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=205.55,649.48");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=124.92,738.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=177.98,652.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=54.45,881.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=106.90,714.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=197.17,846.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,705.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=126.35,780.21");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=165.71,856.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=154.57,815.28");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=256.28,779.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=347.48,768.98");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=205.12,728.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=183.29,766.67");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=155.37,688.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=268.67,600.89");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=105.77,911.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=89.81,812.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=253.24,829.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=116.42,781.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=210.74,850.74");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=196.43,885.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=182.29,731.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=328.76,787.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=289.08,684.91");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=319.90,655.76");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=142.95,750.68");
    }

}

