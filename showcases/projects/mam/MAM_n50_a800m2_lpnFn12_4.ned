
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_4
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
        @display("p=94.99,639.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,611.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,597.81");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=154.82,626.92");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=101.99,647.65");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=90.18,613.37");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=144.67,565.77");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=202.26,588.80");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=143.73,673.96");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=173.69,632.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=118.92,699.31");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=44.74,603.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=186.46,545.44");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=143.74,586.37");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=126.23,713.16");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=9.67,667.08");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=50.99,567.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=139.24,661.44");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=59.10,599.22");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,616.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=13.92,652.75");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=112.14,565.81");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=205.64,573.74");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=80.55,583.80");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=195.33,692.12");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.77,703.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=144.67,630.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=128.71,589.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=183.46,679.63");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=149.40,643.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=1.92,644.27");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=85.85,633.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=119.97,639.10");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=107.32,637.28");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=8.36,739.81");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=90.89,571.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=90.42,556.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=113.67,553.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=237.60,596.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.61,685.31");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=133.19,551.41");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=71.96,601.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=182.61,609.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=202.61,699.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=133.03,701.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=13.41,693.06");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=124.05,558.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=155.01,616.60");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=206.45,602.50");
    }

}

