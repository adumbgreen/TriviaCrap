.class public Lcom/etermax/gamescommon/user/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcom/etermax/gamescommon/j;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/j;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/e;->c:Lcom/etermax/gamescommon/j;

    .line 33
    iput-boolean p3, p0, Lcom/etermax/gamescommon/user/a/e;->a:Z

    .line 34
    iput p2, p0, Lcom/etermax/gamescommon/user/a/e;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/etermax/gamescommon/user/a/e;->a:Z

    return v0
.end method

.method public b()Lcom/etermax/gamescommon/j;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/e;->c:Lcom/etermax/gamescommon/j;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/etermax/gamescommon/user/a/e;->b:I

    return v0
.end method
