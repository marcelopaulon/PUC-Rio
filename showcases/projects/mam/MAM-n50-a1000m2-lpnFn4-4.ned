
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-4
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
        @display("p=465.00,862.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=513.31,802.10");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=485.82,783.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=500.80,784.64");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=463.46,758.76");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=524.57,747.19");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=571.89,712.57");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=640.43,740.22");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=617.52,782.76");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=599.57,805.70");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=610.31,865.82");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=576.98,875.30");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=587.42,880.34");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=504.16,892.73");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=437.41,757.25");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=537.60,751.68");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=537.17,714.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=464.61,739.16");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=470.00,719.88");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=607.62,667.67");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=707.52,796.42");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=584.85,785.48");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=601.83,794.23");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=592.13,896.59");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=508.73,857.51");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=598.33,870.84");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=435.94,858.64");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=552.52,794.02");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=473.01,767.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=463.01,794.77");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=446.06,674.03");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=568.69,782.55");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=511.83,756.65");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=635.80,783.62");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=638.82,844.95");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=541.14,833.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=677.81,827.48");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=655.18,838.03");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=616.94,974.82");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=432.71,820.92");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=491.91,795.36");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=517.61,847.79");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=493.24,751.12");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=486.31,693.92");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=545.17,764.72");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=580.47,719.54");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=663.17,765.05");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=629.02,819.75");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=566.33,865.91");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=547.53,821.12");
    }

}

