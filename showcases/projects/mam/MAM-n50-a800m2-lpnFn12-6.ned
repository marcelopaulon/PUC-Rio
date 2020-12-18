
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-6
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
        @display("p=443.00,492.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=488.30,565.95");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=499.88,572.63");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=470.27,574.49");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=494.27,543.36");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=409.84,469.62");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=529.09,477.33");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=500.11,622.11");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=486.11,590.08");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=469.46,613.44");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=498.99,507.44");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=527.24,566.35");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=520.45,551.67");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=479.93,611.36");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=562.00,611.32");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=427.95,527.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=481.96,631.66");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=459.03,552.83");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=458.43,575.43");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=515.51,624.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=466.88,514.17");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=456.29,526.35");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=510.61,562.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=502.11,606.75");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=528.25,583.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=435.60,444.20");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=549.33,503.41");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=441.72,632.83");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=438.94,554.09");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=549.58,517.23");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=461.50,440.58");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=512.01,504.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=428.97,596.93");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=562.04,555.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=410.95,556.26");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=438.30,395.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=429.27,559.14");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=524.64,519.49");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=497.29,556.42");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=566.30,540.26");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=467.83,495.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=441.95,526.63");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=577.81,546.17");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=476.62,596.08");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=572.68,593.48");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=432.65,488.39");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=543.49,486.84");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=533.80,651.58");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=446.02,591.75");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=483.07,545.21");
    }

}

