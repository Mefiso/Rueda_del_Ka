#!/usr/bin/ruby

require 'gtk3'

class RubyKa < Gtk::Window

	def initialize
		super

		init_ui
	end

	def init_ui
		
		#General config		
		set_border_width 10
		override_background_color :normal, Gdk::RGBA::new(0.2, 0.2, 0.2, 1)
		set_title "La rueda del Ka"
		signal_connect "destroy" do
			Gtk.main_quit
		end

		set_default_size 400, 125
		set_window_position :center

		#Box layout manageent
		vbox = Gtk::Box.new :vertical, 20
		hbox = Gtk::Box.new :horizontal, 10

		label = Gtk::Label.new
		label.set_markup("<span foreground='green'>Ka. El Ka es una rueda, cuyo único propósito es girar, y al final vuelve al mismo lugar donde empieza. Lo que haces vuelve a perseguirte.\n\nEl tiempo es un rostro en el agua.\n\nSi es el Ka, vendrá como el viento, y tus planes resistirán ante él no más que un granero ante un ciclón.\n\n</span><span foreground='white'>¿Cual es el número de tu ka-tet?</span>")
		label.set_justify(Gtk::JUSTIFY_CENTER)
		label.set_wrap(true)
		vbox.pack_start label, :expand => false, :fill=> false, :padding => 3
		
		entry = Gtk::Entry.new
		entry.signal_connect "activate" do |w, e|
			on_key_release w, label
		end
 		vbox.pack_start entry, :expand => false, :fill=> false, :padding => 5
		
		#Buttons
		ok_button = Gtk::Button.new( :label => "Gracias, sai")
		ok_button.set_size_request 70, 30
		ok_button.signal_connect("clicked") do
			on_ok_button_clicked entry, label
		end
		reset_button = Gtk::Button.new( :label => "Discordia")
		reset_button.set_size_request 70, 30
		reset_button.signal_connect("clicked") do 
			on_reset_clicked label
		end
		hbox.add reset_button
		hbox.add ok_button
		
		#horizontal alignment
		halign = Gtk::Alignment.new 0.5, 0, 0, 0
		halign.add hbox

		vbox.pack_start halign, :expand => false, :fill=> false, :padding => 0
		add vbox
		show_all
		
	end

	def on_key_release sender, label
		label.set_markup("<span foreground='green'>"+sender.text+"</span>")
	end
	
	def on_ok_button_clicked entry, label
		label.set_markup("<span foreground='green'>"+entry.text+"</span>")
	end

	def on_reset_clicked label
		label.set_markup("<span foreground='green'>Ka. El Ka es una rueda, cuyo único propósito es girar, y al final vuelve al mismo lugar donde empieza. Lo que haces vuelve a perseguirte.\n\nEl tiempo es un rostro en el agua.\n\nSi es el Ka, vendrá como el viento, y tus planes resistirán ante él no más que un granero ante un ciclón.\n\n</span><span foreground='white'>¿Cual es el número de tu ka-tet?</span>")
	end
end

#Gtk.init
	window = RubyKa.new
Gtk.main
