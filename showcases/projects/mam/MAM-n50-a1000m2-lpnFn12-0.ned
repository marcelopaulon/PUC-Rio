
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-0
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
        @display("p=609.00,51.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=538.97,41.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=567.34,5.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=579.97,75.76");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=563.15,76.82");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=641.46,25.58");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=464.07,86.17");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=566.37,44.24");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=631.32,90.78");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=539.03,74.16");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=549.09,81.72");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=500.45,45.82");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=558.17,38.12");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=642.25,46.69");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=588.77,90.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=534.62,55.82");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=558.27,125.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=576.83,11.47");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=634.14,72.33");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=469.22,69.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=615.27,117.98");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=576.44,31.30");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=622.48,10.34");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=524.21,76.34");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=564.02,167.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=623.22,144.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=501.67,27.07");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=552.88,2.29");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=568.41,66.57");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=603.89,2.51");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=597.49,60.17");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=528.73,44.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=513.12,42.36");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=629.97,57.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=475.68,116.64");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=607.08,32.78");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=514.66,57.63");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=550.96,46.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=648.31,76.03");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=529.18,131.64");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=547.88,35.60");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=516.20,128.50");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=627.28,36.65");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=504.59,15.02");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=569.85,98.91");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=628.48,124.52");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=462.34,30.77");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=663.78,17.32");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=515.19,149.03");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=616.47,42.73");
    }

}

