#include <gpio.h>
#include <terminal.h>
#include <line_camera.h>
#include <sample_timer.h>
#include <pid.h>

LineCamera camera;

int main()
{
  terminal << "\n\ninit done\n";

  SampleTimer timer(50);

  while (1)
  {
    timer.wait();
    camera.read();
    camera.process();

    for (unsigned int i = 0; i < camera.pixels.size(); i+=2)
      if (camera.pixels[i] > 0)
        terminal << "1";
      else
        terminal << "0";

    terminal << "\n";
  }

  return 0;
}
