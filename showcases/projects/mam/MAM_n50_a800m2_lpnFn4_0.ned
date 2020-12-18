
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_0
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
        @display("p=109.58,688.71");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=112.67,709.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=149.83,699.91");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=137.69,781.89");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=206.49,728.58");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=165.82,781.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=81.62,785.50");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=71.20,764.73");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=156.64,725.19");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=194.41,663.98");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=162.08,627.66");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=219.19,608.12");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=142.58,674.17");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=167.29,750.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=110.77,719.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=79.10,687.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=176.48,744.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=235.55,667.59");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=214.51,771.26");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=54.04,697.73");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=111.65,776.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=189.37,686.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=229.35,685.28");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.15,580.25");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=148.59,612.53");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=92.54,688.75");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=83.55,702.78");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=86.95,667.50");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=167.52,681.05");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=176.09,768.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=245.18,678.24");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=178.42,786.60");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=48.29,784.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=1.10,740.69");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=87.43,747.00");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=202.88,739.09");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.34,575.40");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=243.41,576.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=80.50,714.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=74.19,648.97");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=76.76,730.00");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=124.14,700.07");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=102.06,769.93");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=248.12,717.52");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=223.56,733.94");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=93.90,794.66");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=35.36,781.37");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=224.69,722.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=207.10,678.67");
    }

}

