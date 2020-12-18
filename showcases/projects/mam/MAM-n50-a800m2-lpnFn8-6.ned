
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-6
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
        @display("p=43.00,705.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=30.34,755.62");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=14.47,746.56");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=15.37,775.22");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=61.87,700.36");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,731.43");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=34.77,729.19");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=105.92,744.20");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=23.24,680.52");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=44.35,797.10");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=30.15,770.38");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=130.03,688.87");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=48.35,747.56");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=38.00,717.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=123.30,698.17");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=61.57,784.38");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=45.06,786.65");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=6.42,728.29");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=119.61,677.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=76.27,643.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=102.26,731.13");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=84.41,742.79");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=72.14,749.55");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=12.04,704.65");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=21.92,717.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,773.96");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=137.13,712.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=103.79,718.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=121.56,723.13");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=72.07,782.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=1.18,714.02");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=29.03,789.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=54.80,717.59");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=146.81,725.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=3.16,780.91");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=58.73,688.73");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=43.06,763.75");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=17.53,732.38");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=72.90,766.34");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=1.24,637.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=102.07,754.45");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=93.38,698.97");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=77.92,678.23");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=17.45,759.33");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=62.16,661.76");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=15.23,799.72");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=81.43,608.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=61.41,675.79");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=60.49,752.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=41.94,619.25");
    }

}

