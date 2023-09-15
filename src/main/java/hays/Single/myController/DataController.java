package hays.Single.myController;

import hays.Single.User.EmailService;
import hays.Single.User.UserRepo;
import hays.Single.User.UserService;
import hays.Single.User.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.MessagingException;
import java.io.FileInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Base64;

import static hays.Single.myController.PageController.generateToken;

@Controller
public class DataController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    UserService userService;

    @GetMapping("/UserRegistration")
    public String registerUser(){
        return "UserRegistration";
    }

    @Autowired
    EmailService emailService;

    public DataController(EmailService emailService) {
        this.emailService = emailService;
    }

    @PostMapping("/UserRegistration")
    public String addUser(@ModelAttribute("user") Users user)
    {
        //Users users = userRepo.findByEmail(user.getUsername()).get();
        String token = generateToken();
        user.setToken(token);
        userRepo.save(user);
        String s = "localhost:8082/update?token=";
        String resetPasswordLink = s+token;
        try {
            emailService.sendEmail(user.getUsername(), resetPasswordLink);
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        return "registerSuccess";
    }

    @GetMapping("/userProfile")
    public String profile(Authentication authentication, Model model){
        String username = authentication.getName();
        Users users = userRepo.findByEmail(username).get();
        model.addAttribute("s", users);
        String s =Base64.getEncoder().encodeToString(users.getImage());
        model.addAttribute("abc", s);
        return "userProfile";
    }

    @GetMapping("/profileImage")
    public String saveImage(){
        return "profileImage";
    }

    @PostMapping("/profileImage")
    public String saveImage(@RequestParam("image") MultipartFile image, Authentication authentication){
       String username = authentication.getName();
        try(FileInputStream fileInputStream = (FileInputStream) image.getInputStream()) {
            byte[] arr = new byte[fileInputStream.available()];
            fileInputStream.read(arr);
            Users users = userRepo.findByEmail(username).get();
            users.setImage(arr);
            userRepo.save(users);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return "userProfile";
    }

    @GetMapping("/uploadCSV")
    public String saveFile(){
        return "uploadCSV";
    }

    @PostMapping("/uploadCSV")
    public String saveFile(@RequestParam("file") MultipartFile file){

        userService.saveUserData(file);

        return "uploadCSV";
    }

}

