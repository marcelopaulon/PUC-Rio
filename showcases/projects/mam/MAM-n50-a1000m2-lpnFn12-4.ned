
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM-n50-a1000m2-lpnFn12-4
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
        @display("p=432.00,11.00");
    }

    host_fn_rly_2: <default("SensorNode")> like INetworkNode {
        @display("p=482.74,88.19");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=460.81,167.73");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=403.51,212.50");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=491.91,194.35");
    }

    host_lpn_6: <default("SensorNode")> like INetworkNode {
        @display("p=445.04,26.30");
    }

    host_lpn_7: <default("SensorNode")> like INetworkNode {
        @display("p=488.07,63.32");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=378.75,140.31");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=489.56,243.80");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=515.22,239.59");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=395.46,17.40");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=460.70,59.21");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=449.05,173.61");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=417.76,148.87");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=472.44,241.09");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=336.01,15.53");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=509.86,87.74");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=490.14,206.48");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=422.72,198.83");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=568.27,178.74");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=417.51,103.04");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=499.23,147.97");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=405.56,176.97");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=376.20,250.71");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=440.09,270.38");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=424.68,3.04");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=534.79,105.45");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=423.51,136.63");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=403.24,189.43");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=502.75,188.53");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=436.18,85.42");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=471.49,87.10");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=531.74,161.34");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=423.85,225.77");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=553.30,176.90");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=422.70,21.75");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=453.76,49.64");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=496.38,157.89");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=474.86,257.01");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=466.20,208.90");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=416.51,8.83");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=517.11,117.42");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=414.18,221.08");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=425.74,261.97");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=468.25,291.47");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=396.53,52.99");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=496.68,110.88");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=441.57,164.86");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=353.20,205.57");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=430.58,246.71");
    }

}

