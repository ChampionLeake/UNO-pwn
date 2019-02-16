typedef unsigned char u8;
typedef unsigned short u16;

int main(void) {    

	u16 *MASTER_BRIGHT=(u16*) 0x400006C; 
	u16 *MASTER_BRIGHT2=(u16*)0x400106C; 
	u8 *payload_dest=(u8*)0x02200000;   
	u8 *payload_src=(u8*)0x023c2d58; //023c2d58
	int size=0x638;   
	int stride=0x79C;
	
	for(int j=0;j<4;j++){
		for(int i=0; i < size; i++){
			payload_dest[i] = payload_src[i]; 
		}
		payload_dest+=size;
		payload_src+=stride;
	}
	
	*MASTER_BRIGHT=0; //UNO is in the middle of a fade-in while the exploit triggers so we need to fix the master_bright registers or everything looks foggy like a horror movie XD
	*MASTER_BRIGHT2=0;
	
	asm("ldr pc,=0x02200000");
	
    return 0;
	
}