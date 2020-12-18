
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-1
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
        @display("p=897.00,134.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=861.08,102.57");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=848.09,118.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=840.76,104.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=878.25,30.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=893.71,20.47");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=867.79,6.26");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=880.96,110.99");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=875.89,101.66");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=825.74,156.96");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=867.64,182.43");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=886.62,61.85");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=821.35,37.26");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=811.84,72.55");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=933.00,163.34");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=931.09,141.79");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=857.52,127.33");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=849.05,96.95");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=906.40,70.54");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=899.78,55.24");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=904.44,14.96");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=881.47,171.37");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=807.92,141.07");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=768.91,93.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=777.62,28.14");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=911.99,39.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=988.70,46.21");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=941.96,1.80");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=879.33,209.41");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=851.43,106.94");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=798.21,203.41");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=783.30,41.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=899.28,40.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=884.35,16.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=826.84,86.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=905.70,214.18");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=783.84,76.40");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=860.07,141.52");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=841.75,147.50");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=870.56,75.97");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=958.22,74.03");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=855.27,8.96");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=945.21,140.31");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=891.45,153.06");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=903.78,171.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=813.87,86.90");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=924.98,116.24");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=976.80,0.26");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=819.73,1.64");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=955.71,132.63");
    }

}

