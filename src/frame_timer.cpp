#include "frame_timer.h"

#include <bx/timer.h>

FrameTimer::FrameTimer(FramedObj* framed, double dt)
{
    m_current_time = bx::getHPCounter();
    m_accumulator = 0.;
    m_t = 0.0;
    m_dt = dt;
    m_framed = framed;
}

void FrameTimer::update()
{
    double new_time = bx::getHPCounter();
    double frame_time = new_time - m_current_time;
    if ( frame_time > 0.25 )
        frame_time = 0.25;
    m_current_time = new_time;

    m_accumulator += frame_time;

    while ( m_accumulator >= m_dt )
    {
        m_framed->step(m_t, m_dt);

        m_t += m_dt;
        m_accumulator -= m_dt;
    }
}

