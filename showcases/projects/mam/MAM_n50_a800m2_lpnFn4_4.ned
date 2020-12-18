
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_4
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
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=119.70,15.45");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=171.54,7.29");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=117.05,63.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=123.86,74.31");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=80.61,144.93");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=72.30,155.29");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=142.19,133.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=201.64,171.85");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=280.55,143.26");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=276.53,226.41");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=306.97,221.27");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=298.97,203.11");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=109.09,79.31");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=156.08,104.00");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=186.66,17.46");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=43.74,110.64");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=134.51,59.27");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=156.17,153.63");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=71.61,202.21");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=143.63,155.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=223.79,189.59");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=218.08,87.73");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=249.47,250.43");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=310.93,254.62");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=304.69,179.47");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.84,95.69");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=67.39,42.95");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.00,44.99");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=146.41,85.62");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.18,80.74");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=104.11,188.20");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=93.81,191.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=66.70,101.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=170.16,203.97");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=230.99,199.66");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=229.81,240.41");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=356.14,161.50");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=277.78,156.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=108.75,128.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=89.28,34.59");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=201.39,18.01");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=59.89,121.40");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=134.47,145.64");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=107.92,210.65");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=2.89,205.57");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=147.45,205.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=235.92,94.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=260.27,154.96");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=273.75,245.84");
    }

}

