.class public Lcom/etermax/preguntados/notification/a/p;
.super Lcom/etermax/gamescommon/notification/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/notification/a/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method


# virtual methods
.method public varargs a(Lcom/etermax/gamescommon/notification/h;[Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/p;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/p;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 63
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/etermax/preguntados/notification/b;->c:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v0

    return v0
.end method

.method public d()Landroid/text/SpannableString;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/p;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->notification_approved_question:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
