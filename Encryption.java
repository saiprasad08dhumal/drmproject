import java.io.*;

import javax.swing.JFileChooser;
public class Encryption{
	public byte []Earray=new byte[9999999];
	public int filesize;

	public static void main(String []args)
	{
		JFileChooser chooser = new JFileChooser();
		chooser.showOpenDialog(null);
		File F=chooser.getSelectedFile();
		new Encryption(F,"");
		//		ByteArrayInputStream nice1 = new ByteArrayInputStream(e1.Earray);

	}
	Encryption(File f, String diskid){
		int temp,i, index=0;
		byte temp2=0;
		System.out.println("encryption called");
		try{
			FileInputStream fin=new FileInputStream(f);
	//		diskid= DiskUtils.getSerialNumber("C");
	//		diskid = diskid.replaceAll("[^a-zA-Z0-9]", "");
			byte []idarr=new byte[50];
			idarr = diskid.getBytes();
			for(index=0;index<idarr.length;index++){
					Earray[index]=idarr[index];
			}
			
		//	System.out.println("@" + index + "Earray len :" + Earray.length + "\nidarray len : " + idarr.length);
			Earray[index++] = (byte)94;
			
	/*		for(i=0;i<index;i++){
				System.out.print(Earray[i]);
			}
				System.out.println("\n"+diskid);
			*/
			for(filesize=index;true;filesize++){
					temp=fin.read();
					if(temp==-1){
						break;
					}
					Earray[filesize]=(byte)temp;
					if(Earray[filesize]<0)
						Earray[filesize]+=256;
			}

				System.out.println("Size of the file before encryption ::" + filesize);
				int half = (filesize/2);
				filesize--;
				for(i=0;i<half;i++)
				{
					temp2=Earray[filesize-i];
					Earray[filesize-i]=Earray[i];
					Earray[i]=temp2;
				}
			/*	for(i=0;i<=filesize;i++){
					System.out.print((char)Earray[i]);
				}*/
				System.out.println("File encrypted.");
		}
		catch(Exception e){
			System.out.println("i don't know why...."+e);
		}
	}
}