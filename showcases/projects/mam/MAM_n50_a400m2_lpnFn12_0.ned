
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_0
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
        @display("p=82.52,308.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=87.93,332.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=150.80,331.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=143.85,340.43");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=184.38,271.66");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=93.13,247.45");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=119.65,296.15");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=235.83,359.50");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=189.71,312.76");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=160.71,299.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=62.18,321.61");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=104.99,278.26");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=195.79,321.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=143.33,369.67");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,282.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=178.82,305.33");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=74.80,352.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=112.38,318.97");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=114.64,364.79");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=101.79,310.98");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=70.07,281.00");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=85.13,344.33");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=147.14,310.07");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=81.90,384.73");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=55.02,351.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=25.14,347.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=126.73,343.53");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=164.57,349.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=182.45,286.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=119.80,244.26");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=92.12,319.56");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=126.10,314.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=133.52,271.94");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=196.31,301.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=124.27,377.96");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=40.95,240.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=155.96,357.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=207.54,285.48");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=222.81,304.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=155.06,278.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=43.29,298.89");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=66.88,333.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=136.41,380.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=230.19,386.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=145.57,258.26");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=25.64,381.56");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=84.47,372.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=230.17,287.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=111.51,350.33");
    }

}

