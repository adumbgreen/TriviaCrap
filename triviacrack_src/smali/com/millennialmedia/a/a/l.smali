.class public final Lcom/millennialmedia/a/a/l;
.super Lcom/millennialmedia/a/a/j;
.source "SourceFile"


# static fields
.field public static final a:Lcom/millennialmedia/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/millennialmedia/a/a/l;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/l;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/l;->a:Lcom/millennialmedia/a/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/a/a/j;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/millennialmedia/a/a/l;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/millennialmedia/a/a/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
