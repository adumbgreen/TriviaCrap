.class public Lcom/mdotm/android/vast/i;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 32
    iput-object p1, p0, Lcom/mdotm/android/vast/i;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mdotm/android/vast/i;->e:Landroid/os/Handler;

    .line 34
    iget-object v0, p0, Lcom/mdotm/android/vast/i;->b:Landroid/content/Context;

    .line 35
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/media/AudioManager;

    .line 36
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mdotm/android/vast/i;->a:I

    .line 38
    iput-object p3, p0, Lcom/mdotm/android/vast/i;->c:Ljava/util/ArrayList;

    .line 39
    iput-object p4, p0, Lcom/mdotm/android/vast/i;->d:Ljava/util/ArrayList;

    .line 40
    iget v0, p0, Lcom/mdotm/android/vast/i;->a:I

    if-nez v0, :cond_0

    .line 41
    const-string v0, "valumn Mute impression when video started:: "

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :cond_0
    const-string v0, "Volumn listener"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 56
    iget-object v0, p0, Lcom/mdotm/android/vast/i;->b:Landroid/content/Context;

    .line 57
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Landroid/media/AudioManager;

    .line 58
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 60
    if-nez v0, :cond_1

    iget v1, p0, Lcom/mdotm/android/vast/i;->a:I

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "valumn Mute  impression :: "

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    iput v0, p0, Lcom/mdotm/android/vast/i;->a:I

    .line 68
    return-void

    .line 63
    :cond_1
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mdotm/android/vast/i;->a:I

    if-nez v1, :cond_0

    .line 64
    const-string v1, "valumn unMute impression :: "

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
