
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-2
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
        @display("p=398.00,582.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=396.33,555.23");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=364.82,583.88");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=340.69,595.26");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=284.90,561.00");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=272.59,512.61");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=306.36,477.38");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=240.60,507.14");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=225.22,479.02");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=238.75,474.59");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=263.66,445.61");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=311.96,443.38");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=348.88,427.78");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=333.18,435.31");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=368.06,398.75");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=447.32,410.84");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=456.47,418.65");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=447.50,425.86");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=384.62,407.00");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=424.37,431.45");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=468.81,441.13");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=476.51,450.73");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=505.27,444.97");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=470.61,459.71");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=458.79,459.27");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=402.58,519.57");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=399.98,493.44");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=302.85,618.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=286.29,596.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=284.26,607.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=302.52,524.75");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=214.00,469.89");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=268.79,500.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=255.90,489.56");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=171.66,547.13");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=237.09,460.32");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=325.40,451.46");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=356.42,441.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=315.47,531.29");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=356.62,457.75");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=444.93,329.58");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=366.01,422.46");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=472.48,417.85");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=401.91,395.95");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=431.26,440.18");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=482.04,428.02");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=513.56,515.16");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=446.20,480.11");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=444.27,465.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=482.30,484.15");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=353.50,621.77");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=393.32,471.50");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=355.97,565.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=367.06,499.67");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=275.08,547.35");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=179.92,504.03");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=304.82,499.01");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=182.80,515.18");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=184.73,488.38");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=220.30,427.06");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=322.39,433.93");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=247.32,459.56");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=334.36,387.14");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=322.76,414.82");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=382.82,375.61");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=432.20,422.06");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=382.70,470.02");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=447.11,450.64");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=412.20,389.77");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=347.96,481.90");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=558.18,455.33");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=472.54,523.54");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=488.57,521.34");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=460.30,435.02");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=456.19,402.75");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=399.55,571.45");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=369.03,556.16");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=369.14,597.03");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=330.39,576.77");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=325.28,534.13");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=307.01,556.40");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=344.36,508.70");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=194.05,423.88");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=285.48,455.85");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=236.90,530.59");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=278.99,405.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=303.68,432.90");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=321.73,374.67");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=340.47,346.27");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=359.72,469.93");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=463.81,409.70");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=436.58,409.81");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=446.09,353.49");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=426.51,395.57");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=443.85,381.19");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=493.24,419.28");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=519.90,380.01");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=509.45,425.46");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=436.52,472.40");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=449.01,502.71");
    }

}

