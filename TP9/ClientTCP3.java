import java.io.*;
import java.net.*;

public class ClientTCP3
{
	public static void main(String args[]) throws Exception
	{
		if (args.length == 0)
		{
			System.out.println("Usage: java ClientTCP3 <message>");
			return;
		}

		Socket socket = new Socket("localhost", 2016);
		DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
		DataInputStream dIn = new DataInputStream(socket.getInputStream());

		dOut.writeUTF(args[0]); // Envoi du message reçu en argument

		String msg = dIn.readUTF(); // Lecture de la réponse inversée
		System.out.println("Message reçu (inversé) : " + msg);

		socket.close();
	}
}

