#ifndef TIMER_H
#define TIMER_H

class FramedObj {
public:
    virtual void step(double t, double dt) = 0;
};

class FrameTimer
{
public:
    FrameTimer(FramedObj* framed, double dt);
    void update();

private:
    FramedObj *m_framed;
    double m_current_time, m_accumulator, m_t, m_dt;
};

#endif // TIMER_H
