.class public Lcom/etermax/gamescommon/user/b/b;
.super Lcom/etermax/gamescommon/user/b/a;
.source "SourceFile"


# instance fields
.field c:Z


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/h/a/e;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    sget-object v0, Lcom/etermax/gamescommon/user/b/c;->a:Lcom/etermax/gamescommon/user/b/c;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/user/b/a;-><init>(Lcom/etermax/gamescommon/user/b/c;Lcom/etermax/gamescommon/h/a/e;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/etermax/gamescommon/user/b/b;->a(Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/etermax/gamescommon/user/b/b;->c:Z

    .line 21
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/etermax/gamescommon/user/b/b;->c:Z

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/etermax/gamescommon/user/b/b$1;->a:[I

    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/b/b;->b()Lcom/etermax/gamescommon/h/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/h/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 26
    :pswitch_0
    sget v0, Lcom/etermax/o;->friends_who_play:I

    goto :goto_0

    .line 29
    :pswitch_1
    sget v0, Lcom/etermax/o;->invite_to_play_app:I

    goto :goto_0

    .line 31
    :pswitch_2
    sget v0, Lcom/etermax/o;->suggested_opponent_plural:I

    goto :goto_0

    .line 33
    :pswitch_3
    sget v0, Lcom/etermax/o;->recent_opponent_plural:I

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
