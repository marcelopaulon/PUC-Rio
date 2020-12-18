
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a800m2-lpnFn4-8
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
        @display("p=244.00,523.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=289.91,513.55");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=317.57,452.49");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=286.47,445.87");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=347.58,437.22");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=419.93,466.71");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=421.10,491.85");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=446.95,476.24");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=501.07,395.33");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=510.45,406.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=454.12,335.04");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=372.72,284.72");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=361.99,319.42");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=403.98,339.57");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=422.04,297.70");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=471.47,344.00");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=467.08,390.24");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=388.60,360.57");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=380.02,381.21");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=392.38,348.47");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=331.75,422.61");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=331.16,376.64");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=327.12,324.01");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=294.39,279.25");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=274.44,346.95");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=280.86,611.29");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=202.51,527.71");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=249.71,438.42");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=310.19,414.10");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=371.79,485.44");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=477.54,408.60");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=393.26,523.61");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=448.55,500.74");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=534.09,415.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=556.04,373.11");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=437.69,319.22");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=300.36,334.15");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=447.55,343.74");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=414.55,346.87");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=470.28,288.01");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=541.15,327.84");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=489.08,408.14");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=387.91,298.06");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=355.19,373.31");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=391.59,414.68");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=325.42,442.64");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=252.38,417.83");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=308.30,275.64");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=285.83,291.42");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=216.50,287.41");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=226.17,506.91");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=298.25,470.00");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=334.20,502.37");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=345.27,514.07");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=419.83,392.79");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=384.31,511.35");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=432.24,477.48");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=462.83,447.66");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=447.39,358.06");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=420.73,430.48");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=495.82,347.60");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=369.35,332.34");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=306.37,372.10");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=402.03,276.87");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=493.44,327.24");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=566.86,357.45");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=442.16,440.68");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=368.21,364.69");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=363.67,396.17");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=448.77,395.64");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=322.78,363.79");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=335.05,347.91");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=313.08,307.79");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=282.64,265.37");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=287.62,356.69");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=264.38,430.46");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=372.77,526.54");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=323.94,473.01");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=227.82,445.76");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=311.05,489.11");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=439.60,370.54");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=380.33,498.75");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=487.45,510.64");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=482.07,392.39");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=431.54,361.58");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=392.11,323.91");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=353.93,189.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=342.53,251.82");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=497.73,312.15");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=411.18,374.92");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=503.03,357.45");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=502.26,473.87");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=354.42,407.80");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=434.20,406.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=352.77,333.07");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=357.69,474.00");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=360.57,307.41");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=344.48,322.55");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=347.39,296.08");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=306.31,295.00");
    }

}

