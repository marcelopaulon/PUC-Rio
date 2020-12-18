
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-3
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
        @display("p=259.00,797.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=247.58,775.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=229.62,746.68");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=215.41,770.85");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=199.11,762.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=247.59,843.40");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=212.93,782.30");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=235.79,790.06");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=261.94,812.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=251.25,830.15");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=299.68,869.01");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=386.01,915.50");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=367.26,914.75");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=284.07,720.11");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=246.32,695.53");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=162.91,812.11");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=206.01,734.97");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=185.24,779.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=235.46,880.27");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=253.50,705.15");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=263.78,870.74");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=353.71,840.67");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=265.60,899.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=279.72,780.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=460.40,923.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=369.43,882.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=218.52,738.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=323.89,816.66");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=155.56,773.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=270.70,792.09");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=132.58,754.05");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=217.54,935.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=184.68,874.21");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=174.41,714.20");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=179.70,813.93");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=233.24,766.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=282.04,885.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=321.33,902.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=329.96,895.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=260.53,747.36");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=323.39,782.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=274.96,669.81");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=262.75,853.81");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=209.40,757.50");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=220.16,822.30");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=270.38,835.40");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=225.85,812.75");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=290.02,873.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=272.16,804.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=280.51,814.91");
    }

}

