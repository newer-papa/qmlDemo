#ifndef SPLASHSCREENFORM_H
#define SPLASHSCREENFORM_H

#include <QWidget>

namespace Ui {
class SplashScreenForm;
}

class SplashScreenForm : public QWidget
{
    Q_OBJECT

public:
    explicit SplashScreenForm(QWidget *parent = nullptr);
    ~SplashScreenForm();

private:
    Ui::SplashScreenForm *ui;
};

#endif // SPLASHSCREENFORM_H
