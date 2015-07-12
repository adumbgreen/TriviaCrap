.class Lcom/b/a/an;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/b/a/am;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/b/a/am;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    iput-object p2, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    sget-object v0, Lcom/b/a/aa;->a:Landroid/os/Handler;

    new-instance v1, Lcom/b/a/an$1;

    invoke-direct {v1, p0, p1}, Lcom/b/a/an$1;-><init>(Lcom/b/a/an;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    invoke-virtual {v0}, Lcom/b/a/am;->c()V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    invoke-virtual {v0}, Lcom/b/a/am;->d()V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/am;->b(J)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/am;->c(J)V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v1, p0, Lcom/b/a/an;->a:Lcom/b/a/am;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/b/a/am;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
