import java.util.Arrays;
import java.util.stream.LongStream;

public class CommentsCounter {

    long countComments(long id, String from, String to){

        long idCounter = LongStream
                .of(id)
                .count();

        long fromCounter = Arrays
                .asList(from)
                .stream()
                .count();

        long toCounter = Arrays.asList(from)
                .stream()
                .count();

        long megaCounter = idCounter + fromCounter + toCounter;

        return megaCounter;
    }
}