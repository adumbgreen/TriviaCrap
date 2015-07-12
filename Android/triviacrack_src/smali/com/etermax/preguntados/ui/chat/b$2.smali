.class Lcom/etermax/preguntados/ui/chat/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/chat/b;->a(Lcom/etermax/chat/a/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/a/f;

.field final synthetic b:Lcom/etermax/preguntados/ui/chat/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/chat/b;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/etermax/preguntados/ui/chat/b$2;->b:Lcom/etermax/preguntados/ui/chat/b;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/chat/b$2;->a:Lcom/etermax/chat/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b$2;->b:Lcom/etermax/preguntados/ui/chat/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/chat/b$2;->a:Lcom/etermax/chat/a/f;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/chat/b;->a(Lcom/etermax/preguntados/ui/chat/b;Lcom/etermax/chat/a/f;)V

    .line 93
    return-void
.end method
