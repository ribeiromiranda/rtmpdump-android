package br.com.belocodigo.rtmpdump;

public class RTMP {

    static {
    	System.loadLibrary("rtmp");
        System.loadLibrary("rtmpdump");
    }
	
	public static native void init(String url, String dest);
	public static native void stop();
}
