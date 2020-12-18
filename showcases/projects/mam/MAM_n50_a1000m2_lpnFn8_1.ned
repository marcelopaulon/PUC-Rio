
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_1
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
        @display("p=103.22,993.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=194.83,900.23");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=175.26,873.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=252.92,842.64");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=258.55,875.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=170.61,917.83");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=159.18,963.64");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=195.91,965.23");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=175.72,984.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=97.06,851.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=162.23,818.95");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=322.49,904.94");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=222.39,952.79");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=52.53,921.90");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=114.35,973.03");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=213.22,922.89");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=226.17,812.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=172.29,790.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=241.53,790.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=188.46,912.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=96.77,881.08");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=59.36,913.45");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=289.69,882.75");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=176.23,858.52");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=207.22,839.64");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=210.77,870.15");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=169.40,969.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=145.41,911.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=57.91,976.57");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=176.15,938.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,836.65");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=221.38,855.84");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=254.92,899.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=195.75,921.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=118.08,911.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,961.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=187.52,997.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=190.02,872.98");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,788.85");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=273.92,959.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=177.08,907.35");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=73.71,911.53");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=117.70,997.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.63,905.88");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=190.04,885.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=217.10,887.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=306.93,896.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=210.99,993.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=38.06,878.61");
    }

}

