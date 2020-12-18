
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_8
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
        @display("p=63.78,729.53");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=130.94,741.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=95.40,755.63");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=141.35,785.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=198.65,719.54");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=233.68,764.39");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=232.71,753.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=163.31,783.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=173.50,692.72");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=150.52,660.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=216.18,642.16");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=207.19,729.46");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=73.39,606.54");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=100.50,744.99");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=95.03,723.83");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=52.06,740.27");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=131.85,790.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=188.40,743.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=280.08,690.30");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=217.44,729.71");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.96,716.25");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=122.26,654.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=227.87,661.09");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=273.26,607.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=306.73,728.79");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=131.47,662.85");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=90.39,696.62");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.23,767.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=104.13,761.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=188.85,780.00");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=179.22,754.49");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=252.97,758.12");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=189.17,768.31");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=124.24,798.34");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=164.80,646.72");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=211.65,584.71");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=210.02,558.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=209.12,770.93");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=74.91,658.21");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=113.72,688.92");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=132.87,645.09");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=68.48,699.95");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=206.53,782.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=199.17,736.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=266.07,732.44");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=194.11,789.72");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=150.70,744.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=159.57,680.45");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=168.90,719.75");
    }

}

