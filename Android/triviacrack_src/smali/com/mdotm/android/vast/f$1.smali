.class Lcom/mdotm/android/vast/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/f;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/vast/f;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/f;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/f$1;->a:Lcom/mdotm/android/vast/f;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mdotm/android/vast/f$1;->a:Lcom/mdotm/android/vast/f;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/f;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mdotm/android/vast/f$1;->a:Lcom/mdotm/android/vast/f;

    invoke-static {v0}, Lcom/mdotm/android/vast/f;->g(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->f()V

    .line 78
    :cond_0
    return-void
.end method
