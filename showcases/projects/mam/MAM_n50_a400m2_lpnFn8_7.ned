
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn8_7
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
        @display("p=60.92,316.84");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=108.60,314.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=95.75,309.16");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=83.85,249.78");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=75.14,233.50");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=58.34,262.31");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=171.95,299.78");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=129.34,294.66");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=174.71,244.91");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=144.07,254.14");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=31.17,294.49");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=2.76,198.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=44.13,276.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=101.15,374.19");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=71.45,313.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=23.61,269.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=61.70,358.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=32.80,167.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=100.89,283.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=65.91,285.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=192.45,276.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.37,297.98");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=200.74,341.11");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=127.17,345.77");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=87.16,290.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=32.47,221.56");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=17.77,251.47");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.26,262.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=85.68,392.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=182.41,256.65");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=89.09,336.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=133.62,217.54");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=91.21,234.58");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=10.34,224.65");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=73.21,223.55");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=10.49,303.81");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=145.80,314.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=55.04,251.55");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=106.29,227.25");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=94.64,246.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=127.92,249.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=38.54,337.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=150.51,360.81");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=135.69,280.93");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=83.69,303.22");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=107.98,209.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=82.89,183.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=117.38,222.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=182.47,323.48");
    }

}

