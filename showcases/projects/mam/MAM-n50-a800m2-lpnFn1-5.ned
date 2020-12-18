
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-5
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
        @display("p=488.00,353.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=460.68,357.64");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=523.85,313.19");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=466.49,380.84");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=442.20,336.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=511.98,348.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=532.80,361.28");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=475.32,296.60");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=443.18,234.20");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=481.01,182.16");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=487.89,209.96");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=472.24,117.46");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=508.16,204.71");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=472.06,155.98");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=465.15,174.79");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=540.69,151.43");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=548.58,125.73");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=544.45,111.20");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=542.64,49.50");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=577.82,110.10");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=605.15,121.63");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=548.94,177.50");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=481.99,129.40");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=452.74,166.75");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=439.50,167.75");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=403.63,157.50");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=349.60,99.02");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=296.91,132.21");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=237.10,162.61");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=214.26,155.33");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=206.73,163.97");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=187.82,86.00");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=225.82,62.33");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=236.32,76.48");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=232.73,122.12");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=232.26,143.83");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=297.26,69.39");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=344.47,66.58");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=337.84,106.39");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=364.52,91.01");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=394.87,31.69");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=316.80,37.80");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=388.23,104.36");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=329.74,162.29");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=346.22,258.23");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=290.28,255.70");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=319.07,240.96");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=371.82,241.75");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=442.64,207.38");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=430.32,218.50");
    }

}

