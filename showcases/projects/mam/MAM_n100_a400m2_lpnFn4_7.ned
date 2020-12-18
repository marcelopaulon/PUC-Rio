
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n100_a400m2_lpnFn4_7
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
        @display("p=100.00,300.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=43.70,260.77");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=51.73,220.66");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=44.17,205.42");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=64.57,282.55");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=57.30,266.41");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=38.97,298.34");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=0.71,281.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=51.25,245.18");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=80.62,276.03");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=36.46,170.75");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=86.30,84.83");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=61.67,132.04");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=93.29,105.04");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=171.36,140.98");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=158.39,154.06");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=118.28,149.33");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=136.55,99.60");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=150.53,70.18");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=137.84,16.14");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=143.98,35.49");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=167.69,108.82");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=204.53,198.36");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=228.46,241.66");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=232.42,255.13");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=160.12,371.60");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=34.94,197.49");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=27.67,282.17");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=109.62,244.73");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=87.70,187.76");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=61.59,233.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=65.16,333.47");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=53.97,338.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=75.74,228.28");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=41.93,225.61");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=1.81,193.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=44.81,26.04");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=21.83,140.80");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=74.61,92.12");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=234.29,174.22");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=162.34,177.56");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=195.08,188.13");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=74.30,63.79");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=220.46,102.75");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=128.20,6.37");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=149.69,45.83");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=172.69,96.27");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=221.90,204.52");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=185.69,285.79");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=281.92,241.42");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=121.15,312.81");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=17.70,300.14");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=1.89,251.02");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=16.69,206.23");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=98.29,281.22");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=65.43,257.30");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=67.59,271.53");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=24.58,351.67");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=26.73,259.05");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=22.73,271.93");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=74.87,176.78");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=99.31,41.41");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=128.96,67.29");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=73.07,112.10");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=117.58,82.82");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=240.88,193.85");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=133.23,194.95");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=121.65,113.92");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=66.63,74.39");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=182.71,28.27");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=160.37,23.09");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=145.18,56.60");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=199.23,243.76");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=259.10,235.54");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=285.61,286.78");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=81.91,219.33");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=90.40,288.41");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=81.60,299.02");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=8.02,175.22");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=2.66,240.91");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=29.40,243.00");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=40.23,363.81");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=50.58,286.76");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=112.86,232.40");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=87.23,347.29");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=48.78,165.48");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=9.47,97.80");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=46.33,55.58");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=187.23,114.47");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=261.54,113.23");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=175.24,120.78");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=95.26,179.29");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=143.94,166.55");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=106.52,119.05");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=188.75,98.90");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=170.98,49.88");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=176.92,162.27");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=207.42,287.24");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=263.58,283.53");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=240.68,247.71");
    }

}

