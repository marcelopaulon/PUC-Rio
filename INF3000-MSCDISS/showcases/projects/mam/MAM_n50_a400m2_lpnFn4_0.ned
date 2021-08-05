
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn4_0
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=39.42,151.24");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=19.55,199.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=59.43,249.61");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=106.00,245.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=94.13,339.79");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=80.04,320.72");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=14.86,343.56");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=55.08,394.48");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=45.66,379.24");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=52.98,347.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=124.28,290.23");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=27.06,286.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.90,125.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=28.65,117.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=91.40,267.73");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=97.41,307.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=145.75,267.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=53.57,357.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.73,222.92");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=20.73,331.56");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=31.20,376.14");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=78.54,398.46");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=76.09,338.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=188.18,246.61");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=54.76,216.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=112.45,164.54");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=104.16,119.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=81.52,274.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=72.48,164.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.43,186.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=74.83,371.84");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=3.11,260.41");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=45.17,340.19");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=89.86,316.86");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=56.29,371.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=44.20,255.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=118.25,267.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=1.40,282.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=57.56,47.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,151.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=67.11,174.47");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=55.58,268.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=177.73,276.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=22.14,364.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=37.27,293.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=9.69,332.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=75.90,356.70");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=41.87,303.90");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=51.57,321.58");
    }

}

