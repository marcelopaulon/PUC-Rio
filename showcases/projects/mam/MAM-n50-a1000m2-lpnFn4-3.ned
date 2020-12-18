
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-3
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
        @display("p=57.00,996.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=63.70,946.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=108.22,895.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.59,878.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=163.84,914.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=150.66,889.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=196.92,843.11");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=213.34,861.72");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=219.38,935.08");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=301.87,891.05");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=354.18,865.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=372.51,837.41");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=455.65,816.49");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=18.12,976.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=19.79,884.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=96.01,877.00");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=132.80,812.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=201.20,928.69");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=236.59,850.85");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=191.95,767.02");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=208.86,879.21");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=210.79,971.76");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=343.68,858.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=365.35,952.51");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=341.63,798.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=432.25,786.55");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=49.75,981.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=110.41,943.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=109.83,803.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=190.99,878.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=88.31,863.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=139.28,901.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=144.80,784.85");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=189.67,953.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=190.34,938.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=230.56,912.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=427.80,819.52");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=382.28,823.08");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=461.17,848.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.90,967.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=54.83,934.93");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=74.32,847.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=153.27,871.20");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=164.46,899.19");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=130.31,880.00");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=244.22,882.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=186.15,922.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=241.55,945.28");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=339.08,967.63");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=394.20,953.21");
    }

}

