.class Lcom/etermax/gamescommon/menu/a$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a$3;->a(Lcom/etermax/gamescommon/menu/navigation/c;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/navigation/c;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a$3;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a$3;Lcom/etermax/gamescommon/menu/navigation/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a$3$1;->a:Lcom/etermax/gamescommon/menu/navigation/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/etermax/gamescommon/menu/a$4;->a:[I

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a$3$1;->a:Lcom/etermax/gamescommon/menu/navigation/c;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/navigation/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    return-void

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->e()V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->c()V

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->b()V

    goto :goto_0

    .line 302
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->d()V

    goto :goto_0

    .line 305
    :pswitch_4
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->f()V

    goto :goto_0

    .line 308
    :pswitch_5
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->i_()V

    goto :goto_0

    .line 311
    :pswitch_6
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->i()V

    goto :goto_0

    .line 314
    :pswitch_7
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->j()V

    goto :goto_0

    .line 317
    :pswitch_8
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->h()V

    goto :goto_0

    .line 320
    :pswitch_9
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->k()V

    goto :goto_0

    .line 323
    :pswitch_a
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$3$1;->b:Lcom/etermax/gamescommon/menu/a$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$3;->a:Lcom/etermax/gamescommon/menu/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/menu/c;->l()V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
