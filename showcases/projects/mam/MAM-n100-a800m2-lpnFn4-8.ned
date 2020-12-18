
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
        @display("p=363.00,392.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=345.50,413.20");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=334.06,411.10");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=362.20,449.04");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=340.39,464.70");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=411.17,452.78");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=438.19,401.99");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=360.40,431.82");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=389.48,399.28");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=353.55,310.55");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=383.12,242.00");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=297.18,233.65");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=264.12,192.61");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=332.13,160.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=431.19,166.45");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=445.56,109.10");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=441.27,75.82");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=454.26,168.38");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=442.69,119.79");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=438.33,97.70");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=446.90,130.59");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=455.71,229.00");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=479.45,220.12");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=480.28,246.09");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=494.50,255.36");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=334.24,453.13");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=303.75,471.39");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=406.02,384.54");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=333.09,391.46");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=306.79,402.75");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=465.24,428.70");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=521.94,453.81");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=422.71,488.73");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=342.13,344.79");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=388.67,320.37");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=394.72,173.06");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=299.49,261.33");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=321.96,143.22");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=306.38,214.27");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=481.14,162.06");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=428.57,138.24");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=418.41,129.95");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=461.10,126.19");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=450.16,151.58");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=393.21,19.02");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=518.13,138.20");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=415.53,216.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=514.45,200.19");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=524.53,304.87");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=487.81,232.49");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=415.04,407.86");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=251.40,410.38");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=319.15,345.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=330.11,482.61");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=348.92,470.25");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=368.81,481.66");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=377.85,419.72");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=326.16,439.97");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=402.56,458.13");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=312.57,322.41");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=328.23,214.85");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=282.14,283.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=341.39,136.80");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=379.80,117.75");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=464.68,169.55");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=516.60,109.19");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=365.14,48.35");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=452.53,213.48");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=363.26,63.96");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=482.61,181.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=515.70,59.06");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=487.62,288.61");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=437.02,253.06");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=500.68,233.30");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=529.71,222.58");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=352.10,398.39");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=247.52,399.23");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=316.75,461.27");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=345.23,503.86");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=288.87,459.94");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=368.67,410.66");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=465.06,342.05");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=406.54,415.72");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=351.56,382.08");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=281.53,345.20");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=376.78,227.94");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=280.83,172.74");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=230.45,173.35");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=348.25,258.49");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=346.24,174.99");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=425.85,149.85");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=487.22,92.22");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=469.88,262.75");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=483.94,135.59");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=533.39,124.64");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=417.07,169.34");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=402.75,282.52");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=471.04,204.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=504.02,220.83");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=539.05,250.40");
    }

}

