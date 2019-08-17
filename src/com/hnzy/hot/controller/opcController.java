package com.hnzy.hot.controller;

import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.jinterop.dcom.common.JIException;
import org.jinterop.dcom.core.JIVariant;
import org.openscada.opc.lib.common.AlreadyConnectedException;
import org.openscada.opc.lib.common.ConnectionInformation;
import org.openscada.opc.lib.common.NotConnectedException;
import org.openscada.opc.lib.da.AddFailedException;
import org.openscada.opc.lib.da.DuplicateGroupException;
import org.openscada.opc.lib.da.Group;
import org.openscada.opc.lib.da.Item;
import org.openscada.opc.lib.da.Server;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnzy.hot.service.OpcService;
import com.hnzy.hot.util.DUtil;
import com.hnzy.hot.util.OPCConfiguration;
import com.hnzy.hot.util.XUtil;

import net.sf.json.JSONObject;

@RequestMapping("OpcCon")
@Controller
public class opcController {

	public boolean isNumeric(String value) {
		Pattern pattern = Pattern.compile("-?[0-9]+.*[0-9]*");
		Matcher isNum = pattern.matcher(value);
		if (!isNum.matches()) {
			return false;
		}
		return true;
	}

	@Autowired
	OpcService opcService;

	// 定时调用数据
	@RequestMapping("xtkzSj")
	@ResponseBody
	public JSONObject xtkzSj(String hrz)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		System.out.println(hrz);
		String[] d = DUtil.dsj(hrz);

		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JIException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (AlreadyConnectedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		for (Entry<String, Item> temp : map.entrySet()) {
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				String id = temp.getValue().getId();
				Object value = temp.getValue().read(true).getValue().getObject();
				System.out.println("------------value----------" + value);
				String[] a = id.split("读数据.");
				String key = a[1];
				if (key.contains("#")) {
					key = key.replace("#", "");
				}
				boolean b = isNumeric(String.valueOf(value));
				System.out.println("------b---" + b);
				if (b == false) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					value = temp.getValue().read(true).getValue().getObject();
				}
				String s = String.format("%.1f", value);
				dmap.put(key, s);
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		server.dispose();

		hrz = hrz.replace("吉利.", "");
		hrz = hrz.replace(".读数据.", "");
		dmap.put("hrz", hrz);
		json.put("map", dmap);
		return json;
	}

	@RequestMapping("csxs")
	@ResponseBody
	public JSONObject csxs(String hrz)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		System.out.println(hrz);
		String[] d = XUtil.csxs(hrz);

		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JIException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (AlreadyConnectedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		for (Entry<String, Item> temp : map.entrySet()) {
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				String id = temp.getValue().getId();
				Object value = temp.getValue().read(true).getValue().getObject();
				System.out.println("------------value----------" + value);
				String[] a = id.split("写数据.");
				String key = a[1];
				if (key.contains("#")) {
					key = key.replace("#", "");
				}
				if (key.contains("时间")) {
					value = temp.getValue().read(true).getValue().getObjectAsUnsigned().getValue();
				}
				boolean b = isNumeric(String.valueOf(value));
				System.out.println("------b---" + b);
				if (b == false) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					value = temp.getValue().read(true).getValue().getObject();
				}
				// String s=String.format("%.1f",value);
				dmap.put(key, value);
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		server.dispose();

		hrz = hrz.replace("吉利.", "");
		hrz = hrz.replace(".写数据.", "");
		dmap.put("hrz", hrz);
		json.put("map", dmap);
		return json;
	}

	@RequestMapping("ssqx")
	@ResponseBody
	public JSONObject ssqx(String hrz)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		System.out.println(hrz);
		String[] d = DUtil.ssqx(hrz);

		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JIException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (AlreadyConnectedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		for (Entry<String, Item> temp : map.entrySet()) {
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				String id = temp.getValue().getId();
				Object value = temp.getValue().read(true).getValue().getObject();
				System.out.println("------------value----------" + value);
				String[] a = id.split("读数据.");
				String key = a[1];
				if (key.contains("#")) {
					key = key.replace("#", "");
				}

				boolean b = isNumeric(String.valueOf(value));
				System.out.println("------b---" + b);
				if (b == false) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					value = temp.getValue().read(true).getValue().getObject();
				}
				String s = String.format("%.1f", value);
				dmap.put(key, s);
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		server.dispose();

		hrz = hrz.replace("吉利.", "");
		hrz = hrz.replace(".读数据.", "");
		dmap.put("hrz", hrz);
		json.put("map", dmap);
		return json;
	}

