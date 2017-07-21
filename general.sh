# Nvidia temperature
sudo nvidia-smi -q -d TEMPERATURE

# v4l2loopback ffmpeg screenshot/ desktop grab
ffmpeg -f x11grab -r 60 -s 1366x768 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video1
ffmpeg -re -loop 1 -i mandelbrot-5000.png -r 20 -vcodec rawvideo -pix_fmt yuv420p -f v4l2 /dev/video1

# remove reduntant dependencies
sudo pacman -Rns $(pacman -Qqtd)

# Remove everything on Twitch except the player
$('.dynamic-player.js-player').appendTo('body').css({
	height: '100%',
	position: 'relative',
	top: '30px'
})
$('body').children().not('.dynamic-player.js-player').remove()

# Remove everything on Youtube except the player
var player = $('.html5-video-player'),
	video = $('video');

$('body').appendChild(player);
$('body').style.overflow = 'hidden';
$('.ytp-chrome-bottom').remove();

var children = $('body').children;
for (var i = 1; i < children.length - 1; ++ i) {
	children[i].remove();
}

video.className = "";
video.style.width = '100%';
video.style.height = '90%';

window.onresize = function () {
	video.style.width = '100%';
	video.style.height = '90%';
}

# For each input, test and compare outputs
for f in test/inputs/*.txt; do echo $f; ./simulate.sh $f > output_tz/${f#test/inputs}.out; done
for f in output_tz/*.out; do diff -s $f ~/Downloads/output_tz/${f#output_tz/}; done

# inotify limit watches
sudo sysctl fs.inotify.max_user_watches=

# watch stuff repeatedly
watch 'dmesg | tail -50'

# battery life
upower -i /org/freedesktop/UPower/devices/battery_BAT0

# sed remove color codes
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g"

# virtual surround sound
pactl load-module module-virtual-surround-sink sink_name=vsurround1003 hrir=~/temp/pa_surround/hrir_listen/hrirs/hrir-1045.wav sink_properties=device.description=VirtualSurround_1045

# backup w/ tar
tar --exclude='misc/shotophop' --exclude='./SteamGames' -zcvf fast_storage.tar.gz *
tar --exclude='./.gradle' --exclude='./vscode' --exclude='./projects/python_virtualenv' --exclude='./temp' --exclude='./projects/drooble' --exclude='./VirtualBox VMs' --exclude='./Downloads' --exclude='./npm' --exclude='./node_modules' --exclude='./.arduino15' --exclude='./.npm' --exclude='./.android' --exclude='./.cache' --exclude='./.cordova' --exclude='./.cabal' --exclude='./.gem' --exclude='./.ionic' --exclude='./.tuxguitar-1.4' --exclude='.wine' --exclude='.local/share/Steam' --exclude='./.local/share/Trash' --exclude='./.lesshst' --exclude='./.steampath' --exclude='./fast_storage' --exclude='./.swt' --exclude='./.audacity-data' --exclude='include4eto.tar.gz' -uvf include4eto.tar.gz .

# tar preview
tar -tvf file

# tar archive
tar -czvf archive folder

# edinburgh dice longjob
 (echo "YourDicePassword" | nohup longjob -28day -c 'nice yourCommandHere' ) &
