
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_6
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
        @display("p=133.80,963.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=173.23,960.71");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=212.84,974.82");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=270.98,926.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=340.59,909.30");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=361.96,924.83");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=138.98,927.41");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=116.01,986.59");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=231.99,886.24");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=204.10,881.47");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=242.33,963.15");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=363.74,937.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=345.03,962.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=145.81,917.83");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=141.70,893.02");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=226.38,944.87");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=206.98,965.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=257.92,935.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=354.17,857.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=390.83,841.80");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=125.68,951.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=71.59,972.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=187.49,974.49");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,928.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=312.02,848.61");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=365.18,864.99");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=317.25,912.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=29.33,895.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=139.63,977.46");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=168.28,973.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=225.79,991.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=307.46,924.48");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=360.60,823.07");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=302.95,865.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=164.56,856.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=95.47,996.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=166.62,940.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=260.13,908.58");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=271.17,946.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=343.13,930.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=356.18,893.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=84.44,935.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=125.20,921.77");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=237.00,940.16");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=179.93,945.77");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=259.48,920.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=379.98,905.00");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=425.95,895.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=50.78,965.10");
    }

}

