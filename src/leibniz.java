import java.nio.charset.Charset;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.charset.StandardCharsets;

public class leibniz {
    static String readFile(String path, Charset encoding) throws IOException {
        byte[] encoded = Files.readAllBytes(Paths.get(path));
        return new String(encoded, encoding);
    }

    public static void main(String[] args) {
        String data = "";

        try {
            data = readFile("rounds.txt", StandardCharsets.UTF_8);
        } catch (IOException err) {
            System.out.println("Couldn't read file:\n" + err.getMessage());
        }

        int rounds = Integer.parseInt(data.replace("\n", "").replace("\r", ""));

        double pi = 1;
        double x = 1;

        for (int i = 2; i < rounds + 2; i++) {
            x *= -1;
            pi += (x / (2 * i - 1));
        }

        pi *= 4;
        System.out.println(pi);
    }
}
