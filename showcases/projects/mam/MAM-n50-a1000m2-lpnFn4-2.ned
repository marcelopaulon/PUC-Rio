
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-2
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
        @display("p=639.00,724.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=651.05,751.48");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=694.74,771.92");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=667.08,807.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=667.64,840.79");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=744.81,802.74");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=736.35,748.56");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=750.13,753.15");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=749.81,779.99");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=770.07,727.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=767.19,670.78");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=785.38,683.32");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=873.19,647.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=634.20,775.39");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=553.97,754.97");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=782.18,810.95");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=631.01,818.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=651.18,840.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=728.23,816.69");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=776.85,786.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=702.44,739.91");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=650.40,784.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=712.31,755.77");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=731.69,614.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=824.08,666.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=855.66,639.37");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=639.31,753.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=636.37,790.13");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=747.19,722.64");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=643.30,803.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=657.06,879.31");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=829.34,769.78");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=810.30,808.79");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=694.45,808.64");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=759.99,805.27");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=818.64,773.07");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=752.59,621.70");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=780.86,642.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=833.01,643.13");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=730.35,735.42");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=642.67,820.94");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=609.08,758.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=712.84,836.92");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=658.71,829.53");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=761.28,831.90");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=715.31,793.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=737.73,787.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=758.75,787.17");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=717.71,713.73");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=698.22,634.54");
    }

}

