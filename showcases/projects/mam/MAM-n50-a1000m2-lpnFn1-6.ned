
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-6
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
        @display("p=720.00,907.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=704.06,959.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=684.68,974.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=751.54,983.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=755.82,994.61");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=820.51,953.98");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=749.93,901.55");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=768.80,835.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=758.67,840.11");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=804.90,822.41");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=750.60,862.11");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=688.48,891.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=779.59,892.60");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=845.38,932.07");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=812.31,983.23");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=826.24,965.18");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=785.25,994.47");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=719.10,968.56");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=735.67,946.85");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=730.74,880.51");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=738.11,933.77");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=720.65,929.41");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=701.56,907.80");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=709.79,876.54");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=662.32,810.97");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=617.94,835.70");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=615.97,883.69");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=673.47,927.32");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=643.81,948.20");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=685.75,987.46");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=674.46,894.73");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=606.37,840.96");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=699.64,840.79");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=738.50,865.52");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=759.12,886.69");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=762.58,793.97");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=794.44,816.56");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=820.34,902.32");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=752.40,918.28");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=717.37,836.94");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=661.62,775.52");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=672.61,843.71");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=649.34,824.82");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=626.47,814.29");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=644.92,865.75");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=562.60,825.74");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=554.76,840.01");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=527.68,914.07");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=553.42,971.64");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=604.01,996.73");
    }

}

