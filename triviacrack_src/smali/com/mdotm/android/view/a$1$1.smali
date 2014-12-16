.class Lcom/mdotm/android/view/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/view/a$1;
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/a$1;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/a$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/a$1$1;->a:Lcom/mdotm/android/view/a$1;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mdotm/android/view/a$1$1;->a:Lcom/mdotm/android/view/a$1;

    iget-boolean v0, v0, Lcom/mdotm/android/view/a$1;->a:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "timeout loading landing url"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mdotm/android/view/a$1$1;->a:Lcom/mdotm/android/view/a$1;

    invoke-static {v0}, Lcom/mdotm/android/view/a$1;->a(Lcom/mdotm/android/view/a$1;)Lcom/mdotm/android/view/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/view/a;->a(Lcom/mdotm/android/view/a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 93
    iget-object v0, p0, Lcom/mdotm/android/view/a$1$1;->a:Lcom/mdotm/android/view/a$1;

    invoke-static {v0}, Lcom/mdotm/android/view/a$1;->a(Lcom/mdotm/android/view/a$1;)Lcom/mdotm/android/view/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/view/a;->b(Lcom/mdotm/android/view/a;)V

    .line 94
    iget-object v0, p0, Lcom/mdotm/android/view/a$1$1;->a:Lcom/mdotm/android/view/a$1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mdotm/android/view/a$1;->a:Z

    .line 96
    :cond_0
    return-void
.end method
