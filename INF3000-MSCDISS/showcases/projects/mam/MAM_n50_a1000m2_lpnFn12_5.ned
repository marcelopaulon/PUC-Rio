
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_5
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=18.57,91.94");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=15.04,123.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=43.57,87.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=7.11,174.43");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=16.68,134.56");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=100.25,125.46");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=23.13,108.30");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=95.10,145.21");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,81.68");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=168.15,144.77");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,58.20");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=35.66,138.38");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=48.50,149.04");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=27.02,173.36");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=45.37,98.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=28.15,71.43");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=56.31,72.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=36.37,111.02");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=15.41,217.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=133.54,99.11");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=4.10,122.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=27.46,129.69");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.20,105.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=82.24,219.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=81.55,87.56");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=80.77,26.08");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=72.36,197.48");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=135.14,124.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,156.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=105.35,82.35");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=60.80,19.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=32.31,120.70");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,57.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=49.52,227.84");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=133.46,56.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=19.61,33.81");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=59.86,110.55");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=117.15,24.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=60.38,212.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=126.93,90.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=75.72,168.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=98.14,71.48");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=12.40,105.57");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=30.51,209.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=53.46,90.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=79.39,70.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=2.34,94.71");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=38.46,65.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=47.11,257.72");
    }

}

