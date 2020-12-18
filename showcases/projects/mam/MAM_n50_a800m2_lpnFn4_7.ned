
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_7
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=119.60,787.32");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.79,775.96");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=69.76,792.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=22.09,788.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=2.70,785.14");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=25.82,709.00");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.10,733.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=117.91,726.55");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=108.45,730.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.32,679.16");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=79.92,602.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=30.73,644.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=97.07,721.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=185.70,776.79");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=32.25,734.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,755.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=25.90,760.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=51.90,750.13");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.60,669.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=23.01,722.90");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=202.43,769.62");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=112.19,714.18");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.35,668.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=65.68,576.87");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=14.82,635.51");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=5.73,686.14");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=161.90,700.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=90.29,765.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=116.37,768.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=53.87,717.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=8.35,729.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=45.57,700.82");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=149.21,744.42");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=111.36,661.36");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=42.19,690.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=150.02,647.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=163.22,575.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=0.17,639.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=92.44,659.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=146.85,707.88");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=120.05,752.25");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=68.86,762.34");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=8.27,776.03");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=50.28,794.80");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=26.92,776.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=57.24,765.99");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=127.02,743.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=31.58,696.51");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=95.45,646.26");
    }

}

