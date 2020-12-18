
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_4
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=57.65,862.07");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=104.99,791.76");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=162.74,869.17");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=169.77,850.20");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=181.77,825.97");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=234.23,892.26");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=89.34,972.01");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=35.92,852.98");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=71.09,798.18");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=114.40,853.06");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.86,836.05");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=223.89,914.43");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=225.88,880.13");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.73,856.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.01,897.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=79.77,768.32");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=215.95,889.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=179.67,876.05");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=199.81,895.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=247.08,911.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=77.30,872.22");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=54.81,793.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=105.91,741.93");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=94.71,840.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=204.93,821.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=168.75,819.20");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=301.46,848.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.13,842.00");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=28.37,840.17");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=102.37,821.06");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=191.93,824.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=125.30,788.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=153.44,888.57");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=203.68,950.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=136.02,911.62");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=51.93,848.66");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=36.13,807.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=204.48,934.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=109.82,863.63");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=140.13,820.39");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=189.66,981.51");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=117.01,882.38");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,923.83");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=157.62,752.04");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=97.50,859.16");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=192.54,789.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=180.09,811.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=305.85,893.28");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=162.55,953.69");
    }

}

