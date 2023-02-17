.class public Lcom/avalon/rpg/OrnaWebClient;
.super Landroid/webkit/WebViewClient;
.source "OrnaWebClient.java"


# instance fields
.field activity:Lcom/avalon/rpg/Index;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/avalon/rpg/OrnaWebClient;->activity:Lcom/avalon/rpg/Index;

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 46
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/avalon/rpg/OrnaWebClient;->activity:Lcom/avalon/rpg/Index;

    iget-object p1, p1, Lcom/avalon/rpg/Index;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string p2, "onRenderProcessGone"

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    iget-object p1, p0, Lcom/avalon/rpg/OrnaWebClient;->activity:Lcom/avalon/rpg/Index;

    invoke-virtual {p1}, Lcom/avalon/rpg/Index;->recreate()V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 23
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 26
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
