
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-1
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
        @display("p=374.00,332.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=381.86,246.11");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=300.89,258.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=350.10,333.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=353.17,282.34");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=347.54,221.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=334.64,271.19");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=320.67,149.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=320.14,169.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=369.47,200.42");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=387.01,187.59");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=316.29,278.09");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=346.20,268.21");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=369.66,367.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=386.08,258.12");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=332.64,281.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=293.83,378.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=341.78,306.75");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=357.68,215.72");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=350.18,256.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=262.98,132.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=340.93,86.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=366.43,237.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=309.38,219.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=299.03,226.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=376.19,267.36");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=329.82,247.11");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=384.52,158.05");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=365.37,184.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=348.27,297.33");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=282.45,313.50");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=365.85,311.62");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=308.73,292.05");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=249.98,199.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=353.47,112.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=386.21,214.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=381.14,178.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=316.68,350.61");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=370.18,281.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=364.86,350.99");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=397.16,210.09");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=244.81,281.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=253.45,313.11");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=302.64,247.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=337.66,233.09");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=324.98,259.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=343.93,134.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=344.64,165.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=396.25,148.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=335.83,204.51");
    }

}

