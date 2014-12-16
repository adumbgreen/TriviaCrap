.class Lcom/mdotm/android/view/MdotMWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field static final e:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field public a:Z

.field b:J

.field c:J

.field d:J

.field private f:Landroid/view/GestureDetector;

.field private g:Landroid/content/Context;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/FrameLayout;

.field private m:Lcom/mdotm/android/c/c;

.field private n:Lcom/mdotm/android/d/b;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 260
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/mdotm/android/view/MdotMWebView;->e:Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->o:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->a:Z

    .line 57
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->b:J

    .line 58
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->c:J

    .line 59
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->d:J

    .line 65
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->o:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->a:Z

    .line 57
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->b:J

    .line 58
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->c:J

    .line 59
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->d:J

    .line 70
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMWebView;->o:Z

    .line 56
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMWebView;->a:Z

    .line 57
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->b:J

    .line 58
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->c:J

    .line 59
    iput-wide v1, p0, Lcom/mdotm/android/view/MdotMWebView;->d:J

    .line 82
    const-string v0, "html resource MdotMWebView"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMWebView;->a:Z

    .line 84
    iput-object p3, p0, Lcom/mdotm/android/view/MdotMWebView;->m:Lcom/mdotm/android/c/c;

    .line 85
    iput-object p2, p0, Lcom/mdotm/android/view/MdotMWebView;->n:Lcom/mdotm/android/d/b;

    .line 86
    invoke-direct {p0, p1}, Lcom/mdotm/android/view/MdotMWebView;->a(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    invoke-direct {p0, p4}, Lcom/mdotm/android/view/MdotMWebView;->b(I)I

    move-result v1

    invoke-direct {p0, p4}, Lcom/mdotm/android/view/MdotMWebView;->a(I)I

    move-result v2

    .line 87
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/mdotm/android/view/MdotMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMWebView;->setBackgroundColor(I)V

    .line 92
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->f:Landroid/view/GestureDetector;

    .line 93
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 94
    return-void
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->n:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 v0, v0, 0x64

    .line 248
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->n:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->i()I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMWebView;->g:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->l:Landroid/widget/FrameLayout;

    .line 112
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->k:Landroid/widget/FrameLayout;

    .line 113
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->j:Landroid/widget/FrameLayout;

    .line 114
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->i:Landroid/widget/FrameLayout;

    .line 115
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->k:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->k:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/mdotm/android/view/MdotMWebView;->e:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/mdotm/android/view/MdotMWebView;->setInitialScale(I)V

    .line 125
    invoke-virtual {p0, v4}, Lcom/mdotm/android/view/MdotMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/mdotm/android/view/MdotMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 128
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 129
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 130
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 134
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->n:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><body style=\'margin:0px;padding:0px\'>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMWebView;->n:Lcom/mdotm/android/d/b;

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "text/html"

    const-string v2, "utf-8"

    .line 137
    invoke-virtual {p0, v0, v1, v2}, Lcom/mdotm/android/view/MdotMWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/mdotm/android/view/MdotMWebView;->setFocusable(Z)V

    .line 142
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 253
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->n:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->h()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 v0, v0, 0x64

    .line 256
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->n:Lcom/mdotm/android/d/b;

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->h()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->h:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/mdotm/android/view/MdotMWebView;->goBack()V

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->m:Lcom/mdotm/android/c/c;

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->c()V

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMWebView;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/mdotm/android/view/MdotMWebView;->o:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview has focus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMWebView;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    return-void
.end method
