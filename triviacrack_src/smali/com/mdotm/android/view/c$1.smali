.class Lcom/mdotm/android/view/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/c;->a(Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/c;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/c;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/c$1;->a:Lcom/mdotm/android/view/c;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "Call report impression image"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/mdotm/android/view/c$1;->a:Lcom/mdotm/android/view/c;

    iget-object v1, v1, Lcom/mdotm/android/view/c;->a:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mdotm/android/view/c$1;->a:Lcom/mdotm/android/view/c;

    iget-object v2, v2, Lcom/mdotm/android/view/c;->c:Landroid/content/Context;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/mdotm/android/view/c$1;->a:Lcom/mdotm/android/view/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdotm/android/view/c;->a(Lcom/mdotm/android/view/c;Z)V

    .line 86
    return-void
.end method
