
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-4
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
        @display("p=202.00,125.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=124.95,186.79");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=56.90,243.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=64.46,224.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=66.86,171.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=61.20,161.95");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.81,166.67");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=77.00,163.99");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=36.69,181.82");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=43.03,209.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=72.76,207.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=27.32,162.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=42.74,244.41");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=213.18,196.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=129.32,225.58");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=71.90,189.56");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.08,215.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.94,229.94");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=133.91,212.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.83,130.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=14.59,170.99");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=49.57,149.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=108.54,212.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=94.90,174.75");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=31.68,192.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=58.56,266.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=179.01,96.18");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=86.10,233.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=23.43,283.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=117.45,278.82");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,123.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=67.80,117.22");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=39.15,148.30");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=80.58,220.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=8.42,259.38");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=48.26,196.02");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=56.38,254.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=101.57,163.73");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=37.59,226.22");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=204.43,135.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=161.78,234.98");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=98.87,316.72");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=69.84,286.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=63.77,133.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.89,143.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=20.47,91.95");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=154.25,146.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=8.78,145.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=120.82,165.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=152.30,223.33");
    }

}

