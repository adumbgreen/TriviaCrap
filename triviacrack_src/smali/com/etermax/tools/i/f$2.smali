.class Lcom/etermax/tools/i/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/i/f;->b(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/etermax/tools/i/f;


# direct methods
.method constructor <init>(Lcom/etermax/tools/i/f;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/etermax/tools/i/f$2;->b:Lcom/etermax/tools/i/f;

    iput-object p2, p0, Lcom/etermax/tools/i/f$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/i/f$2;->b:Lcom/etermax/tools/i/f;

    invoke-virtual {v0}, Lcom/etermax/tools/i/f;->i()Ljava/lang/Object;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/etermax/tools/i/f$2;->b:Lcom/etermax/tools/i/f;

    iget-object v2, p0, Lcom/etermax/tools/i/f$2;->a:Ljava/lang/Exception;

    invoke-virtual {v1, v0, v2}, Lcom/etermax/tools/i/f;->a(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v0, p0, Lcom/etermax/tools/i/f$2;->b:Lcom/etermax/tools/i/f;

    iget-object v1, p0, Lcom/etermax/tools/i/f$2;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/i/f;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
