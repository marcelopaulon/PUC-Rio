
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-7
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
        @display("p=413.00,420.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=432.99,439.41");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=374.97,456.33");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=334.74,434.31");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=319.36,438.62");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=294.79,356.86");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=300.72,369.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=334.30,387.81");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=284.62,361.92");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=290.55,398.84");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=268.63,342.90");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=211.12,299.44");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=237.47,259.33");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=493.60,465.57");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=444.24,448.47");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=427.68,533.14");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=366.08,376.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=346.37,449.67");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=317.16,374.16");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=333.43,306.13");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=324.03,403.08");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=287.87,377.34");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=267.91,456.83");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=191.77,351.00");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=169.61,359.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=223.30,251.06");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=420.35,357.57");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=344.81,430.50");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=368.12,434.11");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=390.72,415.95");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=354.49,519.36");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=293.86,277.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=271.76,423.25");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=297.32,312.70");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=258.96,305.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=221.71,331.40");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=310.04,410.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=146.02,244.27");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=193.97,262.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=405.10,395.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=448.56,525.78");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=415.85,469.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=242.65,395.73");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=364.21,414.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=329.03,420.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=245.47,316.49");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=357.77,360.14");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=269.27,383.68");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=273.51,397.38");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=238.70,345.92");
    }

}

