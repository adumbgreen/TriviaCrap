.class public Lcom/etermax/gamescommon/dashboard/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/etermax/gamescommon/dashboard/a/b;->a:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/etermax/gamescommon/dashboard/a/b;->b:I

    .line 12
    iput p3, p0, Lcom/etermax/gamescommon/dashboard/a/b;->c:I

    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/etermax/gamescommon/dashboard/a/b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/etermax/gamescommon/dashboard/a/b;->c:I

    return v0
.end method
