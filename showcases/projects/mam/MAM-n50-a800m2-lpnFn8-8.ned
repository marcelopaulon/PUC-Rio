
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-8
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
        @display("p=517.00,714.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=424.79,702.73");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=505.70,707.58");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=495.56,792.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=447.44,739.17");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=491.28,781.39");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=415.86,751.34");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=502.35,697.40");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=382.26,772.96");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=451.98,752.51");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=484.20,795.78");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=470.04,693.36");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=566.94,783.66");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=422.42,759.59");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=609.88,722.15");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=483.37,755.91");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=523.61,689.20");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=485.20,741.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=405.27,701.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=570.17,758.76");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=420.76,778.64");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=585.46,708.39");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=463.62,717.08");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=488.92,679.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=432.14,790.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=466.57,649.67");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=485.88,767.90");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=346.13,771.98");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=503.96,773.87");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=443.68,694.18");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=449.08,713.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=527.14,707.79");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=443.66,657.23");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=442.20,795.01");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=404.37,780.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=568.39,677.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=419.74,675.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=424.64,653.84");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=453.43,777.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=448.94,725.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=535.64,782.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=438.15,734.44");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=596.79,772.54");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=352.74,709.78");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=518.92,752.34");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=474.77,785.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=412.03,650.67");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=413.91,788.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=378.09,703.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=499.48,659.49");
    }

}

