import java.io.*;
import java.net.*;

public class ServeurTCP3
{
	public static void main( String args[] ) throws Exception
	{
		ServerSocket socketserver = new ServerSocket(2016);
		while(true)
		{
			System.out.println("serveur en attente");
			Socket socket = socketserver.accept();
			System.out.println("Connexion d’un client");
			DataInputStream dIn = new DataInputStream(socket.getInputStream());
			DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
			String msg = dIn.readUTF();
			System.out.println("Message : " + msg);
//			socket.close();
//			socketserver.close();

			String rev = new StringBuilder ( msg ) . reverse ( ) . toString ( ) ;
			dOut.writeUTF(rev);
			socket.close();
		}
		
	}
}
