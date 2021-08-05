
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_2
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
            @display("p=100.0,-300.0");
        }
        
    host_fn_rly_1: <default("SensorNode")> like INetworkNode {
        @display("p=100.00,100.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=152.42,141.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=79.36,144.27");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=114.55,196.79");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=109.24,214.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=98.67,252.66");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=137.93,273.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=196.49,286.17");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=136.06,307.30");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=166.33,228.11");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=187.37,169.89");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=262.75,138.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=312.47,166.15");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=111.61,108.56");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,122.97");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=78.72,166.60");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=60.59,188.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=41.88,268.97");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=164.75,282.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=187.79,262.45");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=175.43,379.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=160.70,324.56");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=127.55,153.38");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=197.24,166.69");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=271.52,110.69");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=323.23,250.07");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=119.23,101.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=164.20,92.35");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=107.64,148.79");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=21.40,167.43");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,197.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.91,261.51");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=235.93,268.61");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=205.25,274.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=105.30,243.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=215.58,217.03");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=157.44,211.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=247.18,165.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=386.19,145.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=40.30,30.46");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=163.55,181.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=85.39,174.38");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=111.57,128.66");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=45.87,224.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=83.96,258.95");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=79.76,352.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=152.89,314.39");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=227.00,331.09");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=225.95,295.35");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=160.29,132.62");
    }

}

