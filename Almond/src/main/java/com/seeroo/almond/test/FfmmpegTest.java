package com.seeroo.almond.test;

import java.io.IOException;

public class FfmmpegTest {

	public static void main(String[] args) throws IOException {
		String cmd = "F:\\ffmpeg\\bin\\ffmpeg.exe -i F:\\stream\\1.mp4 -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls F:\\stream\\test10\\video.m3u8";
		
		try {
			System.out.println("ffmpeg segment 생성 시작");
			Runtime.getRuntime().exec(cmd);
			System.out.println("ffmpeg segment 생성 끝");
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		

	}

}
