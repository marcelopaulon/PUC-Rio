
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-7
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
        @display("p=637.00,313.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=630.01,283.52");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=611.71,270.54");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=598.61,314.92");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=606.84,287.61");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=612.42,306.02");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=646.85,245.43");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=542.79,314.89");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=584.49,323.57");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=612.83,329.36");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=730.90,342.90");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=639.71,340.42");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=518.66,280.88");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=563.37,337.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=616.09,376.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=659.03,267.59");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=662.05,308.90");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=600.29,267.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=563.81,311.73");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=542.46,304.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=590.34,335.58");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=671.88,328.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=643.29,268.72");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=523.76,314.25");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=598.77,249.84");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=592.44,284.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=650.90,342.10");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=612.14,362.73");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=624.09,297.72");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=604.56,211.83");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=569.49,260.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=675.04,257.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=682.68,285.87");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=535.07,240.50");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=527.77,337.21");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=645.25,305.21");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=585.97,298.22");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=672.65,340.41");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=619.51,398.97");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=556.90,260.62");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=657.97,372.53");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=715.74,316.30");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=623.00,266.56");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=504.63,298.28");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=573.04,297.92");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=611.72,224.93");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=567.46,275.54");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=660.43,228.60");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=635.86,296.62");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=578.92,226.46");
    }

}

