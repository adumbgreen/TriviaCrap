.class public Lcom/etermax/preguntados/notification/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/etermax/gamescommon/notification/a/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    const-string v1, "data.TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    const-string v2, "DUEL_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    new-instance v0, Lcom/etermax/preguntados/notification/a/m;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/m;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    const-string v2, "DUEL_ENDED_LOST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    new-instance v0, Lcom/etermax/preguntados/notification/a/f;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/f;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 38
    :cond_2
    const-string v2, "DUEL_ENDED_WON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    new-instance v0, Lcom/etermax/preguntados/notification/a/g;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/g;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 40
    :cond_3
    const-string v2, "NEW_GAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    new-instance v0, Lcom/etermax/preguntados/notification/a/n;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/n;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 42
    :cond_4
    const-string v2, "DUEL_GROUP_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    new-instance v0, Lcom/etermax/preguntados/notification/a/e;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/e;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 44
    :cond_5
    const-string v2, "USER_PLAYED_02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    new-instance v0, Lcom/etermax/preguntados/notification/a/r;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/r;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 46
    :cond_6
    const-string v2, "USER_RESIGN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47
    new-instance v0, Lcom/etermax/preguntados/notification/a/u;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/u;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 48
    :cond_7
    const-string v2, "USER_REJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 49
    new-instance v0, Lcom/etermax/preguntados/notification/a/t;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/t;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 50
    :cond_8
    const-string v2, "NEW_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 51
    new-instance v0, Lcom/etermax/preguntados/notification/a/o;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/o;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 52
    :cond_9
    const-string v2, "YOU_WIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 53
    new-instance v0, Lcom/etermax/preguntados/notification/a/k;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/k;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 54
    :cond_a
    const-string v2, "YOU_LOST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 55
    new-instance v0, Lcom/etermax/preguntados/notification/a/i;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/i;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 56
    :cond_b
    const-string v2, "DUEL_GROUP_ENDED_LOST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 57
    new-instance v0, Lcom/etermax/preguntados/notification/a/c;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 58
    :cond_c
    const-string v2, "DUEL_GROUP_ENDED_WON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 59
    new-instance v0, Lcom/etermax/preguntados/notification/a/d;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/d;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 60
    :cond_d
    const-string v2, "GAME_NEARLY_TO_EXPIRE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 61
    new-instance v0, Lcom/etermax/preguntados/notification/a/j;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/j;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 62
    :cond_e
    const-string v2, "GAME_EXPIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 63
    new-instance v0, Lcom/etermax/preguntados/notification/a/h;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/h;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 64
    :cond_f
    const-string v2, "NEW_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 65
    new-instance v0, Lcom/etermax/preguntados/notification/a/l;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/l;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 66
    :cond_10
    const-string v2, "QUESTION_APPROVAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 67
    new-instance v0, Lcom/etermax/preguntados/notification/a/p;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/p;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 68
    :cond_11
    const-string v2, "QUESTION_DISAPPROVAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 69
    new-instance v0, Lcom/etermax/preguntados/notification/a/q;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/q;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 70
    :cond_12
    const-string v2, "USER_INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Lcom/etermax/preguntados/notification/a/s;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/notification/a/s;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
