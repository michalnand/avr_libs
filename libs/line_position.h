#ifndef _LINE_POSITION_H_
#define _LINE_POSITION_H_

#include "line_camera.h"

#define LINE_KERNEL_SIZE  ((unsigned int)32)

class LinePostion :public LineCamera
{
  private:
    int result;
    int32_t confidence;
    Array<int, LINE_KERNEL_SIZE> kernel;

  public:
    LinePostion();
    ~LinePostion();

    void compute_line_position();
    int get();
    int32_t get_confidence();

  private:
    int32_t process_convolution(unsigned int offset);

};

#endif
