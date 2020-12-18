
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_8
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
        @display("p=101.70,262.43");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=121.32,277.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,255.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=1.38,305.31");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=79.31,265.15");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.88,287.39");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.25,354.19");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=35.75,271.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=60.10,275.04");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=70.70,289.33");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=17.71,295.22");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=132.33,266.16");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=11.01,256.48");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=4.35,293.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=38.78,359.58");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=119.45,289.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=62.89,310.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=57.50,217.17");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=85.32,309.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=132.28,290.98");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=32.42,253.51");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=105.49,279.09");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=115.78,259.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=18.11,221.40");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=81.01,328.35");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=149.46,330.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=49.43,266.15");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=22.95,268.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=17.64,352.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=83.44,379.20");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=191.72,243.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=157.76,224.72");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=32.93,225.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=12.83,370.17");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=124.68,335.97");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=170.68,217.24");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=130.88,308.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=112.93,315.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=82.92,362.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=67.20,336.72");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=175.62,282.87");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=167.54,326.99");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=1.21,270.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=43.46,375.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=154.84,266.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=142.59,268.25");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=133.75,206.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=1.12,189.49");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=76.26,297.68");
    }

}

