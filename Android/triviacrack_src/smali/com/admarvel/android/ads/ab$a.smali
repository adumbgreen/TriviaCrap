.class Lcom/admarvel/android/ads/ab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/admarvel/android/ads/ab$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/admarvel/android/ads/ab$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Lcom/admarvel/android/ads/h;

    invoke-direct {v1}, Lcom/admarvel/android/ads/h;-><init>()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
