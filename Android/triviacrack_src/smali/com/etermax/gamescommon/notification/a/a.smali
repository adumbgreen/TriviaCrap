.class public abstract Lcom/etermax/gamescommon/notification/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/os/Bundle;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Z

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/etermax/gamescommon/notification/a/a;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/etermax/gamescommon/notification/a/a;->b:Landroid/os/Bundle;

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->b:Landroid/os/Bundle;

    const-string v1, "data.TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->c:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->b:Landroid/os/Bundle;

    const-string v1, "data.FID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->d:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->b:Landroid/os/Bundle;

    const-string v1, "data.PFU"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->f:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->b:Landroid/os/Bundle;

    const-string v1, "data.SFP"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/notification/a/a;->c(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/notification/a/a;->e:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Ljava/lang/String;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 48
    :goto_0
    return-wide v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public varargs abstract a(Lcom/etermax/gamescommon/notification/h;[Ljava/lang/Object;)Landroid/text/SpannableString;
.end method

.method public a()Lcom/etermax/gamescommon/f/b/b;
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    const/16 v1, 0x32

    iget-object v2, p0, Lcom/etermax/gamescommon/notification/a/a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/etermax/tools/j/g;->a(ILandroid/content/Context;)F

    move-result v1

    .line 80
    iget-boolean v2, p0, Lcom/etermax/gamescommon/notification/a/a;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/etermax/gamescommon/notification/a/a;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->d:Ljava/lang/String;

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/user/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    :goto_0
    new-instance v1, Lcom/etermax/gamescommon/f/b/b;

    invoke-direct {v1}, Lcom/etermax/gamescommon/f/b/b;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/gamescommon/notification/a/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/gamescommon/notification/a/a;->d()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->a(Landroid/text/SpannableString;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/gamescommon/notification/a/a;->e()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->b(Landroid/text/SpannableString;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/String;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->c(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/etermax/gamescommon/notification/a/a;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/a/a;->f:Ljava/lang/String;

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/user/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 40
    :goto_0
    return-object p3

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 64
    const-string v0, ""

    .line 65
    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
.end method

.method protected b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()Z
.end method

.method public abstract c()I
.end method

.method protected c(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract d()Landroid/text/SpannableString;
.end method

.method public abstract e()Landroid/text/SpannableString;
.end method
