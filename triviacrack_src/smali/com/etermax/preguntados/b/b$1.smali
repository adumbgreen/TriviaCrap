.class Lcom/etermax/preguntados/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/b/b;->a(Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/animations/d;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/etermax/preguntados/b/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/b/b;Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/etermax/preguntados/b/b$1;->c:Lcom/etermax/preguntados/b/b;

    iput-object p2, p0, Lcom/etermax/preguntados/b/b$1;->a:Lcom/etermax/gamescommon/animations/d;

    iput-object p3, p0, Lcom/etermax/preguntados/b/b$1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/b/b$1;->c:Lcom/etermax/preguntados/b/b;

    iget-object v1, p0, Lcom/etermax/preguntados/b/b$1;->a:Lcom/etermax/gamescommon/animations/d;

    iget-object v2, p0, Lcom/etermax/preguntados/b/b$1;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/b/b;->a(Lcom/etermax/preguntados/b/b;Lcom/etermax/gamescommon/animations/d;Landroid/view/ViewGroup;)V

    .line 54
    return-void
.end method
