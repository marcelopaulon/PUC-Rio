
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn4_0
{
    parameters:
        @display("bgb=1600,1600;bgg=100,1,grey95;bgu=m");
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
        @display("p=104.04,632.14");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=85.71,698.04");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=75.32,700.07");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=141.20,633.06");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,716.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=89.15,717.15");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=32.55,660.55");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=39.49,676.61");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=38.40,591.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=113.99,582.36");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=184.44,536.67");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=197.65,517.39");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=27.29,639.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=144.34,603.13");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=57.55,606.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=8.46,670.37");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=183.57,664.87");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=229.02,743.38");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=58.80,793.37");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=65.05,616.25");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=50.07,680.02");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=34.58,616.53");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=167.85,543.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=262.15,577.24");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=213.03,498.88");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=175.89,645.66");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=125.81,601.49");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=48.12,626.02");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=121.73,748.61");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=91.10,619.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=154.42,789.50");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=124.99,786.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=15.29,743.06");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=3.78,695.30");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=5.37,635.54");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=44.78,540.86");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=134.24,533.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=168.06,477.51");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=85.58,639.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=82.18,667.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=100.57,649.65");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=144.79,699.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=151.77,640.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=161.19,742.51");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=60.20,771.69");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=103.97,685.68");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=38.96,755.54");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=41.08,516.98");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=120.15,592.39");
    }

}

