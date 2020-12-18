
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_1
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
        @display("p=105.44,736.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=110.33,773.36");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=90.03,778.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=78.15,775.68");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=59.43,792.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=102.60,724.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=167.37,693.96");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=193.38,715.87");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=188.92,694.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=163.97,707.45");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=237.36,734.96");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=234.92,724.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=92.17,731.39");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=22.27,686.28");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=124.46,773.81");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=73.90,794.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=45.88,779.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=8.42,781.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=44.39,746.09");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=208.53,695.72");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=279.35,749.17");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=157.89,618.79");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=182.31,787.70");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=226.33,679.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=251.79,678.10");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=189.84,733.34");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=151.63,781.90");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=192.41,777.07");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=30.92,713.34");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=120.50,736.18");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=0.34,769.13");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=7.82,745.77");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=223.06,730.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=231.98,628.73");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=184.16,643.67");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=162.78,642.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=267.99,667.93");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=255.09,729.06");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=95.69,605.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=89.07,647.07");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=64.32,769.58");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=89.51,764.16");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=32.72,751.62");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=78.55,760.96");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=142.11,726.18");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=139.95,694.60");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=183.83,705.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=175.62,654.61");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=133.21,684.20");
    }

}

