
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a800m2-lpnFn1-9
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
        @display("p=615.00,380.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=619.04,360.36");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=663.95,329.11");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=658.34,302.36");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=670.70,341.29");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=582.64,304.52");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=544.67,376.80");
    }

    host_fn_rly_8: <default("SensorNode")> like INetworkNode {
        @display("p=512.66,391.27");
    }

    host_fn_rly_9: <default("SensorNode")> like INetworkNode {
        @display("p=535.41,407.17");
    }

    host_fn_rly_10: <default("SensorNode")> like INetworkNode {
        @display("p=498.67,434.09");
    }

    host_fn_rly_11: <default("SensorNode")> like INetworkNode {
        @display("p=487.97,393.23");
    }

    host_fn_rly_12: <default("SensorNode")> like INetworkNode {
        @display("p=530.75,362.97");
    }

    host_fn_rly_13: <default("SensorNode")> like INetworkNode {
        @display("p=586.18,293.28");
    }

    host_fn_rly_14: <default("SensorNode")> like INetworkNode {
        @display("p=573.50,241.15");
    }

    host_fn_rly_15: <default("SensorNode")> like INetworkNode {
        @display("p=518.81,304.92");
    }

    host_fn_rly_16: <default("SensorNode")> like INetworkNode {
        @display("p=539.94,286.98");
    }

    host_fn_rly_17: <default("SensorNode")> like INetworkNode {
        @display("p=562.82,308.82");
    }

    host_fn_rly_18: <default("SensorNode")> like INetworkNode {
        @display("p=637.92,324.77");
    }

    host_fn_rly_19: <default("SensorNode")> like INetworkNode {
        @display("p=652.23,268.37");
    }

    host_fn_rly_20: <default("SensorNode")> like INetworkNode {
        @display("p=699.03,353.85");
    }

    host_fn_rly_21: <default("SensorNode")> like INetworkNode {
        @display("p=716.95,311.87");
    }

    host_fn_rly_22: <default("SensorNode")> like INetworkNode {
        @display("p=656.06,352.21");
    }

    host_fn_rly_23: <default("SensorNode")> like INetworkNode {
        @display("p=681.01,321.62");
    }

    host_fn_rly_24: <default("SensorNode")> like INetworkNode {
        @display("p=735.26,258.33");
    }

    host_fn_rly_25: <default("SensorNode")> like INetworkNode {
        @display("p=711.04,228.55");
    }

    host_fn_rly_26: <default("SensorNode")> like INetworkNode {
        @display("p=703.21,214.98");
    }

    host_fn_rly_27: <default("SensorNode")> like INetworkNode {
        @display("p=753.55,203.24");
    }

    host_fn_rly_28: <default("SensorNode")> like INetworkNode {
        @display("p=770.99,122.82");
    }

    host_fn_rly_29: <default("SensorNode")> like INetworkNode {
        @display("p=749.09,160.14");
    }

    host_fn_rly_30: <default("SensorNode")> like INetworkNode {
        @display("p=689.98,146.26");
    }

    host_fn_rly_31: <default("SensorNode")> like INetworkNode {
        @display("p=706.45,49.24");
    }

    host_fn_rly_32: <default("SensorNode")> like INetworkNode {
        @display("p=629.10,6.68");
    }

    host_fn_rly_33: <default("SensorNode")> like INetworkNode {
        @display("p=650.09,28.63");
    }

    host_fn_rly_34: <default("SensorNode")> like INetworkNode {
        @display("p=623.70,49.82");
    }

    host_fn_rly_35: <default("SensorNode")> like INetworkNode {
        @display("p=616.59,121.73");
    }

    host_fn_rly_36: <default("SensorNode")> like INetworkNode {
        @display("p=605.66,98.41");
    }

    host_fn_rly_37: <default("SensorNode")> like INetworkNode {
        @display("p=614.03,37.98");
    }

    host_fn_rly_38: <default("SensorNode")> like INetworkNode {
        @display("p=628.97,20.04");
    }

    host_fn_rly_39: <default("SensorNode")> like INetworkNode {
        @display("p=694.57,19.40");
    }

    host_fn_rly_40: <default("SensorNode")> like INetworkNode {
        @display("p=705.86,27.86");
    }

    host_fn_rly_41: <default("SensorNode")> like INetworkNode {
        @display("p=668.84,3.72");
    }

    host_fn_rly_42: <default("SensorNode")> like INetworkNode {
        @display("p=669.37,43.48");
    }

    host_fn_rly_43: <default("SensorNode")> like INetworkNode {
        @display("p=594.37,27.55");
    }

    host_fn_rly_44: <default("SensorNode")> like INetworkNode {
        @display("p=673.28,85.69");
    }

    host_fn_rly_45: <default("SensorNode")> like INetworkNode {
        @display("p=674.04,56.26");
    }

    host_fn_rly_46: <default("SensorNode")> like INetworkNode {
        @display("p=668.12,109.10");
    }

    host_fn_rly_47: <default("SensorNode")> like INetworkNode {
        @display("p=592.05,89.58");
    }

    host_fn_rly_48: <default("SensorNode")> like INetworkNode {
        @display("p=528.09,55.82");
    }

    host_fn_rly_49: <default("SensorNode")> like INetworkNode {
        @display("p=473.20,43.67");
    }

    host_fn_rly_50: <default("SensorNode")> like INetworkNode {
        @display("p=499.57,111.87");
    }

}

