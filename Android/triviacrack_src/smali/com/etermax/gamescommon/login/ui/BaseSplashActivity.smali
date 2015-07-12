.class public abstract Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field protected static a:I


# instance fields
.field protected b:Lcom/etermax/gamescommon/login/datasource/a;

.field protected c:Lcom/etermax/tools/f/a;

.field protected d:Lcom/etermax/gamescommon/shop/c;

.field private e:Lcom/mobileapptracker/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x7d0

    sput v0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->e:Lcom/mobileapptracker/h;

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)Lcom/mobileapptracker/h;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->e:Lcom/mobileapptracker/h;

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/b/l;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;Lcom/etermax/gamescommon/b/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/b/l;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 122
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;-><init>(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)V

    sget v2, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 138
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 163
    invoke-static {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->finish()V

    .line 170
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 62
    instance-of v3, v0, Lcom/etermax/tools/j/b;

    if-eqz v3, :cond_0

    .line 63
    check-cast v0, Lcom/etermax/tools/j/b;

    invoke-interface {v0}, Lcom/etermax/tools/j/b;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 65
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".pro"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->finish()V

    .line 118
    :goto_0
    return-void

    .line 77
    :cond_0
    sget v0, Lcom/etermax/k;->splash:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->setContentView(I)V

    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->d:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->a(Landroid/content/Context;)V

    .line 81
    const-string v0, "launch_data"

    invoke-virtual {p0, v0, v2}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "launch_data"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    :cond_1
    const-string v0, "16850"

    .line 89
    const-string v3, "612ea677f89f9ff23d53bd6b2d7e3671"

    .line 91
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/mobileapptracker/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->e:Lcom/mobileapptracker/h;

    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->e:Lcom/mobileapptracker/h;

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->a(Z)V

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$1;-><init>(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    const-string v3, "Splash"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First install: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 155
    new-instance v0, Lcom/etermax/gamescommon/b/o;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/o;-><init>()V

    .line 156
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/o;->a(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 158
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->e:Lcom/mobileapptracker/h;

    invoke-virtual {v0, p0}, Lcom/mobileapptracker/h;->a(Landroid/app/Activity;)V

    .line 159
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->e:Lcom/mobileapptracker/h;

    invoke-virtual {v0}, Lcom/mobileapptracker/h;->c()V

    .line 160
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 149
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 143
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 144
    return-void
.end method
