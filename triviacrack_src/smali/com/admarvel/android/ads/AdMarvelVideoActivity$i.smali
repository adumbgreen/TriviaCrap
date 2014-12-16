.class Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->e:Z

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;

    invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i$1;-><init>(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b:Ljava/lang/Runnable;

    iput p3, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    iput-boolean p4, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;)I
    .locals 1

    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c:I

    if-lt v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->f:Ljava/lang/Runnable;

    iget v2, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelVideoActivity$i;->d:Z

    return v0
.end method
