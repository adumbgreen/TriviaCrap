.class Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton$1;->a:Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/high16 v0, 0x4140

    invoke-static {p1, v0}, Lcom/etermax/tools/j/f;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    if-eq v0, p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "rounded()"

    return-object v0
.end method
