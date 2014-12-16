.class Lcom/etermax/tools/i/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/i/i;->a(Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/i/h;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/etermax/tools/i/i;


# direct methods
.method constructor <init>(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etermax/tools/i/i$1;->c:Lcom/etermax/tools/i/i;

    iput-object p2, p0, Lcom/etermax/tools/i/i$1;->a:Lcom/etermax/tools/i/h;

    iput-object p3, p0, Lcom/etermax/tools/i/i$1;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/tools/i/i$1;->c:Lcom/etermax/tools/i/i;

    iget-object v1, p0, Lcom/etermax/tools/i/i$1;->a:Lcom/etermax/tools/i/h;

    iget-object v2, p0, Lcom/etermax/tools/i/i$1;->b:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lcom/etermax/tools/i/i;->a(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V

    .line 48
    return-void
.end method
