package hays.Single.User;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.sql.Date;

@Service
public class UserService implements UserDetailsService {
    private final static String USER_NOT_FOUND_MSG =
            "User with email %s not found";
    private UserRepo userRepo;

    public UserService(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    String line="";
    public void saveUserData(MultipartFile file){
        try {
            InputStreamReader br = new InputStreamReader(file.getInputStream());
            while((line= String.valueOf(br.read()))!=null){
                String  [] data = line.split(",");
                Users user = new Users();
                user.setEmployeeID(Long.valueOf(data[0]));
                user.setFirstName(data[1]);
                user.setMiddleName(data[2]);
                user.setLastName(data[3]);
                user.setEmail(data[4]);
                user.setDateOfJoining(Date.valueOf(data[5]));
                user.setJobTitle(data[6]);
                user.setProject(data[7]);
                user.setLeadManager(data[8]);
                user.setRole(data[9]);
                user.setGender(data[10]);
                userRepo.save(user);
            }
        }
        catch(FileNotFoundException e){
            System.out.println(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return userRepo.findByEmail(email)
                .orElseThrow(() ->
                        new UsernameNotFoundException(
                                String.format(USER_NOT_FOUND_MSG, email)));
    }
}
