#include <gpio.h>
#include <terminal.h>
#include <line_camera.h>
#include <line_position.h>
#include <sample_timer.h>
#include <pid.h>

LinePostion line_position;

int main()
{
  terminal << "\n\ninit done\n";

  SampleTimer timer(50);

  while (1)
  {
    timer.wait();
    line_position.read();
    line_position.process();
    line_position.compute_line_position();


    for (unsigned int i = 0; i < line_position.pixels.size(); i+=2)
      if (line_position.pixels[i] > 0)
        terminal << "1";
      else
        terminal << "0";

    terminal << "\n";
    terminal << "pos = " << line_position.get() << "\n";

  }

  return 0;
}
