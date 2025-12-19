import backend.backend;
import frontend.frontend;

with entry:__main__ {
    backend.start_server();
    frontend.launch_ui();
}