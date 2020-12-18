
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn8-6
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
        @display("p=117.00,382.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=107.66,371.63");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=55.90,387.18");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=70.19,353.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=45.03,401.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=100.67,417.24");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=125.19,330.66");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=70.76,458.18");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=31.70,392.61");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=101.95,390.34");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=59.13,357.83");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=40.43,410.00");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=165.84,370.72");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=152.09,289.66");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=82.46,451.78");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=140.21,392.31");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=62.78,337.34");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=83.80,357.25");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=4.98,335.87");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=79.51,441.27");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=89.87,306.63");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=98.46,326.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=88.41,387.11");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=29.69,437.14");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=3.78,411.70");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=0.01,453.22");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=186.62,417.98");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=135.84,331.40");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=114.38,322.95");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=117.39,434.88");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=46.13,306.95");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=42.39,295.43");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=58.79,499.91");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=102.67,440.80");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=156.79,302.66");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=129.98,301.88");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=75.33,336.37");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=29.15,475.85");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=14.43,407.69");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=42.32,444.78");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=45.73,375.20");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=191.09,287.10");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=137.86,413.69");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=146.86,310.38");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=118.29,419.56");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=84.72,408.46");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=86.01,487.92");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=83.49,373.74");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=189.60,342.88");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=126.33,389.44");
    }

}

