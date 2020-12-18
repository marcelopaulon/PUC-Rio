
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn4-3
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
        @display("p=40.00,379.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=20.18,386.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=35.84,365.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=0.26,372.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=71.74,324.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=32.64,279.60");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=80.88,192.08");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=80.83,163.59");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=90.10,205.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,159.76");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=76.84,238.74");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=115.85,286.80");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=0.22,308.71");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=14.15,327.12");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=62.48,367.10");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=115.15,391.30");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.89,392.23");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=118.18,256.45");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=31.67,301.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=32.67,231.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=97.08,126.87");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,165.66");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=46.96,149.14");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=44.38,208.10");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=78.76,254.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=19.70,309.33");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,346.25");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=21.09,374.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=94.55,303.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=1.68,385.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=115.35,367.44");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=4.76,249.98");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=70.44,187.83");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=82.06,140.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=167.35,228.70");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=15.56,95.15");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=126.17,233.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=139.88,278.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=55.36,356.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=73.43,364.39");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=18.38,353.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,328.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=0.78,338.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=103.34,288.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=52.13,196.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=131.73,218.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,142.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=178.73,249.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=77.18,208.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=146.11,197.44");
    }

}

