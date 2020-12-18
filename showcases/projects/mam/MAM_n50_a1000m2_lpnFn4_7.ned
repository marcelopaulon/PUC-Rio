
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn4_7
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
        @display("p=100.00,900.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=137.11,858.38");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=191.86,781.95");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=224.39,777.27");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=282.25,782.97");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=202.66,753.48");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=253.48,695.61");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=306.27,755.69");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=338.36,675.22");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=322.98,621.87");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=332.15,585.19");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=328.36,599.94");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=357.82,579.95");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=98.44,835.34");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=185.86,796.88");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=212.90,781.05");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=233.88,802.70");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=242.27,783.57");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=209.84,830.14");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=350.39,715.73");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=247.38,774.56");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=287.97,721.24");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=283.37,659.43");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=373.96,591.45");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=371.68,646.31");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=357.52,593.48");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=28.58,871.83");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=52.69,875.75");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=191.75,879.42");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=197.88,864.71");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=239.87,817.53");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=126.69,808.44");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=263.29,687.56");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=359.77,692.72");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=401.35,646.62");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=275.31,606.60");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=395.91,545.03");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=264.78,569.09");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=354.86,514.36");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=78.98,875.67");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=106.28,827.87");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=177.17,783.67");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=191.01,758.25");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=252.70,816.12");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=200.61,732.06");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=266.75,699.41");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=368.71,736.07");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=347.00,598.02");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=300.04,583.76");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=343.73,573.04");
    }

}

