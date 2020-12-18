
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_4
{
    parameters:
        @display("bgb=2000,2000;bgg=100,1,grey95;bgu=m");
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=187.88,936.56");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=119.68,894.60");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=27.42,919.55");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=52.65,867.53");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=27.36,778.22");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=9.91,789.07");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=31.27,695.52");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=82.78,619.24");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=91.73,637.43");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=99.20,609.71");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=77.78,518.59");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=31.71,522.67");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=36.94,869.72");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=274.15,969.84");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=164.09,982.41");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=84.46,872.84");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=86.57,887.83");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=17.30,772.56");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=10.45,811.60");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=62.99,646.43");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=17.39,557.60");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=58.08,551.41");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=109.08,603.17");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=71.27,531.89");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=19.06,532.17");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=74.26,826.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=177.36,914.07");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=150.40,891.23");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=6.99,887.38");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=26.52,907.15");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=4.23,742.18");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=66.92,817.11");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=7.06,644.26");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=42.70,660.99");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=119.40,627.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=191.06,641.87");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=53.40,487.36");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=39.35,535.99");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=159.58,959.70");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=173.65,995.15");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=111.93,876.43");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=7.63,858.49");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=138.78,861.99");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=47.76,743.12");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=75.97,856.15");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=19.62,704.18");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=87.65,663.98");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=76.41,687.15");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=158.87,538.10");
    }

}

