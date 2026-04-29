extends Control

@onready var kick_audio = $KickAudio
@onready var snare_audio = $SnareAudio
@onready var hihat_audio = $HiHatAudio
@onready var clap_audio = $ClapAudio

@onready var kick_button = $PadGrid/TheKickPad
@onready var snare_button = $PadGrid/TheSnarePad
@onready var hihat_button = $PadGrid/TheHiHatPad
@onready var clap_button = $PadGrid/TheClapButton

@onready var volume_slider = $ControlsBox/VolumeSlider
@onready var pitch_slider = $ControlsBox/PitchSlider
@onready var random_beat_button = $ControlsBox/RandomBeat

func _ready():
	kick_button.pressed.connect(_on_kick_pressed)
	snare_button.pressed.connect(_on_snare_pressed)
	hihat_button.pressed.connect(_on_hihat_pressed)
	clap_button.pressed.connect(_on_clap_pressed)
	random_beat_button.pressed.connect(_on_random_beat_pressed)

	volume_slider.value_changed.connect(_on_volume_changed)
	pitch_slider.value_changed.connect(_on_pitch_changed)

	_on_volume_changed(volume_slider.value)
	_on_pitch_changed(pitch_slider.value)

func flash_button(button: Button):
	var original_modulate = button.modulate
	button.modulate = Color(1.0, 0.0, 0.6) # bright pink
	await get_tree().create_timer(0.15).timeout
	button.modulate = original_modulate

func _on_kick_pressed():
	kick_audio.play()
	flash_button(kick_button)

func _on_snare_pressed():
	snare_audio.play()
	flash_button(snare_button)

func _on_hihat_pressed():
	hihat_audio.play()
	flash_button(hihat_button)

func _on_clap_pressed():
	clap_audio.play()
	flash_button(clap_button)

func _on_volume_changed(value):
	kick_audio.volume_db = value
	snare_audio.volume_db = value
	hihat_audio.volume_db = value
	clap_audio.volume_db = value

func _on_pitch_changed(value):
	kick_audio.pitch_scale = value
	snare_audio.pitch_scale = value
	hihat_audio.pitch_scale = value
	clap_audio.pitch_scale = value

func _on_random_beat_pressed():
	play_random_beat()

func play_random_beat():
	for i in range(8):
		var choice = randi() % 4

		if choice == 0:
			_on_kick_pressed()
		elif choice == 1:
			_on_snare_pressed()
		elif choice == 2:
			_on_hihat_pressed()
		else:
			_on_clap_pressed()

		await get_tree().create_timer(0.25).timeout

func _input(event):
	if event.is_action_pressed("kick"):
		_on_kick_pressed()
	elif event.is_action_pressed("snare"):
		_on_snare_pressed()
	elif event.is_action_pressed("hihat"):
		_on_hihat_pressed()
	elif event.is_action_pressed("clap"):
		_on_clap_pressed()
