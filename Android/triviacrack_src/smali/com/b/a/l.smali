.class Lcom/b/a/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/b/a/k;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/b/a/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    iput-object p2, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    .line 339
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 382
    :pswitch_0
    sget-object v0, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v1, Lcom/b/a/l$1;

    invoke-direct {v1, p0, p1}, Lcom/b/a/l$1;-><init>(Lcom/b/a/l;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    :goto_0
    return-void

    .line 344
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/a;

    .line 345
    iget-object v1, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    invoke-virtual {v1, v0}, Lcom/b/a/k;->c(Lcom/b/a/a;)V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/a;

    .line 350
    iget-object v1, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    invoke-virtual {v1, v0}, Lcom/b/a/k;->d(Lcom/b/a/a;)V

    goto :goto_0

    .line 354
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/d;

    .line 355
    iget-object v1, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    invoke-virtual {v1, v0}, Lcom/b/a/k;->e(Lcom/b/a/d;)V

    goto :goto_0

    .line 359
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/d;

    .line 360
    iget-object v1, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    invoke-virtual {v1, v0}, Lcom/b/a/k;->d(Lcom/b/a/d;)V

    goto :goto_0

    .line 364
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/d;

    .line 365
    iget-object v2, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/k;->a(Lcom/b/a/d;Z)V

    goto :goto_0

    .line 369
    :pswitch_6
    iget-object v0, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    invoke-virtual {v0}, Lcom/b/a/k;->a()V

    goto :goto_0

    .line 373
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 374
    iget-object v1, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    invoke-virtual {v1, v0}, Lcom/b/a/k;->b(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 378
    :pswitch_8
    iget-object v2, p0, Lcom/b/a/l;->a:Lcom/b/a/k;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/b/a/k;->b(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
