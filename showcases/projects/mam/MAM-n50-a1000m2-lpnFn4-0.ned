
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-0
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
        @display("p=114.00,875.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=35.33,880.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=13.71,918.16");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=31.63,946.93");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=100.52,905.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=192.91,881.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=268.10,896.37");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=296.70,943.46");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=305.82,888.98");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=298.80,873.28");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=299.50,861.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=225.70,871.18");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=162.66,913.32");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=100.99,803.50");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=22.32,790.18");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=24.99,902.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=53.34,936.02");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,855.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=216.35,865.62");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=366.93,881.57");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=219.57,940.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=317.45,938.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=287.45,888.94");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=288.87,863.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=186.66,869.75");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,914.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=77.49,782.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=66.05,851.60");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=27.28,927.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=46.59,904.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=66.63,912.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=194.45,931.74");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=217.54,830.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=287.07,919.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=338.28,870.40");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=270.82,868.05");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=374.08,923.96");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=260.75,936.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=185.94,892.39");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,858.51");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=39.67,919.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=42.67,822.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=24.32,856.96");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.83,888.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=198.17,872.13");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=346.83,930.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=205.60,976.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=239.83,929.30");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=207.90,914.46");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=248.87,853.01");
    }

}