	// 参数设置
	@RequestMapping("cssz")
	@ResponseBody
	public JSONObject cssz(String name, String id, Float val, String hrz)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		name = new String(name.getBytes("ISO-8859-1"), "utf-8");
		hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		String names = hrz + name;
		String[] d = { names };
		System.out.println(names);
		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		Object value;
		try {
			server.connect();
			group = server.addGroup("groupcss");
			group.setActive(true);
			map = group.addItems(d);

			Map<String, Item> item;
			item = group.addItems(d); 
			for (String s : item.keySet()) {
				Item it = item.get(s);
				if (s.contains("时间")) {
					int i = val.intValue();

					final JIVariant values = new JIVariant(i);
					it.write(values);
					Thread.sleep(500);
				} else {

					final JIVariant values = new JIVariant(val);
					it.write(values);
					Thread.sleep(500);
				}
				// 循环写

				// ------------------------------

				if (s.contains("时间")) {
					value = it.read(true).getValue().getObjectAsUnsigned().getValue();
					boolean b = isNumeric(String.valueOf(value));

					if (b == false) {
						try {
							Thread.sleep(500);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						value = it.read(true).getValue().getObjectAsUnsigned().getValue();

						value = String.format("%.1f", value);
					}

				} else {
					value = it.read(true).getValue().getObject();
				}
				json.put("value", value);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		json.put("id", id);
		server.dispose();
		return json;
	}

	@RequestMapping("sbxs")
	@ResponseBody
	public JSONObject sbxs(String d[])
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		System.out.println(d[1]);
		for (int i = 0; i < d.length; i++) {
			d[i] = new String(d[i].getBytes("ISO-8859-1"), "utf-8");
		}
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());

		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JIException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (AlreadyConnectedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		for (Entry<String, Item> temp : map.entrySet()) {
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				String id = temp.getValue().getId();
				Object value = temp.getValue().read(true).getValue().getObject();
				System.out.println("------------value----------" + value);

				String string = id.replace("吉利.教育局站.", "").replace("写数据.", "").replace("读数据.", "").replace("写状态.", "")
						.replace("读状态.", "");

				if (string.contains("#")) {
					string = string.replace("#", "");
				}
				if (string.contains("时间")) {
					value = temp.getValue().read(true).getValue().getObjectAsUnsigned().getValue();
				}
				boolean b = isNumeric(String.valueOf(value));
				System.out.println("------b---" + b);
				if (b == false) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					value = temp.getValue().read(true).getValue().getObject();
				}

				dmap.put(string, value);
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		server.dispose();

		json.put("map", dmap);
		return json;
	}

	@RequestMapping("sbkz")
	@ResponseBody
	public JSONObject sbkz(String name, String val)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		name = new String(name.getBytes("ISO-8859-1"), "utf-8");

		String[] d = { name };
		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		Object value;
		try {
			server.connect();
			group = server.addGroup("groupcss");
			group.setActive(true);
			map = group.addItems(d);

			Map<String, Item> item;
			item = group.addItems(d);
			for (String s : item.keySet()) {
				Item it = item.get(s);

				final JIVariant values = new JIVariant(val);
				it.write(values);
				Thread.sleep(500);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		server.dispose();
		return json;
	}

	@RequestMapping("selQx")
	@ResponseBody
	public JSONObject selHistory(HttpServletRequest request, String hrz) throws UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		if (hrz != null) {
			hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		}
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("hrz", hrz);
		list = opcService.selQx(map);
		json.put("list", list);
		return json;

	}

	@RequestMapping("qxsj")
	@ResponseBody
	public JSONObject qxsj(String hrz)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		System.out.println(hrz);
		String[] d = DUtil.qxsj(hrz);

		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JIException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (AlreadyConnectedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		for (Entry<String, Item> temp : map.entrySet()) {
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				String id = temp.getValue().getId();
				Object value = temp.getValue().read(true).getValue().getObject();
				System.out.println("------------value----------" + value);
				String[] a = id.split("读数据.");
				String key = a[1];
				if (key.contains("#")) {
					key = key.replace("#", "");
				}
				boolean b = isNumeric(String.valueOf(value));
				System.out.println("------b---" + b);
				if (b == false) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					value = temp.getValue().read(true).getValue().getObject();
				}
				String s = String.format("%.1f", value);
				dmap.put(key, s);
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		server.dispose();

		hrz = hrz.replace("吉利.", "");
		hrz = hrz.replace(".读数据.", "");
		dmap.put("hrz", hrz);
		json.put("map", dmap);
		return json;
	}

	@RequestMapping("getHrzXx")
	@ResponseBody
	public JSONObject getHrzXx(HttpServletRequest request, String hrz) throws UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		if (hrz != null) {
			hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		}
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();

		list = opcService.getHrzXx(map);
		json.put("list", list);
		return json;

	}

	@RequestMapping("Insert")

