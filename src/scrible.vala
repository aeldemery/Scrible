 using Gtk;

 
 public class MyApp : Gtk.Application {

    private About m_about_dialog;

     public MyApp () {
         Object (
         application_id: "com.github.aeldemery.Scrible",
         flags: ApplicationFlags.FLAGS_NONE
         );

     }

     protected override void activate () {
         var main_window = new Gtk.ApplicationWindow (this);

         m_about_dialog = new About();

         main_window.default_height = 600;
         main_window.default_width = 800;
         main_window.set_position(WindowPosition.CENTER);
         main_window.title = _("Hello World");

         var grid = new Gtk.Grid();
         grid.orientation = Gtk.Orientation.VERTICAL;

         var label_hello = new Gtk.Label(_("Hello World!"));


         var btn = new Button();
         btn.clicked.connect(()=> {
            m_about_dialog.present();
         });

         grid.add (label_hello);
         grid.add(btn);

         main_window.add(grid);
         main_window.show_all ();
     }

     public static int main (string[] args) {
         var app = new MyApp ();
         return app.run (args);
     }
}
