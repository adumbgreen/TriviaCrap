.class public final Lcom/etermax/preguntados/ui/withoutcoins/h;
.super Lcom/etermax/preguntados/ui/withoutcoins/g;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/g;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/etermax/preguntados/ui/withoutcoins/h;->b:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->b()V

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/h;
    .locals 1
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/h;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/withoutcoins/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/h;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/h;->a:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/h;->a()V

    .line 28
    return-void
.end method
