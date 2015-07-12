.class Lcom/etermax/chat/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/a/e;->b(Lcom/etermax/chat/a/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/a/f;

.field final synthetic b:Lcom/etermax/chat/a/e;


# direct methods
.method constructor <init>(Lcom/etermax/chat/a/e;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etermax/chat/a/e$2;->b:Lcom/etermax/chat/a/e;

    iput-object p2, p0, Lcom/etermax/chat/a/e$2;->a:Lcom/etermax/chat/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/etermax/chat/a/e$2;->b:Lcom/etermax/chat/a/e;

    iget-object v1, p0, Lcom/etermax/chat/a/e$2;->a:Lcom/etermax/chat/a/f;

    invoke-static {v0, v1}, Lcom/etermax/chat/a/e;->a(Lcom/etermax/chat/a/e;Lcom/etermax/chat/a/f;)V

    .line 68
    return-void
.end method
