
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_5
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=94.39,926.69");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=78.80,926.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=69.85,832.77");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=24.70,845.23");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=16.03,828.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=2.29,829.50");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.82,784.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=21.64,859.80");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.22,807.18");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=144.35,746.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=209.52,773.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=200.69,787.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.41,952.52");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.33,945.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=14.36,910.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=44.59,861.13");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=38.56,838.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=41.37,875.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=1.35,841.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=31.19,774.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=99.40,814.55");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=94.78,856.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=189.56,795.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=291.57,779.43");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=190.33,820.40");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=35.71,923.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=193.22,914.38");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.45,918.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=73.66,821.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=10.57,798.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=54.89,850.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.09,862.99");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=31.47,721.48");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=45.40,824.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.57,833.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=200.79,723.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=261.98,804.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=221.46,839.19");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=97.98,890.16");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=70.25,845.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=163.62,903.22");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=147.59,893.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=63.44,761.71");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=6.59,881.60");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,901.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=2.78,762.57");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=13.60,852.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.88,784.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=176.99,730.99");
    }

}

