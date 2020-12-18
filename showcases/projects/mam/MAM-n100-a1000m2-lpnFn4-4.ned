
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn4-4
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
        @display("p=355.00,401.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=393.37,316.03");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=432.71,400.69");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=453.84,307.30");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=542.58,297.65");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=530.07,323.89");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=467.26,336.66");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=410.24,297.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=434.27,270.94");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=408.99,330.88");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=349.79,334.06");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=424.59,321.87");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=486.30,340.88");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=498.38,298.17");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=469.68,257.54");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=485.24,268.73");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=448.03,259.71");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=456.49,252.74");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=414.11,226.66");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=390.56,295.91");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=488.46,307.54");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=440.95,392.91");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=373.09,333.11");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=367.46,351.19");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=416.28,370.45");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=400.55,325.23");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=347.41,279.74");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=492.77,366.59");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=523.46,310.33");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=548.12,307.97");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=437.56,299.12");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=471.28,310.40");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=482.96,322.15");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=440.40,181.81");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=447.46,412.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=350.74,362.71");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=361.23,389.62");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=512.14,382.98");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=486.75,290.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=457.99,233.35");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=473.18,297.79");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=478.23,283.29");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=424.68,232.39");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=487.99,168.67");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=346.55,242.78");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=514.34,276.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=437.45,409.63");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=351.13,391.20");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=308.90,332.71");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=410.69,390.39");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=310.87,459.95");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=340.35,306.93");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=405.71,421.80");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=531.13,334.51");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=539.58,283.11");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=594.08,276.67");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=446.68,239.87");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=475.96,362.94");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=440.04,221.95");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=335.63,320.69");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=308.72,299.65");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=386.51,333.12");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=501.74,383.36");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=502.61,270.15");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=374.19,255.90");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=509.59,255.72");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=444.50,323.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=444.12,160.59");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=344.31,170.13");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=474.02,271.07");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=540.12,265.84");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=516.27,443.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=401.76,347.81");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=420.29,400.06");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=427.67,366.77");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=341.91,379.15");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=320.72,333.58");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=466.82,472.87");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=492.58,276.84");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=549.63,333.81");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=508.28,372.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=559.57,311.56");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=371.50,266.23");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=351.38,233.88");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=459.61,266.67");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=286.15,311.82");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=379.54,397.01");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=432.18,334.28");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=421.35,275.87");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=494.35,226.30");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=505.99,197.26");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=373.64,281.33");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=514.41,224.16");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=380.27,231.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=323.03,270.72");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=544.08,232.56");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=495.11,327.28");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=378.73,308.31");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=354.25,435.70");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=471.37,407.79");
    }

}

