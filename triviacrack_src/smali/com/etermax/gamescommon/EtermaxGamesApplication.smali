.class public abstract Lcom/etermax/gamescommon/EtermaxGamesApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/adsinterface/a/l;
.implements Lcom/etermax/adsinterface/e;
.implements Lcom/etermax/gamescommon/f;
.implements Lcom/etermax/gamescommon/login/ui/b;
.implements Lcom/etermax/gamescommon/mediation/MediationManager$IApplicationMediation;
.implements Lcom/etermax/gamescommon/notification/gcm/b;
.implements Lcom/etermax/tools/a;
.implements Lcom/etermax/tools/a/a/f;
.implements Lcom/etermax/tools/b;
.implements Lcom/etermax/tools/b/d;
.implements Lcom/etermax/tools/f/b/b;
.implements Lcom/etermax/tools/i/e;
.implements Lcom/etermax/tools/j/b;
.implements Lcom/etermax/tools/navigation/a;
.implements Lcom/etermax/tools/social/a/d;
.implements Lcom/etermax/tools/social/twitter/b;


# instance fields
.field protected a:Lcom/etermax/gamescommon/login/datasource/c;

.field protected b:Lcom/etermax/gamescommon/datasource/e;

.field protected c:Lcom/etermax/gamescommon/datasource/a;

.field protected d:Lcom/etermax/tools/b/a;

.field protected e:Lcom/etermax/gamescommon/login/datasource/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 137
    sget-object v0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->l:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->a:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/c;->f()V

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/etermax/tools/g/a;->a(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public a(Lcom/etermax/tools/navigation/BaseFragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    invoke-static {}, Lcom/etermax/gamescommon/login/ui/d;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "debug_fragment"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    .line 88
    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->u()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "market_amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p="

    .line 98
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string v1, "market_samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "samsungapps://ProductDetail/"

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "market://details?id="

    goto :goto_0
.end method

.method public abstract b(Landroid/app/Activity;)V
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-static {p0, p0, p1}, Lcom/etermax/tools/j/e;->a(Lcom/etermax/tools/b;Lcom/etermax/tools/a;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "ANDROID"

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->c()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "BLACKBERRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "BLACKBERRY"

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ANDROID"

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/etermax/o;->facebook_mobile_web:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    const/high16 v0, 0x1400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "ETERMAXGAMESAPPLICATION"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->a:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/c;->e()V

    .line 144
    iget-object v0, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->e()V

    .line 145
    iget-object v0, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->c:Lcom/etermax/gamescommon/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/a;->e()V

    .line 146
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 73
    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/g/a;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 74
    invoke-virtual {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->n()V

    .line 75
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/etermax/tools/bugcatcher/a;

    invoke-direct {v0, p0}, Lcom/etermax/tools/bugcatcher/a;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, p0}, Lcom/etermax/tools/bugcatcher/a;->a(Landroid/app/Application;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->d:Lcom/etermax/tools/b/a;

    const-class v1, Lorg/b/e/a/d;

    sget v2, Lcom/etermax/o;->service_unavailable:I

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/b/a;->a(Ljava/lang/Class;I)V

    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/EtermaxGamesApplication;->d:Lcom/etermax/tools/b/a;

    const-class v1, Lorg/b/e/a/g;

    sget v2, Lcom/etermax/o;->connection_problem:I

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/b/a;->a(Ljava/lang/Class;I)V

    .line 82
    return-void
.end method
