.class public abstract Lcom/etermax/gamescommon/profile/image/InternalStorageContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static a:Landroid/net/Uri;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/etermax/gamescommon/profile/image/InternalStorageContentProvider;->b:Ljava/util/HashMap;

    .line 22
    sget-object v0, Lcom/etermax/gamescommon/profile/image/InternalStorageContentProvider;->b:Ljava/util/HashMap;

    const-string v1, ".jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/etermax/gamescommon/profile/image/InternalStorageContentProvider;->b:Ljava/util/HashMap;

    const-string v1, ".jpeg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method
