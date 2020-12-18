
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-1
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
        @display("p=248.00,227.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=220.41,186.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=230.69,209.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=246.42,293.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=216.46,259.02");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=279.83,295.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=270.43,343.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=275.71,331.39");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=317.99,285.27");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=309.87,300.91");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=323.32,300.95");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=335.56,288.76");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=277.38,319.53");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=272.34,305.86");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=216.98,292.51");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=221.33,283.26");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=226.86,227.15");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=214.81,219.83");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.68,196.64");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,207.15");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=242.65,181.17");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=296.60,186.32");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=289.72,226.17");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=340.04,247.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=282.39,265.21");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=338.74,205.23");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=383.85,192.42");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=377.00,207.79");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=304.75,239.31");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=347.13,170.06");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=315.70,148.19");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=296.24,117.75");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=295.89,148.32");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=360.02,112.61");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=334.53,119.39");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=286.39,80.68");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=274.23,79.08");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=242.08,162.15");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=181.57,89.74");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=253.28,103.33");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=186.51,39.33");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=208.76,8.31");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=244.14,13.01");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=236.02,58.71");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=286.64,25.67");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=203.46,40.27");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=231.07,49.82");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,32.71");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=97.45,10.18");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=90.38,19.72");
    }

}

