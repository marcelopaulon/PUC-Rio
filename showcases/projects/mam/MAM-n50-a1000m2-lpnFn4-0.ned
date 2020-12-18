
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-0
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
        @display("p=729.00,689.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=726.85,602.47");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=713.80,654.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=692.76,657.54");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=686.35,692.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=650.52,761.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=664.93,764.51");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=584.67,733.75");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=516.27,695.91");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=548.49,760.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=525.93,850.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=525.86,938.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=553.54,939.90");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=807.42,650.86");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=676.44,599.41");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=708.78,663.27");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=714.59,638.05");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=698.49,676.79");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=644.05,723.25");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=665.75,805.41");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=506.45,788.07");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=604.45,654.13");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=628.59,739.32");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=583.69,858.88");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=448.62,943.74");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=526.12,895.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=712.68,678.42");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=755.36,672.45");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=751.55,596.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=690.52,731.24");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=679.03,739.97");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=712.99,729.30");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=633.97,686.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=532.22,745.37");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=510.12,630.55");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=602.00,687.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=521.51,834.20");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=532.75,954.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=606.57,907.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=738.45,698.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=690.81,606.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=669.47,719.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=656.54,590.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=647.03,711.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=630.18,754.32");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=571.46,743.01");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=565.57,727.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=459.85,658.83");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=599.03,835.41");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=481.01,880.79");
    }

}

