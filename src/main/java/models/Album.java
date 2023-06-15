package models;
import lombok.*;
import java.io.Serializable;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Album {
    private  int id;
    private String artist;
    private String albumName;
    private int releaseData;
    private String genre;
}
