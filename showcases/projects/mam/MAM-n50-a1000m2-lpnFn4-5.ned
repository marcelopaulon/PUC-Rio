
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-5
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
        @display("p=674.00,582.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=622.98,641.37");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=707.79,611.20");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=652.64,647.13");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=674.02,721.39");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=630.66,781.02");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=653.99,756.44");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=586.12,737.36");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=603.18,739.42");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=521.98,725.48");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=536.47,698.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=530.85,659.90");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=508.09,733.07");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=745.48,582.81");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=604.13,664.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=651.54,559.44");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=673.35,656.47");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=670.50,759.83");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=658.78,805.98");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=613.75,685.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=520.13,693.70");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=682.90,716.70");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=524.06,650.42");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=537.09,712.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=529.51,684.57");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=482.34,687.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=665.34,568.91");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=593.74,604.11");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=665.45,626.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=604.17,707.87");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=596.32,759.78");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=666.70,852.96");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=626.71,809.68");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=627.97,727.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=550.20,722.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=521.57,736.94");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=480.62,649.65");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=565.52,704.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=504.02,694.41");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=656.21,616.40");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=601.21,637.38");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=701.73,628.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=680.22,648.41");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=698.26,649.66");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=711.78,831.08");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=615.18,769.47");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=650.53,712.95");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=632.57,740.46");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=461.99,784.93");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=587.35,613.11");
    }

}

