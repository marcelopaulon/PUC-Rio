
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn4-5
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
        @display("p=400.00,619.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=452.07,626.90");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=445.90,560.09");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=461.38,541.59");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=392.85,584.48");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=366.43,596.67");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=372.70,588.46");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=401.55,629.00");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=369.26,608.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=354.73,625.64");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=389.14,624.48");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=320.54,613.07");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=312.64,595.20");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=407.55,610.64");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=508.95,613.26");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=432.83,488.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=420.67,518.49");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=426.50,561.61");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=382.11,562.19");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=327.62,595.72");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=401.71,673.49");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=356.03,598.41");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=339.04,673.16");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=427.92,628.05");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=311.28,605.88");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=235.99,619.63");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=410.41,600.38");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=479.92,654.93");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=409.49,499.29");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=471.77,554.60");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=402.35,547.46");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=300.34,563.83");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=403.29,564.07");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=452.35,686.23");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=400.80,646.41");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=306.97,644.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=378.67,637.74");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=283.79,545.20");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=268.54,598.37");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=342.79,604.30");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=534.97,629.65");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=451.93,513.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=434.04,609.61");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=376.04,529.26");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=376.65,617.25");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=318.85,541.82");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=427.33,686.71");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=420.05,617.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=360.77,646.27");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=429.85,598.76");
    }

}

