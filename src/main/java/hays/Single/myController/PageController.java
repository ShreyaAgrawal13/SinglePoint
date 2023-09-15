package hays.Single.myController;

import hays.Single.User.ChangeFormData;
import hays.Single.User.EmailService;
import hays.Single.User.UserRepo;
import hays.Single.User.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;
import java.util.Base64;
import java.util.Optional;

@Controller
public class PageController {
    @Autowired
    UserRepo userRepo;

    @Autowired
    private JavaMailSender mailSender;
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @GetMapping("/login")
    public String loginPage(){
        return "login";
    }


    @GetMapping("/home")
    public String home(Authentication authentication, Model model) {

        String username = authentication.getName();
        Users users = userRepo.findByEmail(username).get();
        model.addAttribute("user", users);
        return "home";
    }

    @GetMapping("/update")
    public String update(@RequestParam(required = false) String token, Model model){
        ChangeFormData changeFormData = new ChangeFormData();
        changeFormData.setToken(token);
        model.addAttribute("f",changeFormData);

        return "update";
    }

    public PageController(BCryptPasswordEncoder bCryptPasswordEncoder, EmailService emailService) {
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.emailService = emailService;
    }

    @PostMapping("/update")
    public String edit(@ModelAttribute("changeFormData")ChangeFormData changeFormData){
        Users users = userRepo.findByToken(changeFormData.getToken());
        users.setPassword(bCryptPasswordEncoder.encode(changeFormData.getPassword()));
        users.setToken(null);
        userRepo.save(users);
        return "login";
    }

    @GetMapping("/forget")
    public String enterEmail(){
        return "forget";
    }

    @Autowired
    EmailService emailService;

    @PostMapping("/forget")
    public String enterEmail(@ModelAttribute("changeFormData")ChangeFormData changeFormData) {
        Users users = userRepo.findByEmail(changeFormData.getUsername()).get();
        String token = generateToken();
        users.setToken(token);
        userRepo.save(users);
        String s = "localhost:8082/update?token=";
        String resetPasswordLink = s + token;
        try {
            emailService.sendEmail(users.getUsername(), resetPasswordLink);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        return "forget";
    }

    @Bean
    public static String generateToken() {
        byte[] randomBytes = new byte[20];
        new SecureRandom().nextBytes(randomBytes);
        return Base64.getUrlEncoder().withoutPadding().encodeToString(randomBytes);
    }


}
