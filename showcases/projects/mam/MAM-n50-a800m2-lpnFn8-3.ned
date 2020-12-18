
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-3
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
        @display("p=334.00,718.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=289.59,709.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=255.86,782.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=279.73,786.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=327.61,731.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=414.51,700.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=426.79,709.54");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=285.91,633.27");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=251.88,679.79");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=236.27,773.86");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=224.36,778.37");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=322.60,721.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=355.25,766.50");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=406.84,636.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=398.61,762.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=303.21,733.24");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=246.93,739.62");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=362.75,758.39");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=320.29,682.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=390.91,673.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=419.82,748.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=387.35,799.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=274.18,701.61");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=242.56,789.91");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=231.00,735.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=373.94,728.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=460.90,710.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=440.69,781.20");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=331.22,766.61");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=282.19,677.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=251.58,771.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=194.78,768.32");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=334.03,694.26");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=471.16,705.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=410.95,719.67");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=339.65,744.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=260.47,713.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=229.13,794.77");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=319.98,784.07");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=382.07,773.66");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=425.03,663.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=440.34,696.49");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=308.59,720.55");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=302.21,706.42");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=262.06,729.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=221.00,743.75");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=323.08,665.26");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=439.40,714.44");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=512.32,675.72");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=399.71,730.32");
    }

}

