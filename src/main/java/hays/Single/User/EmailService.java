package hays.Single.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;

@Service
public class EmailService{

    @Autowired
    private JavaMailSender mailSender;

    public void sendEmail(String email, String resetPasswordLink) throws MessagingException, UnsupportedEncodingException {
        MimeMessage mesaage = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mesaage);
        helper.setFrom("shreyaagrawal1312@gmail.com", "Single Point");
        helper.setTo(email);

        String subject = "Here is the link to reset your password";

        String content = resetPasswordLink
                +"<p><b><a href=\"" + resetPasswordLink +"\">Change my password</a><b></p>";

        helper.setSubject(subject);
        helper.setText(content, true);
        mailSender.send(mesaage);


    }
}
