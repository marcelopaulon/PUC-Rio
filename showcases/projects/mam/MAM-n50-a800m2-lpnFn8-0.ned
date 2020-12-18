
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-0
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
        @display("p=497.00,529.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=448.99,542.87");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=484.09,592.74");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=501.38,592.74");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=461.17,683.72");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=473.49,617.68");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=478.89,639.37");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=509.35,537.39");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=511.54,465.28");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=523.14,643.92");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=492.26,619.71");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=493.93,768.13");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=395.13,582.58");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=462.41,618.59");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=546.47,496.19");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=461.50,490.07");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=574.86,626.60");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=537.25,547.38");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=397.37,633.28");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=487.36,707.58");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=573.29,615.30");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=483.56,450.86");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=377.47,531.88");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=486.67,554.24");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=558.45,577.47");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=513.00,662.39");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=471.98,606.06");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=449.68,657.28");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=432.27,602.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=396.78,519.55");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=428.86,558.99");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=467.16,630.58");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=435.97,693.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=460.48,647.71");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=459.66,730.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=483.49,522.51");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=455.22,577.94");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=485.62,611.43");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=403.08,603.66");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=528.86,675.04");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=553.48,587.80");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=484.73,659.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=407.21,489.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=470.62,589.44");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=531.88,661.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=533.77,500.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=408.02,613.30");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=446.34,616.89");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=536.04,608.01");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=437.23,452.60");
    }

}

