
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_8
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=79.03,224.60");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=14.85,165.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=22.20,149.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=17.65,126.91");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=16.14,202.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=28.05,269.23");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.90,307.13");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=122.06,249.93");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=72.73,206.20");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=3.45,125.52");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=31.04,114.66");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=82.76,190.29");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=3.97,189.94");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=46.29,306.63");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=96.15,173.90");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=60.21,178.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,111.05");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=11.87,102.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=40.03,162.05");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=48.48,230.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=51.38,339.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=133.88,170.44");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=90.85,105.33");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=6.07,239.66");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=70.49,95.15");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=50.22,147.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.25,247.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=153.73,313.90");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=29.53,217.02");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=52.64,250.09");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,189.82");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=49.20,207.46");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=51.55,190.41");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=10.73,286.06");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=127.37,300.98");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=155.82,176.73");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=70.47,146.88");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=75.69,133.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=27.23,51.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=32.32,235.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=44.56,268.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=44.17,356.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.51,155.65");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=5.18,171.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=57.64,240.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=59.41,130.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,241.92");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=65.94,323.00");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=59.95,357.21");
    }

}

