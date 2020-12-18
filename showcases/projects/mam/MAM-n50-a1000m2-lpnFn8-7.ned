
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn8-7
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
        @display("p=791.00,676.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=786.77,699.06");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=809.48,644.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=795.18,641.20");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=785.57,654.75");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=807.71,713.20");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=757.72,675.68");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=873.47,625.85");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=768.22,628.91");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=834.19,623.58");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=805.66,592.58");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=742.64,607.84");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=803.74,659.77");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=714.86,734.68");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=790.48,632.28");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=740.77,753.37");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=758.00,713.67");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=788.58,622.01");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=726.88,604.00");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=845.06,748.78");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=742.18,720.97");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=717.15,708.43");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=794.77,706.57");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=822.54,582.62");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=822.59,661.18");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=836.98,708.54");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=822.09,749.31");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=763.83,703.87");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=852.22,732.58");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=803.26,687.56");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=743.00,620.19");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=726.79,642.12");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=753.11,617.22");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=845.03,679.53");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=744.38,701.18");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=838.47,608.82");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=745.65,690.69");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=799.08,547.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=860.88,643.47");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=847.77,642.48");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=852.19,667.73");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=678.90,653.56");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=709.95,672.71");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=752.21,643.07");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=887.88,650.98");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=701.86,633.36");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=847.59,578.87");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=843.64,724.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=780.81,629.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=810.59,673.98");
    }

}

