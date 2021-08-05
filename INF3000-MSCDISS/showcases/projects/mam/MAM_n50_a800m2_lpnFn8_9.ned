
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_9
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=97.14,60.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=92.63,11.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=102.34,83.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=73.96,152.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=134.53,86.70");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=209.30,34.80");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=30.11,111.22");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=76.96,76.42");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=10.53,59.98");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=50.42,52.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=73.20,242.19");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=138.45,73.79");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=275.15,63.40");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,137.07");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=49.80,109.28");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=6.84,32.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=93.03,40.88");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=56.99,180.66");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.32,56.75");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=236.85,31.59");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=29.01,147.09");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=115.59,20.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=77.19,57.32");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=187.05,128.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=68.16,170.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=202.56,122.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=268.13,99.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=72.72,110.53");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=62.76,150.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=133.11,20.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=170.47,88.74");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=79.55,191.75");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=99.27,139.39");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=176.68,38.01");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=65.49,119.80");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=84.84,148.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=35.08,1.97");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=158.66,60.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=13.68,204.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=203.98,43.48");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=219.98,30.11");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=49.10,89.86");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=115.65,65.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=108.36,38.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=157.73,17.33");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=151.28,157.78");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=136.35,62.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=161.39,81.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=66.22,90.03");
    }

}

