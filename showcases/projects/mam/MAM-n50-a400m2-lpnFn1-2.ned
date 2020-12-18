
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a400m2-lpnFn1-2
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
        @display("p=358.00,293.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=394.78,370.01");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=399.02,389.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=354.13,327.41");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=346.17,316.93");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=290.71,262.84");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=337.04,287.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=323.15,257.92");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=242.28,266.39");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=252.55,265.99");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=314.35,264.34");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=299.52,298.49");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=250.04,350.87");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=221.77,351.82");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=175.53,299.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=259.12,258.01");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=226.14,171.95");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=168.45,251.29");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=241.20,248.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=283.45,230.08");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=221.87,306.26");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=217.41,361.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=246.97,371.56");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=304.73,337.46");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=251.09,245.35");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=244.83,236.88");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=319.59,279.30");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=343.66,250.41");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=380.32,279.37");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=373.27,247.59");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=378.50,319.50");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=333.82,259.62");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=338.40,309.74");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=321.99,306.13");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=240.03,310.32");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=259.87,398.86");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=259.97,387.30");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=318.19,316.61");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=210.22,268.98");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=345.21,199.48");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=347.89,218.83");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=347.96,229.57");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=359.67,176.17");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=284.92,127.82");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=228.94,106.61");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=232.90,8.60");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=227.25,46.30");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=250.95,29.75");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=164.67,26.71");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=155.97,88.13");
    }

}

