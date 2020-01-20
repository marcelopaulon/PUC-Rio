import inet.common.INETDefs;
import inet.common.packet.chunk.Chunk;
import inet.linklayer.common.MacAddress;

namespace inet;

//
// Packet for ~AckingMac. Packet size is configurable
// in the MAC layer. 
//
class BMeshPacket extends FieldsChunk
{
    // Bluetooth Mesh network: up to 32,767 nodes with a maximum of 126 hops
    // From the Bluetooth Mesh specification:
    // The TTL field is a 7-bit field. The following values are defined:
    // 	• 0 = has not been relayed and will not be relayed
    // 	• 1 = may have been relayed, but will not be relayed
    // 	• 2 to 126 = may have been relayed and can be relayed
    // 	• 127 = has not been relayed and can be relayed
    int ttl;
    
    // 11 Bytes Chunk?
    chunkLength = B(11);
    MacAddress src;     // source address
    MacAddress dest;    // destination address
    int hops = 127;		// number of times the message was relayed
}

