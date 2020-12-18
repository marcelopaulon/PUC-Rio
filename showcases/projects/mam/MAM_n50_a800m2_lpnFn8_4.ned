
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn8_4
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=87.92,697.09");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=8.89,730.01");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=27.19,730.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=38.81,776.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=5.48,763.33");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=48.75,757.61");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=90.52,685.83");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=148.68,671.45");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=16.69,788.66");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=27.16,654.73");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=8.77,776.23");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=14.21,753.89");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=128.60,745.42");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=74.49,700.71");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=55.58,783.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=65.89,713.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=41.37,792.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=68.03,762.91");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=28.33,741.87");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=67.57,774.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=101.58,709.89");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=128.04,713.97");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=3.60,720.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=57.47,684.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=31.13,765.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=54.49,741.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=45.22,748.04");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=173.83,672.60");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=89.95,713.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=97.27,742.56");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=30.70,798.76");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=78.34,726.35");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=33.18,667.61");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=78.24,772.32");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=104.50,735.49");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=147.19,617.88");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=63.28,673.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=3.19,741.96");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=47.47,769.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=70.98,751.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=42.37,681.71");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=13.00,695.74");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=135.97,681.84");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=39.83,723.31");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=116.42,725.25");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=28.85,688.86");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=8.56,681.05");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=32.93,712.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=62.77,637.17");
    }

}

