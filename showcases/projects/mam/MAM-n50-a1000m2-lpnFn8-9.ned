
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-9
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
        @display("p=427.00,1000.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=425.14,974.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=466.43,903.91");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=458.99,995.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=448.29,990.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=429.71,959.21");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=393.17,933.79");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=366.90,935.84");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=412.28,988.97");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=443.73,975.00");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=418.17,933.49");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=512.42,961.58");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=513.86,997.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=385.96,871.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=415.04,999.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=507.76,929.76");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=506.60,893.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=433.21,935.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=476.79,970.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=402.02,901.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=408.71,911.48");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=365.79,949.46");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=431.67,949.22");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=495.97,917.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=398.17,923.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=416.92,964.92");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=485.04,954.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=369.11,959.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=394.93,992.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=437.60,909.59");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=463.96,849.86");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=468.48,988.97");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=511.71,915.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=416.68,882.25");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=312.98,958.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=434.95,993.31");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=387.67,910.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=408.64,922.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=493.74,944.68");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=381.23,941.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=448.18,962.61");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=428.83,920.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=491.04,927.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=395.26,959.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=486.44,899.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=527.33,973.04");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=475.71,959.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=420.00,909.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=346.88,937.77");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=368.28,919.91");
    }

}

