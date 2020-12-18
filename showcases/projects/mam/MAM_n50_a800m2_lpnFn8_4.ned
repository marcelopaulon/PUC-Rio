
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_4
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
        @display("p=112.50,782.42");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=57.32,774.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=39.00,782.99");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=57.35,749.59");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=25.40,794.18");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=3.84,739.90");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=132.85,685.90");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=123.08,766.97");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=76.98,726.20");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=51.08,791.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=28.73,762.43");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=1.51,792.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=2.30,777.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=180.37,662.23");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=82.35,793.17");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=47.29,770.25");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=80.99,709.46");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=75.22,677.57");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=56.22,719.91");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=25.85,665.31");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=32.36,635.77");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=207.66,790.87");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=127.62,736.52");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=25.57,777.02");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=83.36,662.94");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=56.68,734.87");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=32.73,750.36");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=47.01,619.98");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=145.83,787.48");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=141.66,757.48");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=28.39,730.67");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=134.70,777.01");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=101.68,796.38");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=37.89,676.51");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=66.26,720.56");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=175.77,753.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=34.22,771.11");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=93.02,781.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=39.63,709.76");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=111.87,799.41");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=86.13,689.24");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=66.21,694.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,781.43");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=112.15,749.46");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=78.99,748.74");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=138.16,701.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=11.49,709.93");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=16.96,745.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=99.66,663.77");
    }

}

