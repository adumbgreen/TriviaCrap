.class public final Lcom/etermax/chat/ui/adapter/c;
.super Lcom/etermax/chat/ui/adapter/a;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/chat/ui/adapter/a;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/etermax/chat/ui/adapter/c;->c:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/etermax/chat/ui/adapter/c;->c()V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/chat/ui/adapter/c;
    .locals 1
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/etermax/chat/ui/adapter/c;

    invoke-direct {v0, p0}, Lcom/etermax/chat/ui/adapter/c;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/c;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/c;->a:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/chat/a/e;->a(Landroid/content/Context;)Lcom/etermax/chat/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/c;->b:Lcom/etermax/chat/a/a;

    .line 29
    invoke-virtual {p0}, Lcom/etermax/chat/ui/adapter/c;->a()V

    .line 30
    return-void
.end method
