.class Lcom/etermax/preguntados/e/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/e/d;->a(Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/preguntados/e/b;

.field final synthetic c:Lcom/etermax/preguntados/e/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/e/d;Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etermax/preguntados/e/d$1;->c:Lcom/etermax/preguntados/e/d;

    iput-object p2, p0, Lcom/etermax/preguntados/e/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/etermax/preguntados/e/d$1;->b:Lcom/etermax/preguntados/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/preguntados/e/d$1;->c:Lcom/etermax/preguntados/e/d;

    iget-object v1, p0, Lcom/etermax/preguntados/e/d$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/etermax/preguntados/e/d$1;->b:Lcom/etermax/preguntados/e/b;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/e/d;->a(Lcom/etermax/preguntados/e/d;Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V

    .line 52
    return-void
.end method
