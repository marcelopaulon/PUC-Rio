
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a400m2_lpnFn12_4
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=138.14,339.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=184.14,329.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=162.15,322.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=161.84,224.48");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=130.80,280.98");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=135.40,301.58");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=237.98,354.92");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=170.79,315.86");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=83.04,228.81");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=16.17,306.83");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=220.71,317.43");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=172.90,290.14");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=132.59,236.84");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=167.87,208.56");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=76.05,282.43");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=138.14,323.61");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=117.43,299.32");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=195.40,342.32");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=125.64,249.11");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=149.97,326.69");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=189.04,363.88");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=181.29,309.78");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=100.62,381.76");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=199.25,198.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=45.12,313.05");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=64.12,397.53");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=209.69,353.52");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=177.12,398.47");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=232.00,191.42");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=35.91,226.54");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=188.04,281.16");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=265.20,381.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=95.68,321.89");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=209.39,190.56");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.46,369.26");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.05,300.23");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=156.92,336.79");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=213.52,367.81");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=175.00,217.41");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=118.18,319.19");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=223.27,300.07");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=148.57,354.22");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=135.87,357.73");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=220.37,277.61");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=51.98,286.12");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=206.52,306.29");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=114.27,335.95");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=193.46,354.65");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=138.05,177.42");
    }

}

