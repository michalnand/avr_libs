#include "line_position.h"


LinePostion::LinePostion()
{
  unsigned int line_width = kernel.size()/2;
  unsigned int tmp = kernel.size() - line_width;

  kernel.set(1);

  for (unsigned int i = tmp; i < kernel.size()-tmp; i++)
    kernel[i] = -1;
}

LinePostion::~LinePostion()
{

}

void LinePostion::compute_line_position()
{
  int32_t conv_res_max = -100000000;

  for (unsigned int i = 0; i < pixels.size(); i++)
  {
    int32_t conv_res = process_convolution(i);
    if (conv_res > conv_res_max)
    {
      conv_res_max = conv_res;
      result = i;
    }
  }
}

int LinePostion::get()
{
  return result;
}


int32_t LinePostion::process_convolution(unsigned int offset)
{
  int32_t result = 0;

  for (unsigned int i = 0; i < kernel.size(); i++)
    if ((i + offset) < pixels.size())
      result+= kernel[i]*pixels[i + offset];

  return result;
}