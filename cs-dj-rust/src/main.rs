extern crate ears;
extern crate gtk;
use gtk::prelude::*;
use gtk::{Grid, ButtonsType, DialogFlags, MessageType, MessageDialog, Window, WindowType, Label};
use gtk::Builder;
use std::rc::Rc;
use std::sync::Mutex;
use ears::Music;
use ears::AudioController;
use std::net::TcpStream;
use std::io::Read;

fn main() {
    let voter_address = "127.0.0.1:8080";
    gtk::init().expect("Failed to initialize GTK.");


    let builder = Builder::new_from_file("ui.glade");
    let vote_window: Grid = builder.get_object("vote_window").expect("vote_window");
    let votes2: Label = builder.get_object("votes2").expect("votes2");
    let window = Window::new(WindowType::Toplevel);

    window.add(&vote_window);
    window.show_all();

    vote_window.show_all();


    let state = Rc::new(Mutex::new(State::Playing));
    let is_playing = Rc::new(Mutex::new(true));
    let mut music = Music::new("/tmp/shurk.ogg").unwrap();
    music.play();
    gtk::idle_add(move || {
        let mut state = state.lock().unwrap();
        *state = match *state {
            State::Playing => {
                if music.is_playing() {
                    State::Playing
                }
                else {
                    State::CheckVotes
                }
            },
            State::CheckVotes => {
                let mut voter = TcpStream::connect(voter_address).expect("voter not reachable");
                let mut vote: [u8; 1] = [0];
                let next_song = "/tmp/shurk.ogg";
                match voter.read(&mut vote) {
                    Ok(1) => {
                        println!("Voted for song {}", vote[0]);
                        music = Music::new("/tmp/shurk.ogg").unwrap();
                        music.play();
                        State::Playing
                    },
                    _ => panic!("Vote failed")
                }
            }
        };
        gtk::Continue(true)
    });


    gtk::main();
}

enum State {
    Playing,
    CheckVotes,
}