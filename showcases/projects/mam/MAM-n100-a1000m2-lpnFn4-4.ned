
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
        @display("p=672.00,952.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=599.39,897.98");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=513.19,852.84");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=522.42,925.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=538.49,875.96");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=614.96,896.23");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=564.49,934.06");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=534.01,854.84");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=463.56,803.53");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=525.68,869.27");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=490.05,945.40");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=548.60,898.85");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=530.15,910.46");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=568.20,985.18");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=597.67,943.64");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=628.87,945.97");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=639.08,996.02");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=658.52,999.39");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=594.51,995.72");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=611.41,974.48");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=624.00,980.93");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=661.21,959.57");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=565.88,872.59");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=505.48,936.84");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=446.54,977.91");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=589.83,913.38");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=570.24,925.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=523.57,946.33");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=433.63,888.83");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=589.86,813.84");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=691.35,905.38");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=523.42,988.86");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=550.04,784.89");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=470.07,794.63");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=540.14,833.52");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=505.54,968.47");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=486.58,893.25");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=554.27,875.90");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=490.99,993.88");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=609.00,880.09");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=649.71,930.25");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=542.18,977.66");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=672.68,987.21");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=577.79,974.79");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=645.21,952.84");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=630.36,959.51");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=710.99,956.41");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=497.67,853.14");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=537.92,923.26");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=475.80,971.76");
    }

    host_lpn_51: <default("SensorNode")> like INetworkNode {
        @display("p=680.09,941.66");
    }

    host_lpn_52: <default("SensorNode")> like INetworkNode {
        @display("p=607.83,910.80");
    }

    host_lpn_53: <default("SensorNode")> like INetworkNode {
        @display("p=496.29,907.91");
    }

    host_lpn_54: <default("SensorNode")> like INetworkNode {
        @display("p=544.70,908.89");
    }

    host_lpn_55: <default("SensorNode")> like INetworkNode {
        @display("p=532.61,843.08");
    }

    host_lpn_56: <default("SensorNode")> like INetworkNode {
        @display("p=517.90,896.12");
    }

    host_lpn_57: <default("SensorNode")> like INetworkNode {
        @display("p=556.39,918.38");
    }

    host_lpn_58: <default("SensorNode")> like INetworkNode {
        @display("p=538.46,756.09");
    }

    host_lpn_59: <default("SensorNode")> like INetworkNode {
        @display("p=490.38,843.81");
    }

    host_lpn_60: <default("SensorNode")> like INetworkNode {
        @display("p=487.72,874.09");
    }

    host_lpn_61: <default("SensorNode")> like INetworkNode {
        @display("p=508.47,923.46");
    }

    host_lpn_62: <default("SensorNode")> like INetworkNode {
        @display("p=486.38,958.17");
    }

    host_lpn_63: <default("SensorNode")> like INetworkNode {
        @display("p=584.72,887.83");
    }

    host_lpn_64: <default("SensorNode")> like INetworkNode {
        @display("p=514.74,995.23");
    }

    host_lpn_65: <default("SensorNode")> like INetworkNode {
        @display("p=622.95,967.00");
    }

    host_lpn_66: <default("SensorNode")> like INetworkNode {
        @display("p=618.34,942.95");
    }

    host_lpn_67: <default("SensorNode")> like INetworkNode {
        @display("p=606.82,939.56");
    }

    host_lpn_68: <default("SensorNode")> like INetworkNode {
        @display("p=687.85,967.53");
    }

    host_lpn_69: <default("SensorNode")> like INetworkNode {
        @display("p=661.15,942.15");
    }

    host_lpn_70: <default("SensorNode")> like INetworkNode {
        @display("p=676.29,910.51");
    }

    host_lpn_71: <default("SensorNode")> like INetworkNode {
        @display("p=615.66,960.14");
    }

    host_lpn_72: <default("SensorNode")> like INetworkNode {
        @display("p=725.35,978.35");
    }

    host_lpn_73: <default("SensorNode")> like INetworkNode {
        @display("p=590.00,827.24");
    }

    host_lpn_74: <default("SensorNode")> like INetworkNode {
        @display("p=435.39,961.58");
    }

    host_lpn_75: <default("SensorNode")> like INetworkNode {
        @display("p=478.96,930.16");
    }

    host_lpn_76: <default("SensorNode")> like INetworkNode {
        @display("p=762.14,953.80");
    }

    host_lpn_77: <default("SensorNode")> like INetworkNode {
        @display("p=599.54,887.62");
    }

    host_lpn_78: <default("SensorNode")> like INetworkNode {
        @display("p=571.44,894.65");
    }

    host_lpn_79: <default("SensorNode")> like INetworkNode {
        @display("p=477.25,877.23");
    }

    host_lpn_80: <default("SensorNode")> like INetworkNode {
        @display("p=581.42,957.28");
    }

    host_lpn_81: <default("SensorNode")> like INetworkNode {
        @display("p=659.43,870.86");
    }

    host_lpn_82: <default("SensorNode")> like INetworkNode {
        @display("p=611.59,922.62");
    }

    host_lpn_83: <default("SensorNode")> like INetworkNode {
        @display("p=515.42,788.30");
    }

    host_lpn_84: <default("SensorNode")> like INetworkNode {
        @display("p=374.12,810.02");
    }

    host_lpn_85: <default("SensorNode")> like INetworkNode {
        @display("p=515.03,956.99");
    }

    host_lpn_86: <default("SensorNode")> like INetworkNode {
        @display("p=501.87,878.38");
    }

    host_lpn_87: <default("SensorNode")> like INetworkNode {
        @display("p=533.97,815.31");
    }

    host_lpn_88: <default("SensorNode")> like INetworkNode {
        @display("p=512.54,946.17");
    }

    host_lpn_89: <default("SensorNode")> like INetworkNode {
        @display("p=550.32,987.95");
    }

    host_lpn_90: <default("SensorNode")> like INetworkNode {
        @display("p=589.94,859.69");
    }

    host_lpn_91: <default("SensorNode")> like INetworkNode {
        @display("p=703.46,929.12");
    }

    host_lpn_92: <default("SensorNode")> like INetworkNode {
        @display("p=686.16,952.46");
    }

    host_lpn_93: <default("SensorNode")> like INetworkNode {
        @display("p=698.90,957.46");
    }

    host_lpn_94: <default("SensorNode")> like INetworkNode {
        @display("p=559.04,968.51");
    }

    host_lpn_95: <default("SensorNode")> like INetworkNode {
        @display("p=633.61,971.36");
    }

    host_lpn_96: <default("SensorNode")> like INetworkNode {
        @display("p=643.57,884.92");
    }

    host_lpn_97: <default("SensorNode")> like INetworkNode {
        @display("p=671.43,968.25");
    }

    host_lpn_98: <default("SensorNode")> like INetworkNode {
        @display("p=630.95,894.18");
    }

    host_lpn_99: <default("SensorNode")> like INetworkNode {
        @display("p=534.68,937.57");
    }

    host_lpn_100: <default("SensorNode")> like INetworkNode {
        @display("p=400.14,978.61");
    }

}

