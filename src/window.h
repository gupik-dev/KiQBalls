#ifndef WINDOW_H
#define WINDOW_H

struct Window
{
    unsigned int m_width, m_height;

    Window(int width, int height);
    float aspect() { return (float)m_width/(float)m_height; }
};

#endif // WINDOW_H
