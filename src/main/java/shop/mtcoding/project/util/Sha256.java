package shop.mtcoding.project.util;

import java.security.MessageDigest;
// 메세지 다이제스트는 입력 데이터의 고정된 길이의 바이트 배열
public class Sha256 {
    public static String encode(String password1) {
        String password = "salt" + password1;
        String SHA = "";
        try {
            MessageDigest sh = MessageDigest.getInstance("SHA-256");
            sh.update(password.getBytes()); // 데이터 추가
            byte bytes[] = sh.digest(); // 현재 까지의 다이제스트를 계산
            StringBuffer sb = new StringBuffer();
            for (byte b : bytes) {
                sb.append(String.format("%02x", b));
                // sb.append(Integer.toString((b & 0xff) + 0x100, 16).substring(1));
            }
            SHA = sb.toString();

        } catch (Exception e) {
            e.printStackTrace();
            SHA = null;
        }
        return SHA;
    }
}
