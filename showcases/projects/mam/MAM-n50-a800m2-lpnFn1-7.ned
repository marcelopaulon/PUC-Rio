
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-7
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
        @display("p=771.00,109.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=784.08,202.25");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=727.28,214.51");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=711.40,182.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=760.35,266.01");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=747.99,359.25");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=697.81,380.89");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=758.89,343.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=739.71,332.89");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=689.81,358.31");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=717.96,384.67");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=755.55,210.24");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=720.63,227.73");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=691.58,135.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=602.84,171.14");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=576.04,135.15");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=649.35,108.04");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=655.13,123.59");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=658.59,174.73");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=642.78,194.75");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=656.11,144.92");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=611.70,105.72");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=557.67,52.70");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=553.38,20.50");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=526.58,8.98");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=504.87,23.01");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=436.46,39.71");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=452.24,49.41");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=420.85,67.75");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=354.81,97.22");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=294.10,62.85");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=304.31,29.20");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=376.70,47.40");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=439.63,30.03");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=397.53,49.60");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=440.04,61.82");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=477.05,42.34");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=467.21,70.88");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=431.01,117.34");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=500.89,140.32");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=513.82,119.69");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=528.71,119.70");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=540.97,120.48");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=549.94,94.65");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=568.41,91.59");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=571.42,18.60");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=570.57,61.28");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=623.88,130.29");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=623.70,229.69");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=598.86,186.26");
    }

}

