
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-4
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
        @display("p=489.00,792.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=507.34,813.83");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=473.63,787.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=430.85,807.57");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=380.71,813.15");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=396.03,886.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=469.02,824.60");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=481.73,876.85");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=439.35,894.62");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=412.76,815.79");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=460.31,782.46");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=449.74,776.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=387.55,791.07");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=436.37,783.50");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=493.47,754.17");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=465.95,693.16");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=504.72,670.61");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=440.95,663.95");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=496.53,633.81");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=454.59,593.44");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=463.79,600.57");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=454.75,571.96");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=477.83,572.51");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=511.67,638.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=513.98,614.95");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=478.27,585.86");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=504.13,594.84");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=503.04,564.10");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=453.13,519.47");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=432.71,529.62");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=438.58,582.62");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=359.64,613.98");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=333.36,618.46");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=408.46,576.08");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=376.84,538.07");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=411.29,524.20");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=465.53,504.78");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=477.07,531.30");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=472.55,544.22");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=418.70,543.01");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=454.16,583.14");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=424.04,582.03");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=441.64,569.82");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=470.57,629.64");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=461.06,622.58");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=463.48,660.40");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=507.09,657.52");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=452.82,637.88");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=470.80,674.27");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=383.87,682.73");
    }

}

