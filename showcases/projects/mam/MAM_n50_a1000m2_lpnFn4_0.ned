
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_0
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
        @display("p=49.26,135.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=39.60,175.32");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=1.12,209.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=44.21,209.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=45.02,255.29");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=42.12,346.27");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=55.37,310.12");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=102.83,315.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=130.34,337.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=92.82,415.52");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=116.10,509.21");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=116.09,413.30");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=35.25,97.12");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=61.81,149.62");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=119.06,156.25");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=30.33,166.62");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=54.39,234.84");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=40.29,243.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=70.06,261.62");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=30.57,221.15");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=154.86,324.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=144.06,299.64");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=184.29,451.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=91.57,487.20");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=123.97,423.68");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=142.76,110.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=116.81,207.71");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=4.43,176.69");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=63.18,226.67");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=25.60,195.40");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=97.13,199.41");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=21.81,278.90");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=128.88,271.59");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=177.30,371.59");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=108.85,391.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=89.01,386.91");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=154.15,473.82");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=142.25,393.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=171.75,67.20");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=24.24,129.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=104.75,170.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=28.49,182.51");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=45.46,221.80");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=75.36,230.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=65.87,305.06");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=19.47,364.44");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=90.05,217.22");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=136.11,350.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=77.98,405.66");
    }

}

