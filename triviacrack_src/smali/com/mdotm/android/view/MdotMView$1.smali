.class Lcom/mdotm/android/view/MdotMView$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMView;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView$1;->a:Lcom/mdotm/android/view/MdotMView;

    .line 165
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1;->a:Lcom/mdotm/android/view/MdotMView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1;->a:Lcom/mdotm/android/view/MdotMView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMView;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMView$1$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/view/MdotMView$1$1;-><init>(Lcom/mdotm/android/view/MdotMView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method
