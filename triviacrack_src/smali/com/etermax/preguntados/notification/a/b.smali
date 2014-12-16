.class public abstract Lcom/etermax/preguntados/notification/a/b;
.super Lcom/etermax/gamescommon/notification/a/a;
.source "SourceFile"


# instance fields
.field protected g:J

.field protected h:Ljava/lang/String;

.field protected i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/notification/a/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/b;->b:Landroid/os/Bundle;

    const-string v1, "data.GID"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/b;->a(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/notification/a/b;->g:J

    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/b;->b:Landroid/os/Bundle;

    const-string v1, "data.OPP"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/b;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/b;->h:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/b;->b:Landroid/os/Bundle;

    const-string v1, "data.U"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/b;->a(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/notification/a/b;->i:J

    .line 32
    return-void
.end method


# virtual methods
.method public varargs a(Lcom/etermax/gamescommon/notification/h;[Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->c:Lcom/etermax/gamescommon/notification/h;

    if-ne p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/b;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->x_game_notifications:I

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/notification/h;->b:Lcom/etermax/gamescommon/notification/h;

    if-ne p1, v0, :cond_1

    .line 84
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/m;->new_messages:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lcom/etermax/gamescommon/f/b/b;
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/etermax/gamescommon/notification/a/a;->a()Lcom/etermax/gamescommon/f/b/b;

    move-result-object v0

    .line 56
    iget-wide v1, p0, Lcom/etermax/preguntados/notification/a/b;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/b;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->b(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/f/b/b;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/f/b/b;

    .line 59
    return-object v0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/etermax/gamescommon/notification/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    sget-object v0, Lcom/etermax/preguntados/notification/a/b$1;->a:[I

    invoke-virtual {p2}, Lcom/etermax/gamescommon/notification/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/b;->f()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/notification/a/b;->g()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/etermax/preguntados/notification/b;->a:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v0

    return v0
.end method

.method public e()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    const-string v1, "type"

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "gameId"

    iget-wide v2, p0, Lcom/etermax/preguntados/notification/a/b;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/etermax/preguntados/notification/a/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/etermax/preguntados/notification/a/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
