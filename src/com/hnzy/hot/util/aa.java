package com.hnzy.hot.util;

import java.util.concurrent.Executors;

import org.jinterop.dcom.common.JIException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.da.AccessBase;
import org.openscada.opc.lib.da.AutoReconnectController;
import org.openscada.opc.lib.da.DataCallback;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.ItemState;
import org.openscada.opc.lib.da.Server;
import org.openscada.opc.lib.da.SyncAccess;




public class aa {
	public static void main(String[] args) throws Exception {
        // create connection information
		// 连接信息
		ConnectionInformation ci=OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server ( ci, Executors.newSingleThreadScheduledExecutor () );
 
        // 使用MatrikonOPC Server的配置
        // ci.setClsid("F8582CF2-88FB-11D0-B850-00C0F0104305"); // MatrikonOPC的注册表ID，可以在“组件服务”里看到
        // final String itemId = "u.u";    // 项的名字按实际
 
        // 使用KEPServer的配置7BC0CC8E-482C-47CA-ABDC-0FE7F9C6E729
        ci.setClsid("7BC0CC8E-482C-47CA-ABDC-0FE7F9C6E729"); // KEPServer的注册表ID，可以在“组件服务”里看到
        String itemIdArr[] = {"吉利.教育局站.读数据.A相电流值"}; // This is where I would have an array of all items
        // create a new server
//        final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
        AutoReconnectController controller = new AutoReconnectController(server);

        try {
            controller.connect();
            final AccessBase access = new SyncAccess(server, 5000);
            while(true){
                for(final String str : itemIdArr){
                    access.addItem(str, new DataCallback() {
                        @Override
                        public void changed(Item item, ItemState state) {
                            // Building a JSON string with value recieved
                            String record = "[ {" +"\""+"name"+"\" :\""+str + "\",\""+"timestamp"+"\" :"+ state.getTimestamp().getTime().getTime()+ ",\""+"value"+"\" : "  +",\"tags\":{\"test\":\"test1\"}} ]";
                            System.out.println(record);
                            try {
								Object jarr=item.read(true).getValue().getObject();
								System.out.println("jarr--------"+jarr);
							} catch (JIException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
                        }
                    });
                }
                // start reading
                access.bind();
                Thread.sleep(5000);
                access.unbind();
            }

            // stop reading
           
        } catch (final JIException e) {
            //System.out.println(String.format("%08X: %s", e.getErrorCode(), server.getErrorMessage(e.getErrorCode())));
        }
    }

//    private void restpost(String record) throws ClientProtocolException, IOException{
//
//        HttpClient client = new DefaultHttpClient();
//        HttpPost post = new HttpPost("http://localhost/myapi/datapoints");
//        StringEntity input = new StringEntity(record);
//        post.setEntity(input);
//        HttpResponse response = client.execute(post);
//        System.out.println("Post success::"+record);
//    }
}
