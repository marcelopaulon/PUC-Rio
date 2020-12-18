
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn12-4
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
        @display("p=679.00,270.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=727.51,292.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=692.22,306.50");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=734.24,242.94");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=736.54,253.71");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=676.85,251.76");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=757.35,202.35");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=680.78,311.42");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=750.25,238.26");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=688.66,326.51");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=604.91,311.04");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=644.42,319.75");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=768.01,264.78");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=690.78,270.47");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=791.53,177.50");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=615.42,279.94");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=774.15,255.29");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=668.68,258.22");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=746.09,215.76");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=767.66,167.00");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=696.67,294.41");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=709.09,289.78");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=679.94,292.74");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=792.51,277.39");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=744.53,269.39");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=689.10,255.86");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=670.53,229.37");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=638.90,246.89");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=654.34,208.28");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=712.29,204.54");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=775.43,283.77");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=706.50,334.15");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=640.48,229.10");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=682.33,233.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=714.67,250.04");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=720.22,259.83");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=743.73,226.27");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=692.83,348.02");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=714.76,316.94");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=725.34,319.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=708.91,345.44");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=725.07,302.34");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=742.70,290.68");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=777.08,220.98");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=717.54,283.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=658.90,290.03");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=665.07,321.80");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=621.78,290.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=731.39,184.08");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=752.73,280.89");
    }

}

