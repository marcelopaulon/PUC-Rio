
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-4
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
        @display("p=716.00,377.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=744.03,388.15");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=678.66,322.67");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=644.23,320.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=691.23,291.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=631.00,352.82");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=575.49,409.83");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=744.23,459.59");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=749.98,427.38");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=684.50,314.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=670.26,234.76");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=653.61,328.80");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=632.96,341.84");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=613.89,465.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=727.85,439.34");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=782.36,366.93");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=645.75,258.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=618.67,314.10");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=646.76,203.90");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=614.08,344.20");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=615.83,406.83");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=701.03,363.64");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=756.02,408.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=638.94,292.84");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=693.43,351.12");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=614.34,262.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=644.85,356.70");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=639.54,465.25");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=675.82,406.06");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=796.09,348.66");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=587.51,310.51");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=643.69,301.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=750.96,327.71");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=601.31,441.84");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=515.36,403.31");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=658.90,312.34");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=755.87,383.38");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=638.86,400.59");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=649.82,390.46");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=731.64,303.31");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=584.47,374.32");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=541.73,471.80");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=712.80,394.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=680.43,430.89");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=688.33,258.54");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=650.79,275.55");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=727.97,325.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=621.39,390.85");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=625.64,332.29");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=704.20,319.12");
    }

}

