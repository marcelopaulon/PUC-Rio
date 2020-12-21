
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_9
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
        @display("p=103.05,43.13");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=157.93,12.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=220.07,65.71");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=212.96,116.86");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=205.82,134.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=274.00,63.78");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=26.27,135.32");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=40.36,99.21");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=183.26,80.74");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=210.88,71.11");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=216.20,90.60");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,149.35");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=306.85,119.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.73,101.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=107.17,33.85");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=125.86,78.72");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=219.75,37.12");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=202.42,34.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=213.82,153.66");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=303.38,8.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=90.23,104.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=95.62,28.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=152.23,52.50");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=203.43,13.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=226.54,20.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=184.33,113.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=248.03,72.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=92.61,63.96");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=157.74,41.13");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=152.00,89.01");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=229.58,107.02");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=207.06,181.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=187.81,160.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=296.67,22.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=97.43,87.99");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=122.51,121.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=138.02,58.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=217.93,11.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=188.16,122.59");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=250.39,104.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=276.88,75.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,197.24");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=70.61,76.52");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=170.90,15.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=242.12,33.63");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=255.40,64.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=156.85,163.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=352.64,25.89");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=44.31,81.36");
    }

}

