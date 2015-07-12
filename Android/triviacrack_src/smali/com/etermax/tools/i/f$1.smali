.class Lcom/etermax/tools/i/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/i/f;->c(Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/etermax/tools/i/f;


# direct methods
.method constructor <init>(Lcom/etermax/tools/i/f;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/etermax/tools/i/f$1;->b:Lcom/etermax/tools/i/f;

    iput-object p2, p0, Lcom/etermax/tools/i/f$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/i/f$1;->b:Lcom/etermax/tools/i/f;

    invoke-virtual {v0}, Lcom/etermax/tools/i/f;->i()Ljava/lang/Object;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/etermax/tools/i/f$1;->b:Lcom/etermax/tools/i/f;

    iget-object v2, p0, Lcom/etermax/tools/i/f$1;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/etermax/tools/i/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    iget-object v0, p0, Lcom/etermax/tools/i/f$1;->b:Lcom/etermax/tools/i/f;

    iget-object v1, p0, Lcom/etermax/tools/i/f$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/i/f;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method
