
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn12_1
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=115.19,881.05");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=142.02,888.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=100.64,873.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=110.62,812.30");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=52.84,876.57");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=33.14,873.57");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=79.32,937.52");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=85.60,895.47");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=163.67,793.46");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.41,909.36");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=94.03,789.47");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=131.49,883.43");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=48.05,827.42");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=70.79,872.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=175.81,911.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=131.67,840.53");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.91,870.98");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=70.78,914.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=199.84,819.49");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=65.37,929.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=68.99,968.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=222.80,876.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=122.96,891.61");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=77.53,821.09");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=156.97,870.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=174.90,926.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=114.15,907.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=126.90,820.67");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=121.02,744.28");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=113.04,956.11");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=105.76,847.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=65.95,952.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.86,868.18");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=95.50,856.76");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=131.33,924.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=123.16,855.58");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=194.93,871.92");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=144.69,911.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=157.26,809.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=56.03,964.37");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=178.30,943.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=205.22,870.15");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=64.27,785.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=100.54,806.62");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,898.81");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=110.65,897.20");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=135.80,900.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=156.77,925.30");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=56.30,864.73");
    }

}

