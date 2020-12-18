
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_9
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
        @display("p=122.50,926.86");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=137.43,912.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=112.41,880.70");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=104.32,888.87");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=103.03,910.77");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=114.64,975.87");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.56,941.48");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.53,913.95");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=135.47,975.56");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=84.26,998.59");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=68.55,857.39");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=190.71,952.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=134.39,870.45");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=158.15,881.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.20,883.69");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.85,939.18");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=142.50,883.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,864.03");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=92.76,927.88");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=111.01,928.37");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.12,959.20");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=151.07,928.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,942.67");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=146.09,871.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.28,896.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=146.52,942.84");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=189.18,938.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=67.85,919.75");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=151.82,913.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=60.51,841.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=99.83,953.93");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=101.80,866.45");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=35.93,927.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=97.35,978.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=23.81,879.53");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=214.16,933.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=176.69,883.00");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.33,801.70");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=110.11,903.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=82.83,871.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=139.33,966.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=131.78,903.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=119.74,825.63");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.57,907.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=77.48,909.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=26.71,919.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=165.98,924.33");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=89.65,895.78");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=182.18,855.97");
    }

}

