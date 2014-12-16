.class public Lcom/etermax/preguntados/ui/newgame/duelmode/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Ljava/lang/String;

.field private d:Lcom/etermax/preguntados/ui/newgame/duelmode/r;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/o;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->b:Landroid/support/v4/app/Fragment;

    .line 57
    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->c:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->d:Lcom/etermax/preguntados/ui/newgame/duelmode/r;

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    new-instance v1, Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->d:Lcom/etermax/preguntados/ui/newgame/duelmode/r;

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/newgame/duelmode/q;-><init>(Lcom/etermax/preguntados/ui/newgame/duelmode/o;Ljava/lang/String;Lcom/etermax/preguntados/ui/newgame/duelmode/r;)V

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/o;Lcom/etermax/preguntados/ui/newgame/duelmode/q;)Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/o;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/o;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/o;)Lcom/etermax/preguntados/ui/newgame/duelmode/q;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/p;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/q;->a(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
