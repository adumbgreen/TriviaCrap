.class public Lcom/etermax/gamescommon/datasource/b/b;
.super Lcom/etermax/tools/a/c/b;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/etermax/gamescommon/datasource/b/b;->a:Landroid/util/SparseIntArray;

    .line 24
    sget-object v0, Lcom/etermax/gamescommon/datasource/b/b;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x131

    sget v2, Lcom/etermax/o;->chat_game_deleted:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/b/e/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/c/b;-><init>(Lorg/b/e/a/b;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/etermax/o;->error_connection:I

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/etermax/gamescommon/datasource/b/b;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/b/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method
