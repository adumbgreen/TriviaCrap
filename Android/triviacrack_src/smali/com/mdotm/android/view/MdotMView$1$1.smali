.class Lcom/mdotm/android/view/MdotMView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMView$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMView$1;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMView$1$1;->a:Lcom/mdotm/android/view/MdotMView$1;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1$1;->a:Lcom/mdotm/android/view/MdotMView$1;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView$1;->a(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->a(Lcom/mdotm/android/view/MdotMView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MdotMView has focus"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$1$1;->a:Lcom/mdotm/android/view/MdotMView$1;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView$1;->a(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->a(Lcom/mdotm/android/view/MdotMView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const-string v0, "Begining next request"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMView$1$1;->a:Lcom/mdotm/android/view/MdotMView$1;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView$1;->a(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMView;->b(Lcom/mdotm/android/view/MdotMView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/b/e;->a(Landroid/content/Context;)Lcom/mdotm/android/b/e;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMView$1$1;->a:Lcom/mdotm/android/view/MdotMView$1;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView$1;->a(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMView;->c(Lcom/mdotm/android/view/MdotMView;)Lcom/mdotm/android/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMView$1$1;->a:Lcom/mdotm/android/view/MdotMView$1;

    invoke-static {v2}, Lcom/mdotm/android/view/MdotMView$1;->a(Lcom/mdotm/android/view/MdotMView$1;)Lcom/mdotm/android/view/MdotMView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/b/e;->a(Lcom/mdotm/android/d/a;Lcom/mdotm/android/c/e;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "MdotMView does not has focus. So Ad request cancelled"

    .line 183
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
