
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-7
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
        @display("p=786.00,175.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=748.46,125.80");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=786.81,101.41");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=759.64,151.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=746.48,186.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=784.07,217.99");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=781.44,230.96");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=774.64,102.10");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=687.34,175.07");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=773.43,2.80");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=730.20,132.35");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=716.40,176.38");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=794.65,163.04");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=769.87,238.25");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=780.27,128.24");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=753.23,204.42");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=792.89,88.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=756.28,134.71");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=720.75,201.35");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=704.82,162.90");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=774.42,255.50");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=782.41,193.51");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=765.12,82.86");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=768.37,121.79");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=752.39,160.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=777.69,115.77");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=688.99,215.23");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=790.72,295.06");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=765.11,174.15");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=754.12,85.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=790.65,71.13");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=718.55,89.09");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=696.98,119.29");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=735.74,273.91");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=739.12,220.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=736.83,210.17");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=688.12,155.55");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=738.50,149.75");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=784.17,137.85");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=740.64,257.47");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=787.16,267.99");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=711.65,196.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=783.32,80.03");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=761.34,73.48");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=777.34,18.97");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=770.89,222.60");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=746.43,113.00");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=799.70,261.40");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=721.46,218.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=732.07,173.89");
    }

}

