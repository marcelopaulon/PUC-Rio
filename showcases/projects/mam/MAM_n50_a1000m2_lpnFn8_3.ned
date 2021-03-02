
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_3
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
        @display("p=189.24,63.12");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=228.76,2.39");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=251.39,37.69");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=197.51,78.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=115.06,30.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=97.40,18.51");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=141.33,57.56");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=163.14,53.60");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=179.15,25.62");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=207.51,13.10");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=267.06,40.06");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=91.98,115.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.50,42.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,133.54");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=197.15,45.61");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=199.12,23.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=221.79,98.37");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=232.76,89.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=68.83,74.95");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=107.67,50.67");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=127.48,86.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=265.37,72.39");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=246.89,6.73");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=222.30,84.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=216.14,40.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=193.36,34.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=176.07,58.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=179.20,43.86");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=242.41,69.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=213.43,1.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=316.92,22.59");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=266.63,131.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=124.67,20.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=38.41,8.07");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=95.63,141.28");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=222.42,129.07");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=226.24,21.70");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=306.29,46.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=180.52,106.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=180.66,77.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=142.37,29.45");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=83.17,161.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=255.69,12.56");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=173.90,14.66");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=267.76,91.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=131.80,51.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=104.29,36.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=154.24,59.39");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=17.27,120.05");
    }

}

