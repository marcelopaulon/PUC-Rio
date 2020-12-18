
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-1
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
        @display("p=410.00,237.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=481.90,300.89");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=557.63,303.44");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=625.14,364.24");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=670.99,308.85");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=415.04,193.88");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=516.67,278.32");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=548.51,322.45");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=706.05,412.33");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=705.91,355.55");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=437.92,199.03");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=504.16,285.48");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=569.99,301.23");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=670.17,379.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=681.21,365.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=483.17,263.40");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=533.23,342.35");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=586.44,222.33");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=652.72,385.58");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=696.79,287.03");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=438.02,229.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=461.56,215.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=573.13,393.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=610.49,354.94");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=648.87,292.48");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=402.42,267.72");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=408.02,252.13");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=585.86,339.37");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=641.26,440.82");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=615.23,255.12");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=374.27,219.14");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=494.45,279.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=597.82,221.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=602.49,337.36");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=688.81,233.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=342.10,302.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=538.00,261.51");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=565.79,316.95");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=669.82,323.71");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=720.60,275.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=426.86,242.86");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=526.49,236.54");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=568.88,210.82");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=637.47,361.27");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=627.87,388.59");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=438.34,317.07");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=385.34,305.46");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=583.61,278.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=680.37,418.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=628.51,300.59");
    }

}

