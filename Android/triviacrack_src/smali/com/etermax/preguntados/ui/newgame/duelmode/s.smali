.class public final Lcom/etermax/preguntados/ui/newgame/duelmode/s;
.super Lcom/etermax/preguntados/ui/newgame/duelmode/o;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/o;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/s;->b:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/s;->b()V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/newgame/duelmode/s;
    .locals 1
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/etermax/preguntados/ui/newgame/duelmode/s;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/s;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/s;->a:Lcom/etermax/preguntados/datasource/d;

    .line 28
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/duelmode/s;->a()V

    .line 29
    return-void
.end method
