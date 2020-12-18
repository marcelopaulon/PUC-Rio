
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-9
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
        @display("p=744.00,695.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=732.06,719.74");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=791.97,732.43");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=747.51,745.34");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=750.81,763.07");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=739.52,759.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=746.76,722.49");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=755.43,689.08");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=676.59,751.20");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=701.17,714.14");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=704.89,772.37");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=759.54,753.88");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=692.79,675.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=717.35,700.75");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=775.70,660.57");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=710.02,724.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=758.84,647.52");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=754.69,790.34");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=727.47,793.42");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=659.21,706.34");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=733.69,772.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=690.45,773.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=759.70,770.54");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=724.22,692.08");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=778.80,771.54");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=708.47,758.87");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=721.36,713.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=737.89,703.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=763.23,726.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=692.79,743.99");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=721.73,744.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=686.13,783.36");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=711.29,782.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=725.28,780.04");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=762.63,664.09");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=770.36,686.93");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=665.45,685.21");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=793.54,720.29");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=682.83,725.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=748.11,775.68");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=769.69,701.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=717.14,731.88");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=669.30,735.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=767.96,743.40");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=768.45,776.43");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=698.05,665.87");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=721.11,756.58");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=670.52,722.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=778.08,796.33");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=692.18,720.97");
    }

}

