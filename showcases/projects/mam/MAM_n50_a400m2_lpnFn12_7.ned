
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_7
{
    parameters:
        @display("bgb=400,400;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=132.23,174.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=223.53,182.70");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=222.78,113.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=217.23,70.87");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=55.27,174.94");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=37.31,177.44");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=185.17,146.20");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=180.02,187.67");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=272.05,86.09");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=116.79,138.89");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=134.68,158.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=240.82,136.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=236.94,114.93");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=266.76,69.31");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.49,5.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.00,132.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=195.29,195.56");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=191.71,103.89");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=168.20,24.42");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=28.77,155.24");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=75.82,207.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=211.85,178.83");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=206.28,89.82");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=168.63,113.44");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=60.65,45.74");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=160.79,150.51");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=208.14,154.79");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=192.27,70.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=270.44,54.86");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=181.80,54.69");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=132.62,199.31");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=202.98,219.88");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=268.51,108.99");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=306.38,93.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=80.03,136.45");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.67,118.59");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=179.62,242.21");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=239.06,69.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=228.55,97.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=136.27,112.43");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=161.76,189.19");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=196.38,167.93");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=216.07,124.16");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,54.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=121.82,74.56");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=148.00,205.17");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=226.16,163.90");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=293.20,121.16");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=133.09,69.02");
    }

}

