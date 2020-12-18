
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-8
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
        @display("p=452.00,296.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=417.25,220.22");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=354.98,211.06");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=452.52,212.47");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=474.21,217.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=375.22,213.88");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=368.57,225.90");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=448.39,189.76");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=429.24,198.41");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=352.15,191.13");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=375.32,144.37");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=379.54,127.10");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=388.67,117.86");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=354.91,314.89");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=353.19,242.08");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=371.24,196.23");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=421.92,168.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=403.30,246.31");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=395.92,168.01");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=362.11,188.95");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=355.67,174.32");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=432.92,278.73");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=285.45,162.31");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=379.46,71.89");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=462.73,141.42");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=389.76,145.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=358.40,273.97");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=493.72,211.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=334.56,229.56");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=497.18,160.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=463.53,196.57");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=434.28,165.69");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=328.51,288.16");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=481.05,128.68");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=420.19,250.12");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=272.60,133.14");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=416.11,88.08");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=365.64,107.48");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=398.54,79.16");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=511.71,353.34");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=382.12,199.95");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=416.82,158.55");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=526.55,221.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=438.15,153.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=390.30,249.17");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=397.99,286.79");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=450.24,150.22");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=394.94,223.82");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=310.39,118.48");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=352.64,160.19");
    }

}

