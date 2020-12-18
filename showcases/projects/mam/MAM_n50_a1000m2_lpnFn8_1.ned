
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_1
{
    parameters:
        @display("bgb=1000,1000;bgg=100,1,grey95;bgu=m");
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
        @display("p=131.06,82.44");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=150.20,105.90");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=159.69,24.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=174.17,77.32");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=171.28,25.37");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=210.98,107.24");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=105.28,115.72");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=126.45,91.47");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=113.16,157.25");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=230.39,37.63");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=203.96,55.87");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=119.86,63.73");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=124.26,138.76");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=45.69,112.27");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=106.20,35.20");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=172.06,138.59");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=163.38,119.96");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=201.02,69.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=240.20,54.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=185.62,48.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=83.53,148.27");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=207.51,19.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=181.67,100.38");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=163.09,37.93");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=196.49,107.71");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=138.12,27.29");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=268.44,118.51");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=64.62,15.97");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=109.07,93.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=187.68,146.72");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=125.45,2.06");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=259.27,45.09");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=86.55,17.12");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=214.41,186.29");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=59.55,170.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=108.81,77.36");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=138.74,95.28");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=80.32,69.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=169.53,50.86");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=232.82,2.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.62,88.84");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=42.40,47.64");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=187.33,71.11");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=201.45,162.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=212.95,33.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=233.36,109.43");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=196.75,15.38");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=246.46,172.50");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=17.54,102.98");
    }

}