	public String Insert(String hrz, String gsdd, String zlmc, String grqy, String Kxs, String shejimj, String shijimj,
			String dz, String bgsj, String rbdz, String lxr, String rblx) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("hrz", hrz);
		map.put("gsdd", gsdd);
		map.put("zlmc", zlmc);
		map.put("grqy", grqy);
		map.put("Kxs", Kxs);
		map.put("shejimj", shejimj);
		map.put("shijimj", shijimj);
		map.put("dz", dz);
		map.put("bgsj", bgsj);
		map.put("rbdz", rbdz);
		map.put("lxr", lxr);
		map.put("rblx", rblx);
		opcService.Insert(map);
		return "redirect:hrzxx.action";

	}

	@RequestMapping("Update")

	public String Update(String id, String gsdd, String zlmc, String grqy, String Kxs, String shejimj, String shijimj,
			String dz, String bgsj, String rbdz, String lxr, String rblx) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("gsdd", gsdd);
		map.put("zlmc", zlmc);
		map.put("grqy", grqy);
		map.put("Kxs", Kxs);
		map.put("shejimj", shejimj);
		map.put("shijimj", shijimj);
		map.put("dz", dz);
		map.put("bgsj", bgsj);
		map.put("rbdz", rbdz);
		map.put("lxr", lxr);
		map.put("rblx", rblx);
		map.put("id", id);
		opcService.Update(map);
		return "redirect:hrzxx.action";

	}

	@RequestMapping("Delete")
	@ResponseBody
	public JSONObject Delete(String id) {
		JSONObject json = new JSONObject();

		opcService.Delete(id);
		return json;
	}

	@RequestMapping("hrzxx")
	public String sssj() {
		return "hrz/hrzxx";
	}

	@RequestMapping("getbjxx")
	@ResponseBody
	public JSONObject getbjxx(HttpServletRequest request) throws UnsupportedEncodingException {
		JSONObject json = new JSONObject();

		List<Map<String, Object>> list = new ArrayList<>();

		list = opcService.getbjxx();
		json.put("list", list);
		return json;

	}

	@RequestMapping("getlsbjxx")
	@ResponseBody
	public JSONObject getlsbjxx(HttpServletRequest request, String hrz, String startTime, String endTime)
			throws UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		if (hrz != null) {
			hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		}
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("hrz", hrz);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		list = opcService.getlsbjxx(map);
		json.put("list", list);
		return json;

	}
	
	@RequestMapping("dbjc")
	@ResponseBody
	public JSONObject dbjc(HttpServletRequest request, String hrz, String startTime, String endTime)
			throws UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		if (hrz != null) {
			hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		}
		List<Map<String, Object>> list = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("hrz", hrz);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		list = opcService.dbjc(map);
		json.put("list", list);
		return json;

	}
	
	@RequestMapping("ryjk")
	@ResponseBody
	public JSONObject ryjk(String hrz)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		
		String[] d = DUtil.ryjk(hrz);

		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JIException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (AlreadyConnectedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		for (Entry<String, Item> temp : map.entrySet()) {
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				String id = temp.getValue().getId();
				Object value = temp.getValue().read(true).getValue().getObject();
				System.out.println("------------value----------" + value);
				String[] a = id.split("读数据.");
				String key = a[1];
				if (key.contains("#")) {
					key = key.replace("#", "");
				}
				boolean b = isNumeric(String.valueOf(value));
				System.out.println("------b---" + b);
				if (b == false) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					value = temp.getValue().read(true).getValue().getObject();
				}
				String s = String.format("%.1f", value);
				dmap.put(key, s);
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		server.dispose();

		hrz = hrz.replace("吉利.", "");
		hrz = hrz.replace(".读数据.", "");
		dmap.put("hrz", hrz);
		json.put("map", dmap);
		return json;
	}
	
	@RequestMapping("qhbc")
	@ResponseBody
	public JSONObject qhbc(String hrz)
			throws NotConnectedException, DuplicateGroupException, AddFailedException, UnsupportedEncodingException {
		JSONObject json = new JSONObject();
		
		ConnectionInformation ci = OPCConfiguration.getCLSIDConnectionInfomation();
		final Server server = new Server(ci, Executors.newSingleThreadScheduledExecutor());
		//hrz = new String(hrz.getBytes("ISO-8859-1"), "utf-8");
		
		String[] d = XUtil.qhbc(hrz);

		Map<String, Object> dmap = new HashMap<String, Object>();
		Map<String, Item> map = null;
		Group group = null;
		try {
			server.connect();
			group = server.addGroup("groupyx");
			group.setActive(true);
			map = group.addItems(d);
		} catch (IllegalArgumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (JIException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (AlreadyConnectedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		for (Entry<String, Item> temp : map.entrySet()) {
			try {
				Thread.sleep(10);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {
				String id = temp.getValue().getId();
				Object value = temp.getValue().read(true).getValue().getObject();
				System.out.println("------------value----------" + value);
				String[] a = id.split("写数据.");
				String key = a[1];
				if (key.contains("#")) {
					key = key.replace("#", "");
				}
				if (key.contains("时间")) {
					value = temp.getValue().read(true).getValue().getObjectAsUnsigned().getValue();
				}
				boolean b = isNumeric(String.valueOf(value));
				System.out.println("------b---" + b);
				if (b == false) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					value = temp.getValue().read(true).getValue().getObject();
				}
				// String s=String.format("%.1f",value);
				dmap.put(key, value);
			} catch (JIException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		server.dispose();

		hrz = hrz.replace("吉利.", "");
		hrz = hrz.replace(".写数据.", "");
		dmap.put("hrz", hrz);
		json.put("map", dmap);
		return json;
	}
}
