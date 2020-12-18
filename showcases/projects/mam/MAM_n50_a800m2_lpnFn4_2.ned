
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_2
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
        @display("p=76.20,741.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=72.56,719.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,672.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.47,654.26");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=41.12,665.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=4.84,675.05");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=27.28,642.42");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=41.92,620.50");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=78.28,547.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=35.12,536.14");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=6.29,537.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=29.94,505.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=96.19,763.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,735.40");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=138.20,739.22");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=22.41,659.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=16.34,634.37");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=119.27,644.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=8.62,686.51");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=6.97,627.53");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=53.55,628.61");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=87.51,528.96");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=70.23,616.83");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=1.46,562.65");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=46.46,505.93");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=38.65,762.12");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=159.74,737.81");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=95.96,663.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=7.06,761.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=29.39,741.73");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.86,695.99");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=17.72,675.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=29.55,582.98");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=60.99,604.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=16.71,583.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=93.43,570.06");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=2.06,502.35");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=47.24,555.59");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=120.22,680.65");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=70.32,757.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=38.40,722.86");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,688.97");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=75.65,633.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=48.45,686.99");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=71.98,664.19");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=65.14,645.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=111.22,632.57");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=143.82,589.69");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=70.75,526.68");
    }

}

