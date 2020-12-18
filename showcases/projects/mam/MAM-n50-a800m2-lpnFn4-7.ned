
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-7
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
        @display("p=14.00,311.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=34.34,301.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=55.98,353.87");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=42.32,343.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=14.85,300.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.19,329.35");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=19.47,360.63");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=57.82,291.40");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=68.44,239.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=69.63,197.52");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=73.56,227.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=34.39,248.14");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=75.72,301.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=10.95,325.79");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=69.94,275.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=60.44,364.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=32.16,365.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=101.51,298.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=77.99,372.07");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=24.78,443.63");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=55.45,280.38");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=158.75,219.16");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=106.66,207.19");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=90.00,140.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=21.12,243.29");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=73.27,350.97");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=51.87,314.47");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=62.95,335.69");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=38.17,353.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=23.68,375.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=81.66,283.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=102.80,235.80");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=31.17,334.06");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=43.21,296.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=35.02,153.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.10,192.33");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=30.07,218.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=7.90,258.42");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=26.87,272.52");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=76.51,314.77");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=82.90,263.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=70.92,380.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=40.26,326.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=14.42,345.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=121.30,414.55");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=12.94,419.28");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,347.38");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=56.42,246.13");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=62.69,214.95");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=11.82,170.76");
    }

}

