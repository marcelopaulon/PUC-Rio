
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn4-8
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
        @display("p=645.00,582.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=648.84,593.28");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=705.87,545.12");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=760.13,615.18");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=802.70,638.09");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=734.78,636.06");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=721.15,633.78");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=746.28,696.62");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=767.74,629.95");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=829.75,592.98");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=880.58,592.85");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=923.56,576.56");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=894.71,536.69");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=693.81,611.69");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=658.88,596.75");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=728.02,530.55");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=731.34,600.06");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=833.29,625.55");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=763.36,581.10");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=794.10,619.35");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=710.04,690.14");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=773.36,723.46");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=866.36,579.35");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=908.60,558.99");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=853.61,533.33");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=931.64,529.19");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=631.48,540.27");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=681.71,566.31");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=670.50,547.04");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=695.89,653.93");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=818.18,663.76");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=694.13,588.66");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=671.06,558.13");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=791.16,762.05");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=763.58,676.72");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=885.93,618.11");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=873.28,624.13");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=847.00,580.72");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=900.36,524.75");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=626.74,586.07");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=604.56,629.96");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=775.63,501.15");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=692.75,543.91");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=814.82,606.41");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=801.52,587.21");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=789.86,610.17");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=811.51,703.36");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=791.60,698.63");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=925.92,591.02");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=853.57,505.33");
    }

}

