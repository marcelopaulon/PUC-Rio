
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn8-8
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
        @display("p=237.00,383.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=278.89,355.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=273.25,344.02");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=324.89,351.46");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=298.37,287.08");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=278.03,273.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=272.44,256.79");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=257.19,324.71");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=293.50,336.09");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=253.14,366.80");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=310.23,383.38");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=309.70,257.96");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=278.12,231.08");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=269.82,291.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=153.46,355.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=247.59,309.97");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=285.16,249.55");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=329.72,276.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=325.54,333.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=310.29,303.38");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=332.06,302.34");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=161.59,341.40");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=285.30,375.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=182.90,379.86");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=361.64,260.08");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=242.74,326.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=215.28,308.79");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=261.01,250.88");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=226.03,398.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=212.82,361.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=299.65,374.62");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=309.03,325.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=278.24,299.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=217.47,223.14");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=324.63,263.71");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=207.42,341.77");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=357.80,351.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=308.80,341.37");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=228.14,332.61");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=323.44,292.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=233.03,247.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=264.08,188.70");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=323.54,370.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=357.43,394.14");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=268.89,354.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=379.53,311.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=333.65,202.01");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=251.85,339.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=173.62,248.43");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=212.52,332.01");
    }

}

