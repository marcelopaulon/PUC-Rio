
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_7
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=74.79,670.26");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=76.83,683.48");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=113.70,606.05");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=79.21,609.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=51.70,619.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=67.47,606.86");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=106.39,708.60");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=118.05,733.43");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=102.89,653.37");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=182.57,617.73");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,529.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=14.99,703.31");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=118.22,625.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=56.08,788.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=65.17,674.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=115.79,689.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=38.29,631.17");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=90.93,604.64");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=24.33,581.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=166.84,609.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=65.31,709.21");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=34.55,717.30");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=71.86,640.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.73,693.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=89.99,591.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=114.03,594.60");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=22.90,621.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=106.89,771.25");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.55,630.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=144.03,702.71");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=167.04,582.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=140.09,600.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,615.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=101.54,573.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=120.64,743.23");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,659.79");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=90.06,708.87");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=23.10,642.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=122.27,665.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=17.87,573.23");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=10.75,588.61");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=133.77,635.72");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=103.84,666.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=88.89,764.77");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=128.50,625.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=62.09,593.51");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=8.09,685.10");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=115.01,531.81");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=52.02,692.24");
    }

}

