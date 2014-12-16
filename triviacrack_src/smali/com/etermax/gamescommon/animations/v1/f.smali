.class public Lcom/etermax/gamescommon/animations/v1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/animations/v1/e;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/animations/v1/e;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/v1/f;->a:Lcom/etermax/gamescommon/animations/v1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p2, p0, Lcom/etermax/gamescommon/animations/v1/f;->b:F

    .line 58
    iput p3, p0, Lcom/etermax/gamescommon/animations/v1/f;->c:F

    .line 59
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/etermax/gamescommon/animations/v1/f;->b:F

    return v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/etermax/gamescommon/animations/v1/f;->c:F

    return v0
.end method
