.class Lcom/mopub/nativeads/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativeads/m;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic a()Ljava/util/WeakHashMap;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mopub/nativeads/m;->a:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 26
    if-nez p1, :cond_1

    .line 27
    const-string v0, "Attempted to load an image into a null ImageView"

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    if-eqz p0, :cond_0

    .line 36
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    .line 37
    sget-object v2, Lcom/mopub/nativeads/m;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mopub/nativeads/n;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/mopub/nativeads/n;-><init>(Ljava/lang/String;Landroid/widget/ImageView;J)V

    invoke-static {v2, v3}, Lcom/mopub/nativeads/i;->a(Ljava/util/List;Lcom/mopub/nativeads/l;)V

    goto :goto_0
.end method
