.class Lcom/b/a/ah;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    .line 35
    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/b/a/az;

    invoke-direct {v7}, Lcom/b/a/az;-><init>()V

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 37
    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/b/a/ah;->setCorePoolSize(I)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/b/a/ah;->setMaximumPoolSize(I)V

    .line 80
    return-void
.end method


# virtual methods
.method a(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    invoke-direct {p0, v1}, Lcom/b/a/ah;->a(I)V

    .line 75
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 73
    invoke-direct {p0, v1}, Lcom/b/a/ah;->a(I)V

    goto :goto_0

    .line 48
    :sswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/b/a/ah;->a(I)V

    goto :goto_0

    .line 51
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/b/a/ah;->a(I)V

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/b/a/ah;->a(I)V

    goto :goto_0

    .line 62
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/b/a/ah;->a(I)V

    goto :goto_0

    .line 66
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/b/a/ah;->a(I)V

    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
