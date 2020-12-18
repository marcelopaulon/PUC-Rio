
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-1
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
        @display("p=84.00,260.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=72.53,273.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=6.86,221.77");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=21.57,196.52");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=93.41,169.71");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=123.49,286.21");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=50.78,324.56");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=67.83,233.69");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=11.38,198.05");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=139.49,218.94");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=30.43,238.70");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=113.51,267.18");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=26.62,140.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=48.72,174.99");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=66.29,195.70");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=163.07,210.32");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=68.09,326.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=88.81,215.08");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=23.34,210.61");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=115.10,238.25");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=58.36,263.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=80.37,333.07");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=4.06,186.38");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=95.30,234.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=134.47,84.00");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.94,280.62");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=33.76,283.89");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=14.11,306.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=24.18,170.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=56.13,154.73");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=65.32,306.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=104.98,211.72");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=11.03,240.97");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=33.73,195.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,109.48");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=89.12,280.30");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=47.70,202.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=31.54,216.63");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=2.16,174.15");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,86.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=19.20,280.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.65,195.68");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.02,156.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=37.73,250.94");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=125.80,160.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=49.12,225.98");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=115.61,339.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=9.84,266.36");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=23.62,157.86");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=135.56,106.45");
    }

}

