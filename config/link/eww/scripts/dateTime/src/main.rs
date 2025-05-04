use gtk4::subclass::application;
use gtk4::{self as gtk, Button};
use gtk::prelude::*;
use gtk::{Box, Orientation, Statusbar, Window, glib, Application, ApplicationWindow};
use wayland_client::protocol::{wl_compositor, wl_seat, wl_surface, wl_registry};
use wayland_client::{Connection, Dispatch, EventQueue};

const APP_ID: &str = "org.gtk_rs.HelloWorld1";

fn main() -> glib::ExitCode {
    let app = Application::builder().application_id(APP_ID).build();

    app.connect_activate(build_ui);
    app.run()
}

fn build_ui(app: &Application) {
    let margin = 250;
    let button = Button::builder()
        .label("Press me!")
        .margin_top(margin)
        .margin_bottom(margin)
        .margin_start(margin)
        .margin_end(margin)
        .build();
    button.connect_clicked(|button| {
        button.set_label("Hello World");
    });

    let window = ApplicationWindow::builder()
        .application(app)
        .title("My GTK App")
        .child(&button)
        .build();

    window.present();
}