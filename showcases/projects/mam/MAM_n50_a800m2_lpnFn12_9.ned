
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_9
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
        @display("p=48.36,681.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=22.79,622.22");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=36.76,704.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=113.27,753.35");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=89.61,673.30");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=59.41,661.80");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=29.88,612.25");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=60.59,714.61");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=53.87,743.29");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=95.29,735.48");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=105.29,604.13");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.64,673.00");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=64.73,613.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=125.56,729.95");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=75.34,687.70");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=37.53,628.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=36.06,554.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=75.57,703.30");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=137.10,742.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=69.13,636.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=35.00,689.00");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=21.50,586.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=78.19,669.66");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=157.24,774.41");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=157.90,666.58");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=113.10,700.93");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=80.18,551.21");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=3.27,766.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=207.81,744.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=118.99,668.24");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.52,650.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=6.09,575.08");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=13.43,707.65");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=165.15,780.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=82.44,602.90");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=73.01,654.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=47.35,611.44");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=15.01,658.56");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=48.09,691.94");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=84.34,613.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=0.24,707.20");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=2.25,556.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=118.21,720.68");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=100.58,795.44");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=114.44,655.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=38.88,656.13");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,624.27");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,791.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=196.64,761.66");
    }

}

