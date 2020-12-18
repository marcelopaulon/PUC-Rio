
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-1
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
        @display("p=807.00,615.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=790.40,632.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=882.23,631.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=881.96,614.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=981.15,603.05");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=933.29,631.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=934.91,662.83");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=837.44,637.20");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=779.83,657.41");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=794.66,603.76");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=908.95,685.19");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=978.22,553.13");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=934.36,616.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=918.75,749.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=873.88,663.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=782.23,567.57");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=884.31,697.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=895.86,555.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=993.24,569.99");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=865.42,609.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=869.82,631.26");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=887.59,643.85");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=803.66,668.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=826.11,581.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=933.95,583.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=961.66,674.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=884.51,716.58");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=958.22,568.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=752.95,623.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=799.57,581.22");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=844.38,624.08");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=838.66,672.14");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=962.03,619.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=927.39,654.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=905.56,651.79");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=872.49,645.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=804.19,639.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=911.78,663.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=850.64,597.74");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=953.26,558.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=893.33,669.01");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=980.39,644.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=822.71,672.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=749.39,633.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=885.90,599.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=847.24,693.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=994.92,547.62");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=905.17,579.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=934.95,567.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=801.74,533.86");
    }

}

