
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_8
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
        @display("p=195.63,702.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=242.08,658.82");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=240.78,681.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=304.38,705.52");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=325.79,776.46");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=248.76,714.60");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=117.76,695.69");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=204.91,690.18");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=240.67,693.68");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=312.64,657.42");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=260.74,773.35");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=337.85,780.66");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=268.01,665.32");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=76.52,789.98");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=288.32,713.89");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=192.72,668.79");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=215.44,647.58");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=320.85,761.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=363.62,725.46");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=174.34,768.19");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=133.80,672.29");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=167.26,742.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=255.90,636.06");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=273.44,638.10");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=229.56,639.46");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=243.18,786.62");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=203.71,735.19");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=83.67,665.39");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=275.56,721.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=187.57,628.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=175.82,628.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=298.64,639.67");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=409.92,765.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=286.53,656.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=166.89,706.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=113.82,706.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=321.90,627.99");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=228.18,610.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=311.17,636.57");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=307.34,719.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=214.38,747.52");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=100.86,736.90");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=200.42,642.96");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=274.33,699.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=253.89,683.91");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=371.84,677.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=417.80,797.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=271.25,710.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=44.30,693.94");
    }

}

