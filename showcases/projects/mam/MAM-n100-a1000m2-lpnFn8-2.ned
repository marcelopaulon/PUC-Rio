
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n100-a1000m2-lpnFn8-2
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
        @display("p=815.00,577.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=820.61,592.34");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=860.36,593.75");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=931.25,625.23");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=942.82,646.88");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=986.52,576.26");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=994.84,540.94");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=979.50,542.83");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=989.11,517.78");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=959.58,652.15");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=923.55,738.86");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=910.46,721.62");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=889.45,735.96");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=796.35,612.51");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=833.97,598.29");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=851.89,609.10");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=954.01,643.80");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=994.27,645.14");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=934.63,589.24");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=995.18,530.43");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=941.70,497.29");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=933.02,487.69");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=942.07,672.89");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=913.51,745.58");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=920.52,721.21");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=955.64,760.42");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=841.57,652.82");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=826.00,678.76");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=846.47,555.36");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=895.01,620.06");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=936.73,604.45");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=946.69,547.75");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=995.95,480.69");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=975.02,554.21");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=945.03,518.87");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=925.98,678.38");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=845.50,766.95");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=870.92,676.47");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=844.97,814.65");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=799.13,664.79");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=873.65,548.04");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=799.56,544.59");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=893.06,541.98");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=904.38,584.01");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=974.50,582.36");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=965.74,503.61");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=918.85,520.37");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=936.79,459.39");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=975.02,653.06");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=965.04,733.95");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=838.02,688.97");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=929.13,761.45");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=831.07,536.33");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=836.96,565.02");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=836.39,547.43");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=980.06,677.00");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=964.82,669.44");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=998.16,597.74");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=913.15,561.45");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=962.25,525.24");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=928.06,529.44");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=938.80,687.00");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=962.91,807.16");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=889.00,629.34");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=907.94,794.03");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=841.37,621.34");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=828.17,582.67");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=944.27,624.84");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=922.86,616.66");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=894.42,656.98");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=952.48,537.56");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=976.08,595.36");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=950.74,558.83");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=960.31,440.99");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=968.80,642.42");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=906.87,774.75");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=933.29,773.38");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=848.16,752.08");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=780.94,623.33");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=837.89,510.59");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=899.12,510.71");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=900.08,565.44");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=944.23,700.21");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=897.49,531.81");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=930.27,556.52");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=952.97,511.19");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=974.22,517.05");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=964.00,703.23");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=874.06,812.08");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=887.53,694.96");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=888.98,748.04");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=791.91,565.11");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=812.05,599.64");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=800.79,558.27");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=872.34,614.06");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=989.00,698.37");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=911.73,575.97");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=946.73,603.39");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=891.68,571.97");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=973.39,488.55");
    }

}

