
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_0
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
        @display("p=133.47,605.85");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=199.57,536.42");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=239.86,546.97");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=242.95,576.28");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=229.67,606.27");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=156.88,609.16");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.27,663.02");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=186.50,679.25");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=218.77,555.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=268.12,549.57");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=205.14,564.44");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=231.93,585.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,677.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=77.59,794.79");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=228.44,628.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=255.80,478.13");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=237.87,493.43");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=307.40,554.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=155.79,541.99");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=202.87,648.98");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=156.99,629.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=165.79,590.29");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=225.26,519.15");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=307.79,594.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=172.40,550.91");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=253.96,599.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=78.49,551.24");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=120.73,708.08");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.41,556.14");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=194.34,499.85");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=325.54,520.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=297.80,533.64");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=210.68,609.83");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=231.82,668.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=33.08,724.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=114.08,582.83");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=287.69,538.76");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=266.43,459.31");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=213.00,486.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=275.95,561.30");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.21,567.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=150.33,746.28");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=129.65,649.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=215.86,524.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=175.39,523.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=294.41,520.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=146.38,638.13");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=156.13,596.66");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=105.83,757.06");
    }

}

