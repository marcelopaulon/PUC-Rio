
package inet.showcases.projects.mam;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.INetworkNode;
import inet.physicallayer.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;
import inet.environment.common.PhysicalEnvironment;

network MAM_n50_a1000m2_lpnFn8_7
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
        @display("p=39.71,918.92");
    }

    host_fn_rly_3: <default("SensorNode")> like INetworkNode {
        @display("p=45.68,970.57");
    }

    host_fn_rly_4: <default("SensorNode")> like INetworkNode {
        @display("p=25.69,936.75");
    }

    host_fn_rly_5: <default("SensorNode")> like INetworkNode {
        @display("p=29.69,850.47");
    }

    host_fn_rly_6: <default("SensorNode")> like INetworkNode {
        @display("p=92.38,893.49");
    }

    host_fn_rly_7: <default("SensorNode")> like INetworkNode {
        @display("p=99.93,978.95");
    }

    host_lpn_8: <default("SensorNode")> like INetworkNode {
        @display("p=78.73,804.33");
    }

    host_lpn_9: <default("SensorNode")> like INetworkNode {
        @display("p=65.07,856.33");
    }

    host_lpn_10: <default("SensorNode")> like INetworkNode {
        @display("p=45.40,872.97");
    }

    host_lpn_11: <default("SensorNode")> like INetworkNode {
        @display("p=14.19,956.97");
    }

    host_lpn_12: <default("SensorNode")> like INetworkNode {
        @display("p=21.90,839.99");
    }

    host_lpn_13: <default("SensorNode")> like INetworkNode {
        @display("p=22.53,881.98");
    }

    host_lpn_14: <default("SensorNode")> like INetworkNode {
        @display("p=130.22,897.95");
    }

    host_lpn_15: <default("SensorNode")> like INetworkNode {
        @display("p=74.83,924.01");
    }

    host_lpn_16: <default("SensorNode")> like INetworkNode {
        @display("p=36.07,840.08");
    }

    host_lpn_17: <default("SensorNode")> like INetworkNode {
        @display("p=15.78,995.00");
    }

    host_lpn_18: <default("SensorNode")> like INetworkNode {
        @display("p=8.42,854.80");
    }

    host_lpn_19: <default("SensorNode")> like INetworkNode {
        @display("p=25.04,783.50");
    }

    host_lpn_20: <default("SensorNode")> like INetworkNode {
        @display("p=49.69,854.14");
    }

    host_lpn_21: <default("SensorNode")> like INetworkNode {
        @display("p=94.26,996.02");
    }

    host_lpn_22: <default("SensorNode")> like INetworkNode {
        @display("p=128.91,965.56");
    }

    host_lpn_23: <default("SensorNode")> like INetworkNode {
        @display("p=52.28,915.65");
    }

    host_lpn_24: <default("SensorNode")> like INetworkNode {
        @display("p=32.52,909.64");
    }

    host_lpn_25: <default("SensorNode")> like INetworkNode {
        @display("p=74.08,956.94");
    }

    host_lpn_26: <default("SensorNode")> like INetworkNode {
        @display("p=49.72,826.95");
    }

    host_lpn_27: <default("SensorNode")> like INetworkNode {
        @display("p=135.82,932.33");
    }

    host_lpn_28: <default("SensorNode")> like INetworkNode {
        @display("p=69.73,986.23");
    }

    host_lpn_29: <default("SensorNode")> like INetworkNode {
        @display("p=82.31,947.31");
    }

    host_lpn_30: <default("SensorNode")> like INetworkNode {
        @display("p=38.61,945.03");
    }

    host_lpn_31: <default("SensorNode")> like INetworkNode {
        @display("p=117.55,953.67");
    }

    host_lpn_32: <default("SensorNode")> like INetworkNode {
        @display("p=101.00,954.45");
    }

    host_lpn_33: <default("SensorNode")> like INetworkNode {
        @display("p=38.42,858.44");
    }

    host_lpn_34: <default("SensorNode")> like INetworkNode {
        @display("p=70.01,900.44");
    }

    host_lpn_35: <default("SensorNode")> like INetworkNode {
        @display("p=109.02,883.05");
    }

    host_lpn_36: <default("SensorNode")> like INetworkNode {
        @display("p=181.73,933.44");
    }

    host_lpn_37: <default("SensorNode")> like INetworkNode {
        @display("p=13.76,944.53");
    }

    host_lpn_38: <default("SensorNode")> like INetworkNode {
        @display("p=116.41,943.24");
    }

    host_lpn_39: <default("SensorNode")> like INetworkNode {
        @display("p=57.11,927.10");
    }

    host_lpn_40: <default("SensorNode")> like INetworkNode {
        @display("p=36.42,898.88");
    }

    host_lpn_41: <default("SensorNode")> like INetworkNode {
        @display("p=29.19,962.18");
    }

    host_lpn_42: <default("SensorNode")> like INetworkNode {
        @display("p=118.11,895.32");
    }

    host_lpn_43: <default("SensorNode")> like INetworkNode {
        @display("p=61.24,940.87");
    }

    host_lpn_44: <default("SensorNode")> like INetworkNode {
        @display("p=1.11,885.10");
    }

    host_lpn_45: <default("SensorNode")> like INetworkNode {
        @display("p=119.02,915.70");
    }

    host_lpn_46: <default("SensorNode")> like INetworkNode {
        @display("p=50.98,987.09");
    }

    host_lpn_47: <default("SensorNode")> like INetworkNode {
        @display("p=94.80,867.47");
    }

    host_lpn_48: <default("SensorNode")> like INetworkNode {
        @display("p=93.34,911.35");
    }

    host_lpn_49: <default("SensorNode")> like INetworkNode {
        @display("p=90.56,975.31");
    }

    host_lpn_50: <default("SensorNode")> like INetworkNode {
        @display("p=110.84,975.43");
    }

}

