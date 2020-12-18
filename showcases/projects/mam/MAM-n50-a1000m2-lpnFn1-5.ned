
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn1-5
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
        @display("p=455.00,262.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=478.22,289.78");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=480.93,307.13");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=468.68,300.29");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=508.27,248.85");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=565.66,258.73");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=598.33,248.25");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=601.14,279.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=611.70,330.09");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=652.57,307.80");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=680.49,272.94");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=639.34,253.79");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=684.65,306.31");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=713.41,301.70");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=699.06,329.21");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=690.71,418.60");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=698.45,425.54");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=683.93,463.50");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=703.50,514.06");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=713.71,599.01");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=736.86,592.96");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=761.29,505.52");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=754.04,520.62");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=809.27,584.72");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=737.79,570.24");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=773.49,572.93");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=836.01,629.81");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=902.14,650.63");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=860.89,676.15");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=813.07,644.60");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=874.50,578.08");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=853.50,582.39");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=858.21,565.73");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=883.21,477.86");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=872.45,500.59");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=798.80,504.68");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=776.50,551.54");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=743.27,464.99");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=728.07,400.19");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=808.08,415.96");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=852.87,365.27");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=789.66,321.40");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=769.57,308.42");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=718.81,329.13");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=716.51,314.34");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=759.71,339.14");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=739.61,354.87");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=716.72,370.55");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=656.37,347.34");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=677.56,329.75");
    }

}

