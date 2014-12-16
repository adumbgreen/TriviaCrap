.class Lcom/etermax/gamescommon/i/b/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/etermax/j;->glow_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 214
    :goto_0
    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->f(Lcom/etermax/gamescommon/i/b/a;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->g(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 217
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->g(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    int-to-float v2, v2

    const/4 v5, -0x1

    invoke-static {v0, v2, v5}, Lcom/etermax/gamescommon/i/b/a;->a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 222
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->f(Lcom/etermax/gamescommon/i/b/a;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->h(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v2}, Lcom/etermax/gamescommon/i/b/a;->f(Lcom/etermax/gamescommon/i/b/a;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->h(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/b;->alpha_fade_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 229
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->h(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 213
    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->h(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/b;->alpha_fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 232
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$7;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->h(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
