
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-3
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
        @display("p=440.00,539.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=467.07,629.08");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=499.70,552.93");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=436.58,561.12");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=414.57,517.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=463.78,505.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=470.72,537.69");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=566.81,548.44");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=581.45,480.19");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=566.04,512.17");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=584.80,499.72");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=620.41,443.00");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=606.90,524.87");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=504.59,500.92");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=430.95,685.46");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=530.49,472.39");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=447.74,531.86");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=357.17,526.62");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=483.99,568.96");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=456.52,526.04");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=521.00,521.89");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=614.51,546.53");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=496.54,522.17");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=563.41,524.35");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=680.23,377.30");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=617.76,523.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=495.10,459.01");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=544.49,570.86");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=541.85,526.20");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=505.83,544.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=404.58,501.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=452.05,457.90");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=441.19,575.19");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=576.22,541.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=561.94,455.78");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=618.20,453.04");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=617.56,495.68");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=584.19,395.56");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=684.08,563.24");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=486.70,541.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=511.33,638.57");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=478.52,555.12");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=378.96,540.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=388.83,480.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=498.57,595.57");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=482.34,475.00");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=554.54,618.28");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=530.86,455.65");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=635.14,582.47");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=606.80,472.59");
    }

}

