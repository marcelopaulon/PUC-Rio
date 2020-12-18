
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_9
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
        @display("p=123.64,610.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=91.60,608.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=40.38,633.62");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=108.95,624.02");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=19.13,721.94");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=180.18,682.63");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=105.43,599.29");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=15.64,538.30");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=183.93,646.09");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=116.54,649.88");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=75.72,622.87");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,518.57");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=77.50,704.10");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=71.01,658.22");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,758.54");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=196.03,577.01");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=75.40,669.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=7.81,671.82");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.26,566.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=140.67,750.75");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=171.01,634.18");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=83.59,549.84");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=63.72,609.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=147.97,695.63");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=86.58,738.98");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=87.64,569.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=113.77,587.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=66.32,708.59");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=205.78,639.08");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=139.33,791.79");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=133.86,602.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=136.15,576.95");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=24.34,632.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=113.05,684.46");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=143.55,646.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=141.15,592.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=97.45,651.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=0.51,614.79");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=194.72,622.14");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=172.70,698.55");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=121.67,624.21");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=129.40,633.50");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=45.29,616.32");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=81.34,715.20");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=182.14,672.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=154.30,600.50");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=17.57,554.47");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=29.47,648.04");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=108.77,638.54");
    }

}

