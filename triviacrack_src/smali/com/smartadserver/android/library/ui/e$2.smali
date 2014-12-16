.class Lcom/smartadserver/android/library/ui/e$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/e;->onAttachedToWindow()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Timer;

.field final synthetic b:Lcom/smartadserver/android/library/ui/e;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/e;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/e$2;->b:Lcom/smartadserver/android/library/ui/e;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/e$2;->a:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e$2;->b:Lcom/smartadserver/android/library/ui/e;

    new-instance v1, Lcom/smartadserver/android/library/ui/e$2$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/e$2$1;-><init>(Lcom/smartadserver/android/library/ui/e$2;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/e;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
