
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-2
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
        @display("p=156.00,630.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=87.21,692.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=48.30,741.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=43.89,684.28");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=23.01,693.13");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=69.00,707.36");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=45.89,763.35");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=28.95,758.73");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=64.31,692.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=4.03,656.62");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=80.42,664.07");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=90.80,665.26");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=157.43,708.74");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=181.55,561.65");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=106.89,709.73");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=5.75,743.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=54.30,709.07");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=84.61,767.76");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=160.13,739.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=35.14,772.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=34.06,715.44");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=72.21,682.33");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=87.52,680.82");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=61.61,647.29");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=118.83,660.98");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=183.58,750.43");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=104.03,631.24");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=46.73,673.30");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=85.22,726.12");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=107.77,683.50");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=14.89,610.27");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=95.02,735.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=48.61,792.20");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=8.51,683.97");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=78.91,704.57");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=86.81,652.87");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=26.25,654.98");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=162.33,670.25");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=95.82,747.64");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=136.59,645.02");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=2.90,667.49");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=119.59,691.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=30.24,685.63");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=9.69,727.59");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=32.98,663.23");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=104.95,782.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=27.12,676.12");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=129.12,724.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=51.77,598.18");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=25.42,584.98");
    }

}

