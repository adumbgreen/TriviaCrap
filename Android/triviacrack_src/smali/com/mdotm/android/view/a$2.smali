.class Lcom/mdotm/android/view/a$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/a;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/a;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/a$2;->a:Lcom/mdotm/android/view/a;

    .line 218
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mdotm/android/view/a$2;->a:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->e(Lcom/mdotm/android/view/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/mdotm/android/view/a$2;->a:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->e(Lcom/mdotm/android/view/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    :cond_0
    return-void
.end method
