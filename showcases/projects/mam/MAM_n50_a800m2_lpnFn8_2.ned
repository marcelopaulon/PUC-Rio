
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_2
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=81.95,699.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=125.93,681.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=218.28,702.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=237.73,736.56");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=184.47,695.77");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=182.67,751.57");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=168.97,644.27");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=91.70,720.96");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=165.09,695.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,642.34");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=193.61,773.91");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=163.01,722.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=104.55,723.21");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=122.62,695.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=14.09,632.18");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=119.52,731.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=268.48,673.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=254.10,741.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=156.05,601.81");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=192.78,753.05");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=74.94,748.65");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=55.02,725.56");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=150.74,687.41");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=210.32,738.26");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=235.26,762.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=239.50,718.46");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=210.38,756.16");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=43.66,657.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=54.27,626.47");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=145.31,623.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=206.78,640.94");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=268.29,660.43");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=213.27,790.45");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=139.18,766.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=85.88,666.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=77.85,708.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=198.46,681.62");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=206.92,714.05");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=239.17,776.10");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=182.99,734.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=227.73,793.82");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=45.74,743.36");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=119.79,781.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=120.46,720.74");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=252.43,616.59");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=227.63,709.91");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=128.83,747.34");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=180.23,790.85");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=154.87,639.44");
    }

}

