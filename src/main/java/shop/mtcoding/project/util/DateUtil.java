package shop.mtcoding.project.util;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class DateUtil {
    public static String format(Timestamp stamp) {
        return stamp.toLocalDateTime().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }

    public static long dDay(Timestamp stamp) {
        // LocalDate fromDate = LocalDate.of(2020, 8, 21);
        LocalDate fromDate = LocalDate.now();
        LocalDate toDate = LocalDate.parse(stamp.toLocalDateTime().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));

        // System.out.println(ChronoUnit.DAYS.between(fromDate, toDate));
        return ChronoUnit.DAYS.between(fromDate, toDate); // 시간 차
        // ChronoUnit -> LocalDate, LocalDateTime, Duration 등과 함께 사용되어 날짜 및 시간 연산을 수행
        // 시간 단위를 쉽게 다룰 수 있도록
    }
}