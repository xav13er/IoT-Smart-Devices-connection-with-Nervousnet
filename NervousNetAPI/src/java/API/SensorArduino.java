/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package API;

import SupportingClasses.SensorUploadProtos.SensorUpload;
import SupportingClasses.SensorUploadProtos.SensorUpload.SensorData;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Calendar;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Xavier
 */
@WebService(serviceName = "SensorArduino")
public class SensorArduino {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "saveSensor")
    public String saveSensor(@WebParam(name = "X") float X, @WebParam(name = "Y") float Y, @WebParam(name = "Z") float Z) 
    {
        
        System.out.println("ENTROU!!!");
        long HUUID = 0x11223344;
	long LUUID = 0x55667788;
	long SENSOR_ID = 0; // Currently accelerometer
        
        SensorUpload.Builder sub = SensorUpload.newBuilder();
        sub.setHuuid(HUUID);
        sub.setLuuid(LUUID);
        sub.setSensorId(SENSOR_ID);

        


        SensorData.Builder sdb = SensorData.newBuilder();
        // Equispaced measurement plots
        sdb.setRecordTime(Calendar.getInstance().getTimeInMillis());
        // Create some random test data
        //sdb.addValueFloat(((float) Math.random()));
        //sdb.addValueFloat(((float) 0.f));
        //sdb.addValueFloat(((float) Math.random()));
        sdb.addValueFloat(X);
        sdb.addValueFloat(Y);
        sdb.addValueFloat(Z);

        sub.addSensorValues(sdb.build());


        sub.setUploadTime(Calendar.getInstance().getTimeInMillis());
        SensorUpload sensorupload = sub.build();

        // Upload test

        try {
                Socket socket = new Socket("192.168.2.2", 25600);
                OutputStream os = socket.getOutputStream();
                sensorupload.writeDelimitedTo(os);
                os.flush();
                os.close();
                socket.close();
        } catch (UnknownHostException e) {
                e.printStackTrace();
                return "False";
        } catch (IOException e) {
                e.printStackTrace();
                return "False";
        }
        
        return "True";
        
    }
}
