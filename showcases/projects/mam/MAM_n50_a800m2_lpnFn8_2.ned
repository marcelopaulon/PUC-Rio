
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_2
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,764.93");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=5.79,727.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=37.23,645.96");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=12.03,659.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=66.81,725.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=68.56,784.41");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,674.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=147.00,741.41");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=29.33,728.23");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=9.39,599.94");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=47.75,746.78");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=87.67,747.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=66.07,770.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=188.07,685.55");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=145.13,775.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.76,698.96");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=25.16,613.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.37,671.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=44.86,727.89");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=114.01,752.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=80.83,717.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=50.77,710.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=50.39,784.63");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,564.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=78.14,635.14");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=41.70,774.00");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=85.96,775.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=176.33,648.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=38.23,713.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=18.35,726.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,590.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=55.60,642.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=40.02,690.08");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=72.40,799.14");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=93.21,671.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=6.57,767.85");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=25.80,791.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=94.20,615.92");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=13.75,686.19");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=135.58,750.06");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=29.16,782.00");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=90.52,710.52");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=105.68,772.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=61.55,751.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.50,654.88");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=33.72,632.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=33.15,655.66");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=56.88,775.56");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=197.98,703.74");
    }

}

