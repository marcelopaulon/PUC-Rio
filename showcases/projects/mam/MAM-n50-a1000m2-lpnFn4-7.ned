
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-7
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
        @display("p=47.00,702.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,667.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=7.31,678.81");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=5.44,706.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=26.47,688.73");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=84.00,629.64");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=113.10,623.74");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=113.63,596.91");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=97.04,640.51");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=10.27,626.15");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=44.35,658.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=84.46,670.42");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=55.43,675.67");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=65.33,648.28");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=14.69,692.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=39.03,628.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=80.76,762.83");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=22.14,653.99");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=115.92,536.29");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=96.62,575.29");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=76.92,644.95");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=135.29,697.92");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=31.75,641.63");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=18.97,746.57");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=70.71,722.04");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=8.20,735.00");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.29,796.68");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=86.06,744.99");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=95.89,690.52");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=54.74,647.32");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=56.09,748.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=81.47,659.04");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=68.48,594.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=181.91,529.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=5.08,666.68");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=98.07,610.86");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=22.77,619.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=123.12,733.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=12.32,656.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=70.64,744.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=92.03,679.75");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=52.00,634.53");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=14.79,635.59");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=88.43,755.60");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=86.18,578.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=103.94,537.86");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=105.58,668.42");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=80.74,562.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=33.48,557.67");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=48.11,668.70");
    }

}

