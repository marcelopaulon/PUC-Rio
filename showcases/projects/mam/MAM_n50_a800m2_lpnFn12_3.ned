
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a800m2_lpnFn12_3
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
        @display("p=118.79,740.68");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=140.12,656.40");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=168.73,689.86");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=153.45,695.10");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=79.98,722.31");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=80.40,687.22");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=192.67,606.27");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=147.78,674.79");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=209.01,725.45");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=121.84,687.70");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=124.30,728.21");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=167.36,574.83");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=229.98,737.20");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=235.20,748.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=87.96,641.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=80.85,774.16");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=55.92,705.15");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=154.73,732.71");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=124.59,619.47");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=125.74,657.22");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=191.74,751.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=130.33,605.99");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=225.97,641.78");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=206.29,737.68");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=58.96,614.52");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=149.30,763.80");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=89.89,570.18");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=113.19,677.77");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=230.67,716.27");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=91.01,674.33");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=145.88,745.92");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=174.87,583.86");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=185.44,592.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=245.04,722.44");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=55.22,759.57");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=128.71,697.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=141.56,641.06");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=162.06,706.72");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=131.05,629.82");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=139.70,610.34");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=89.64,785.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=150.12,654.13");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=167.44,727.34");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,754.75");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=76.57,738.70");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=42.10,774.70");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=191.24,707.25");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=173.86,707.14");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=218.81,702.62");
    }

}

