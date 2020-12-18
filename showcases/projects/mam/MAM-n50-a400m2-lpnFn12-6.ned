
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn12-6
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
        @display("p=396.00,185.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=376.10,219.54");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=367.50,240.59");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=306.28,229.66");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=306.47,292.22");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=399.45,206.52");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=318.05,189.79");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=357.84,273.14");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=312.17,313.12");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=275.09,295.69");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=380.54,235.23");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=331.75,251.16");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=303.65,209.82");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=286.77,238.29");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=277.15,383.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=296.72,174.65");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=320.47,152.50");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=378.04,312.73");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=317.17,275.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=215.51,295.69");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=384.22,163.84");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=394.23,216.04");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=354.06,221.75");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=252.38,159.01");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=344.49,274.01");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=390.26,194.11");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=395.18,269.40");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=388.68,260.10");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=231.44,255.78");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=309.98,253.52");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=346.18,201.98");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=336.51,207.03");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=369.24,193.94");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=257.35,288.34");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=362.23,299.88");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=398.16,146.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=297.32,249.93");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=341.84,241.64");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,234.14");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=282.65,315.95");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=319.85,165.69");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=277.26,232.62");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=399.57,307.44");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=338.74,150.30");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=288.42,266.33");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=389.96,86.35");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=375.91,203.55");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=354.18,145.80");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=287.42,144.07");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=229.99,342.75");
    }

}

