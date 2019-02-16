// loader scripted by zoogie

typedef unsigned char u8;
typedef unsigned short u16;

int main(void) {    

	u8 *payload_dest=(u8*)0x02200000;   
	u8 *payload_src=(u8*)0x023D07A0; 
	u16 *MASTER_BRIGHT=(u16*) 0x400006C; 
	u16 *MASTER_BRIGHT2=(u16*)0x400106C; 
	int size=0x1800;   
	
	for(int i=0; i < size; i++){
		payload_dest[i] = payload_src[i]; 
	}

	*MASTER_BRIGHT=0; //UNO is in the middle of a fade-in while the exploit triggers so we need to fix the master_bright registers or everything looks foggy like a horror movie XD
	*MASTER_BRIGHT2=0;
	
	asm("ldr pc,=0x02200000");
	
    return 0;
	
}