
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_7
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
        @display("p=100.00,700.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=151.05,682.16");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=185.84,596.47");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=130.98,584.40");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=160.67,616.38");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=166.48,679.23");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=145.35,694.26");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=258.67,640.48");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=189.53,514.64");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=164.67,628.18");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=92.05,635.68");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=126.92,630.09");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=166.39,600.51");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=124.55,666.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=104.61,646.20");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=180.76,730.72");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=160.31,760.28");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=134.62,681.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=110.03,555.30");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=117.52,606.55");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=60.46,773.65");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=153.57,664.71");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=117.63,539.62");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=87.71,536.12");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=144.19,581.59");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=56.27,718.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=225.53,658.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=128.10,563.61");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=127.53,615.94");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=163.39,559.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=116.51,697.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=91.77,740.73");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=177.01,601.40");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=136.30,595.35");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=68.42,627.39");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=178.22,697.12");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=125.18,650.50");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=200.89,617.34");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=55.07,615.35");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=242.36,561.69");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=175.78,638.82");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=143.95,716.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=214.35,647.04");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=90.14,607.82");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=136.98,525.49");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=81.99,694.73");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=204.91,634.09");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=167.81,573.99");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=73.54,599.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=230.27,582.20");
    }

}

