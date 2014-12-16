.class public Lcom/etermax/preguntados/notification/a/s;
.super Lcom/etermax/gamescommon/notification/a/a;
.source "SourceFile"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/notification/a/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 24
    const-string v0, "data.NME"

    invoke-virtual {p0, p2, v0}, Lcom/etermax/preguntados/notification/a/s;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/s;->g:Ljava/lang/String;

    .line 25
    const-string v0, "data.ANME"

    invoke-virtual {p0, p2, v0}, Lcom/etermax/preguntados/notification/a/s;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/s;->h:Ljava/lang/String;

    .line 26
    const-string v0, "data.LNK"

    invoke-virtual {p0, p2, v0}, Lcom/etermax/preguntados/notification/a/s;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/s;->i:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private f()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/s;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    return-object v0
.end method


# virtual methods
.method public varargs a(Lcom/etermax/gamescommon/notification/h;[Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/s;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/etermax/preguntados/notification/a/s;->f()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 59
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/etermax/preguntados/notification/b;->c:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v0

    return v0
.end method

.method public d()Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/s;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->notification_user_invitation:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/s;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/s;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
