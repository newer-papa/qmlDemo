#include "splashscreenform.h"
#include "ui_splashscreenform.h"

SplashScreenForm::SplashScreenForm(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::SplashScreenForm)
{
    ui->setupUi(this);
}

SplashScreenForm::~SplashScreenForm()
{
    delete ui;
}
